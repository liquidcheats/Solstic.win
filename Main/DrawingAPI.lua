local api = {}

function api:Draw(shape, visible)
    if shape == "Square" or shape == "square" then
        local square = Drawing.new("Square")
        square.Visible = visible
        square.Position = Vector2.new(100, 100)
        square.Size = Vector2.new(200, 200)
        square.Color = Color3.fromRGB(255, 255, 255)
        square.Filled = false
        square.Transparency = 1
        -- square:Remove()

    elseif shape == "Line" or shape == "line" then
        local line = Drawing.new("Line")
        line.Visible = visible
        line.From = Vector2.new(0, 0)
        line.To = Vector2.new(200, 200)
        line.Color = Color3.fromRGB(255, 255, 255)
        line.Thickness = 2
        line.Transparency = 1
        -- line:Remove()

    elseif shape == "Circle" or shape == "circle" then
        local circle = Drawing.new("Circle")
        circle.Visible = visible
        circle.Position = Vector2.new(150, 150)
        circle.Radius = 100
        circle.Color = Color3.fromRGB(255, 255, 255)
        circle.Filled = false
        circle.Transparency = 1
        -- circle:Remove()

    elseif shape == "Text" or shape == "text" then
        local text = Drawing.new("Text")
        text.Visible = visible
        text.Position = Vector2.new(100, 100)
        text.Text = "Hello World"
        text.Color = Color3.fromRGB(255, 255, 255)
        text.Size = 20
        text.Transparency = 1
        -- text:Remove()

    elseif shape == "Triangle" or shape == "triangle" then
        local triangle = Drawing.new("Triangle")
        triangle.Visible = visible
        triangle.PointA = Vector2.new(100, 100)
        triangle.PointB = Vector2.new(200, 100)
        triangle.PointC = Vector2.new(150, 200)
        triangle.Color = Color3.fromRGB(255, 255, 255)
        triangle.Filled = false
        triangle.Transparency = 1
        -- triangle:Remove()
    end
    return api
end

return api
