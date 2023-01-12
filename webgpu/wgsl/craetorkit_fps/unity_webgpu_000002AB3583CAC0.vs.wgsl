struct VGlobals {
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_26 : vec2<f32> = ((vec2<f32>(x_19.x, x_19.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_29 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_26.x, x_26.y, x_29.z, x_29.w);
  let x_35 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_35.x, x_35.y, vec2<f32>(0.0f, 1.0f).x, vec2<f32>(0.0f, 1.0f).y);
  let x_41 : vec2<f32> = in_TEXCOORD0;
  u_xlat0 = ((x_41 * vec2<f32>(1.0f, -1.0f)) + vec2<f32>(0.0f, 1.0f));
  let x_47 : vec2<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_50.x_MainTex_ST;
  let x_57 : vec4<f32> = x_50.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_47 * vec2<f32>(x_53.x, x_53.y)) + vec2<f32>(x_57.z, x_57.w));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

