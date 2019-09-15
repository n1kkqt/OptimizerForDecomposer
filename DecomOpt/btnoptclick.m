function btnoptclick(~, ~)
global names txtsopt;
    name1 = AllToOpt(names);
    clipboard('copy',name1);
    if length(name1)>15
            name1=['...' name1(length(name1)-15:length(name1))];
    end
    set(txtsopt, 'String', ['Файл после оптимизации: ' name1]);
    
import java.awt.Robot;
import java.awt.event.*;
robot=Robot();
system('Decomp.exe &');
robot.keyPress(KeyEvent.VK_CONTROL);
robot.keyPress(KeyEvent.VK_O);
robot.keyRelease(KeyEvent.VK_O);
robot.keyRelease(KeyEvent.VK_CONTROL);

robot.delay(1000);

robot.keyPress(KeyEvent.VK_CONTROL);
robot.keyPress(KeyEvent.VK_V);
robot.keyRelease(KeyEvent.VK_V);
robot.keyRelease(KeyEvent.VK_CONTROL);

robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
end
