struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_29 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_12;
  let x_13 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = clamp(x_13, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_24 : vec3<f32> = in_POSITION0;
  let x_35 : vec4<f32> = x_29.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_24.y, x_24.y, x_24.y, x_24.y) * x_35);
  let x_38 : vec4<f32> = x_29.unity_ObjectToWorld[0i];
  let x_39 : vec3<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.x, x_39.x, x_39.x, x_39.x)) + x_42);
  let x_46 : vec4<f32> = x_29.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_46 * vec4<f32>(x_47.z, x_47.z, x_47.z, x_47.z)) + x_50);
  let x_52 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_29.unity_ObjectToWorld[3i];
  u_xlat0 = (x_52 + x_55);
  let x_58 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_29.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_61);
  let x_64 : vec4<f32> = x_29.unity_MatrixVP[0i];
  let x_65 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_29.unity_MatrixVP[2i];
  let x_72 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_84 : vec4<f32> = x_29.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = u_xlat1;
  gl_Position = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  return;
}

struct main_out {
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_COLOR0, gl_Position);
}

