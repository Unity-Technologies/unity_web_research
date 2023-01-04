struct VGlobals {
  unity_OrthoParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat4 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_47 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_17.unity_MatrixV[1i];
  let x_52 : vec3<f32> = (vec3<f32>(x_47.y, x_47.y, x_47.y) * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_56 : vec4<f32> = x_17.unity_MatrixV[0i];
  let x_58 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.x, x_58.x)) + vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_67 : vec4<f32> = x_17.unity_MatrixV[2i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat1;
  let x_74 : vec3<f32> = ((vec3<f32>(x_67.x, x_67.y, x_67.z) * vec3<f32>(x_69.z, x_69.z, x_69.z)) + vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_78 : vec4<f32> = x_17.unity_MatrixV[3i];
  let x_80 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = ((vec3<f32>(x_78.x, x_78.y, x_78.z) * vec3<f32>(x_80.w, x_80.w, x_80.w)) + vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_90 : vec4<f32> = x_17.unity_OrthoParams;
  let x_99 : vec2<f32> = ((vec2<f32>(x_90.w, x_90.w) * vec2<f32>(0.00999999f, -0.050000012f)) + vec2<f32>(0.99000001f, 1.0f));
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_100.w);
  let x_102 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : vec3<f32> = (vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.x, x_104.x, x_104.x));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_114 : f32 = u_xlat1.y;
  let x_117 : f32 = u_xlat0.z;
  u_xlat4 = (x_114 * x_117);
  let x_119 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = x_17.glstate_matrix_projection[1i];
  u_xlat1 = (vec4<f32>(x_119.y, x_119.y, x_119.y, x_119.y) * x_122);
  let x_125 : vec4<f32> = x_17.glstate_matrix_projection[0i];
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_125 * vec4<f32>(x_126.x, x_126.x, x_126.x, x_126.x)) + x_129);
  let x_132 : vec4<f32> = x_17.glstate_matrix_projection[2i];
  let x_133 : f32 = u_xlat4;
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_132 * vec4<f32>(x_133, x_133, x_133, x_133)) + x_136);
  let x_142 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = x_17.glstate_matrix_projection[3i];
  gl_Position = (x_142 + x_144);
  let x_150 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_150;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0);
}

