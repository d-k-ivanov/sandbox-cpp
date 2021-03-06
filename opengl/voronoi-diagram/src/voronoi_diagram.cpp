/*
 * =====================================================================
 *        Version:  1.0
 *        Created:  06.07.2018 0:03:48
 *         Author:  Dmitry Ivanov
 * =====================================================================
 */

#include <GL/glut.h>
#include <iostream>

// #ifdef _MSC_VER
// #    pragma comment(linker, "/subsystem:windows /ENTRY:mainCRTStartup")
// #endif

int WIDTH = 1400;
int HEIGHT = 900;

void Init(){
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluOrtho2D(0.0, 1.0, -1.0, 0.0);
	glMatrixMode(GL_MODELVIEW);
	glClearColor(0.2, 0.2, 0.2, 1.0);
}

void Timer(int n)
{
	glutTimerFunc(20, Timer, 0);
}

void Display(void)
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	glutSwapBuffers();
}

void Reshape(int width, int height)
{
	// Resize display to actual values
	glViewport(0, 0, (GLsizei)width, (GLsizei)height);
}

void MousePressed(int button, int state, int x, int y)
{
	if( button==GLUT_LEFT_BUTTON && state == GLUT_DOWN ) {
		float x1 = x /(float) WIDTH;
		float y1 = -y /(float) HEIGHT;
		glColor3f(1.0f, 0.0f, 0.0f);
		// glBegin(GL_POINTS);
		glBegin(GL_QUADS);
			// glVertex2f(x1+0.0001, y1+0.0001);
			// glVertex2f(x1+0.0001, y1-0.0001);
			// glVertex2f(x1-0.0001, y1+0.0001);
			// glVertex2f(x1-0.0001, y1-0.0001);
			glVertex2f(x1+0.001, y1+0.001);
			glVertex2f(x1+0.001, y1-0.001);
			glVertex2f(x1-0.001, y1+0.001);
			glVertex2f(x1-0.001, y1-0.001);
		glEnd();
		glutSwapBuffers();
		std::cout << "x: " << x << " y: " << y << std::endl;
		std::cout << "x1: " << x1 << " y1: " << y1 << std::endl;
	}
}

int main(int argc, char* argv[])
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH);
	glutInitWindowSize(WIDTH, HEIGHT);
	glutInitWindowPosition(100, 100);
	glutCreateWindow("Voronoi diagram");
	glutDisplayFunc(Display);
	glutReshapeFunc(Reshape);
	glutTimerFunc(20, Timer, 0);
	glutMouseFunc(MousePressed);
	Init();
	glutMainLoop();

	return 0;
}

