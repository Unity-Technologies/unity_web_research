struct VGlobals {
  x_DepthSlice : f32,
}

var<private> in_POSITION0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(2) var<uniform> x_46 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
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
  let x_41 : vec2<f32> = ((vec2<f32>(x_34.x, x_34.y) * vec2<f32>(0.5f, -0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_42 : vec3<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec3<f32>(x_41.x, x_41.y, x_42.z);
  let x_49 : f32 = x_46.x_DepthSlice;
  vs_TEXCOORD0.z = x_49;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

