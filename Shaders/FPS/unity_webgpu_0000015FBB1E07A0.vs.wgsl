struct VGlobals {
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat6 : f32;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

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
  let x_94 : f32 = x_17.glstate_matrix_projection[3i].w;
  u_xlat6 = (-(x_94) + 1.0f);
  let x_98 : f32 = u_xlat6;
  u_xlat1.x = ((x_98 * -0.040000021f) + 0.99000001f);
  let x_105 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = u_xlat1;
  let x_109 : vec3<f32> = (vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(x_107.x, x_107.x, x_107.x));
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = x_17.glstate_matrix_projection[1i];
  u_xlat1 = (vec4<f32>(x_112.y, x_112.y, x_112.y, x_112.y) * x_115);
  let x_118 : vec4<f32> = x_17.glstate_matrix_projection[0i];
  let x_119 : vec4<f32> = u_xlat0;
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_118 * vec4<f32>(x_119.x, x_119.x, x_119.x, x_119.x)) + x_122);
  let x_125 : vec4<f32> = x_17.glstate_matrix_projection[2i];
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_125 * vec4<f32>(x_126.z, x_126.z, x_126.z, x_126.z)) + x_129);
  let x_131 : vec4<f32> = u_xlat1;
  let x_133 : vec4<f32> = x_17.glstate_matrix_projection[3i];
  u_xlat1 = (x_131 + x_133);
  let x_136 : vec4<f32> = u_xlat1;
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec2<f32> = (vec2<f32>(x_136.x, x_136.y) / vec2<f32>(x_138.w, x_138.w));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_141.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat0;
  let x_148 : vec2<f32> = ((vec2<f32>(x_143.x, x_143.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_149 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_148.x, x_148.y, x_149.z, x_149.w);
  let x_153 : vec2<f32> = in_TEXCOORD1;
  let x_156 : vec2<f32> = (x_153 * vec2<f32>(3.5f, 3.5f));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  let x_159 : vec4<f32> = u_xlat0;
  let x_162 : vec4<f32> = x_17.x_ScreenParams;
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec2<f32> = ((vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_162.x, x_162.y)) + vec2<f32>(x_165.x, x_165.y));
  let x_168 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_17.x_ScreenParams;
  let x_175 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) / vec2<f32>(x_173.x, x_173.y));
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
  let x_178 : vec4<f32> = u_xlat0;
  let x_182 : vec2<f32> = (vec2<f32>(x_178.x, x_178.y) + vec2<f32>(-0.5f, -0.5f));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec2<f32> = (vec2<f32>(x_185.w, x_185.w) * vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_190.z, x_190.w);
  let x_197 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec2<f32> = (vec2<f32>(x_197.x, x_197.y) + vec2<f32>(x_199.x, x_199.y));
  let x_204 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_201.x, x_201.y, x_204.z, x_204.w);
  let x_206 : f32 = u_xlat6;
  let x_212 : f32 = u_xlat1.z;
  gl_Position.z = ((-(x_206) * 0.0001f) + x_212);
  let x_217 : f32 = u_xlat1.w;
  gl_Position.w = x_217;
  let x_222 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_222;
  let x_225 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_225;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0);
}

