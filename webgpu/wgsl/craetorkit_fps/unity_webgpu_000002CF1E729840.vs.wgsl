struct VGlobals {
  x_RenderViewportScaleFactor : f32,
}

var<private> in_POSITION0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_49 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec3<f32> = in_POSITION0;
  let x_21 : vec2<f32> = vec2<f32>(x_20.x, x_20.y);
  let x_24 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_21.x, x_21.y, x_24.z, x_24.w);
  let x_30 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_30.x, x_30.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  let x_34 : vec3<f32> = in_POSITION0;
  u_xlat0 = (vec2<f32>(x_34.x, x_34.y) + vec2<f32>(1.0f, 1.0f));
  let x_38 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(0.0f, 1.0f));
  let x_46 : vec2<f32> = u_xlat0;
  let x_52 : f32 = x_49.x_RenderViewportScaleFactor;
  vs_TEXCOORD1 = (x_46 * vec2<f32>(x_52, x_52));
  let x_57 : vec3<f32> = in_POSITION0;
  vs_TEXCOORD0 = ((vec2<f32>(x_57.x, x_57.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(0.5f, 0.5f));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1);
}
