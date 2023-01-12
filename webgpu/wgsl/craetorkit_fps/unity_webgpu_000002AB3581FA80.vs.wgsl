struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_23 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  let x_18 : vec4<f32> = in_POSITION0;
  let x_29 : vec4<f32> = x_23.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_18.y, x_18.y, x_18.y, x_18.y) * x_29);
  let x_32 : vec4<f32> = x_23.unity_ObjectToWorld[0i];
  let x_33 : vec4<f32> = in_POSITION0;
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_32 * vec4<f32>(x_33.x, x_33.x, x_33.x, x_33.x)) + x_36);
  let x_40 : vec4<f32> = x_23.unity_ObjectToWorld[2i];
  let x_41 : vec4<f32> = in_POSITION0;
  let x_44 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_40 * vec4<f32>(x_41.z, x_41.z, x_41.z, x_41.z)) + x_44);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_23.unity_ObjectToWorld[3i];
  u_xlat0 = (x_46 + x_49);
  let x_52 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_23.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_52.y, x_52.y, x_52.y, x_52.y) * x_55);
  let x_58 : vec4<f32> = x_23.unity_MatrixVP[0i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_65 : vec4<f32> = x_23.unity_MatrixVP[2i];
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_65 * vec4<f32>(x_66.z, x_66.z, x_66.z, x_66.z)) + x_69);
  let x_78 : vec4<f32> = x_23.unity_MatrixVP[3i];
  let x_79 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat1;
  gl_Position = ((x_78 * vec4<f32>(x_79.w, x_79.w, x_79.w, x_79.w)) + x_82);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position);
}

