struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_WallThickness : f32,
}

@group(1) @binding(1) var<uniform> x_14 : VGlobals;

var<private> in_NORMAL0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : vec4<f32> = x_14.unity_ObjectToWorld[1i];
  let x_23 : vec4<f32> = x_14.unity_MatrixVP[1i];
  u_xlat0 = (vec2<f32>(x_20.y, x_20.y) * vec2<f32>(x_23.x, x_23.y));
  let x_27 : vec4<f32> = x_14.unity_MatrixVP[0i];
  let x_30 : vec4<f32> = x_14.unity_ObjectToWorld[1i];
  let x_33 : vec2<f32> = u_xlat0;
  u_xlat0 = ((vec2<f32>(x_27.x, x_27.y) * vec2<f32>(x_30.x, x_30.x)) + x_33);
  let x_37 : vec4<f32> = x_14.unity_MatrixVP[2i];
  let x_40 : vec4<f32> = x_14.unity_ObjectToWorld[1i];
  let x_43 : vec2<f32> = u_xlat0;
  u_xlat0 = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + x_43);
  let x_47 : vec4<f32> = x_14.unity_MatrixVP[3i];
  let x_50 : vec4<f32> = x_14.unity_ObjectToWorld[1i];
  let x_53 : vec2<f32> = u_xlat0;
  u_xlat0 = ((vec2<f32>(x_47.x, x_47.y) * vec2<f32>(x_50.w, x_50.w)) + x_53);
  let x_55 : vec2<f32> = u_xlat0;
  let x_58 : vec4<f32> = in_NORMAL0;
  u_xlat0 = (x_55 * vec2<f32>(x_58.y, x_58.y));
  let x_63 : vec4<f32> = x_14.unity_ObjectToWorld[0i];
  let x_66 : vec4<f32> = x_14.unity_MatrixVP[1i];
  u_xlat6 = (vec2<f32>(x_63.y, x_63.y) * vec2<f32>(x_66.x, x_66.y));
  let x_70 : vec4<f32> = x_14.unity_MatrixVP[0i];
  let x_73 : vec4<f32> = x_14.unity_ObjectToWorld[0i];
  let x_76 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_70.x, x_70.y) * vec2<f32>(x_73.x, x_73.x)) + x_76);
  let x_79 : vec4<f32> = x_14.unity_MatrixVP[2i];
  let x_82 : vec4<f32> = x_14.unity_ObjectToWorld[0i];
  let x_85 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_82.z, x_82.z)) + x_85);
  let x_88 : vec4<f32> = x_14.unity_MatrixVP[3i];
  let x_91 : vec4<f32> = x_14.unity_ObjectToWorld[0i];
  let x_94 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_88.x, x_88.y) * vec2<f32>(x_91.w, x_91.w)) + x_94);
  let x_96 : vec2<f32> = u_xlat6;
  let x_97 : vec4<f32> = in_NORMAL0;
  let x_100 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_96 * vec2<f32>(x_97.x, x_97.x)) + x_100);
  let x_103 : vec4<f32> = x_14.unity_ObjectToWorld[2i];
  let x_106 : vec4<f32> = x_14.unity_MatrixVP[1i];
  u_xlat6 = (vec2<f32>(x_103.y, x_103.y) * vec2<f32>(x_106.x, x_106.y));
  let x_110 : vec4<f32> = x_14.unity_MatrixVP[0i];
  let x_113 : vec4<f32> = x_14.unity_ObjectToWorld[2i];
  let x_116 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_113.x, x_113.x)) + x_116);
  let x_119 : vec4<f32> = x_14.unity_MatrixVP[2i];
  let x_122 : vec4<f32> = x_14.unity_ObjectToWorld[2i];
  let x_125 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_119.x, x_119.y) * vec2<f32>(x_122.z, x_122.z)) + x_125);
  let x_128 : vec4<f32> = x_14.unity_MatrixVP[3i];
  let x_131 : vec4<f32> = x_14.unity_ObjectToWorld[2i];
  let x_134 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_128.x, x_128.y) * vec2<f32>(x_131.w, x_131.w)) + x_134);
  let x_136 : vec2<f32> = u_xlat6;
  let x_137 : vec4<f32> = in_NORMAL0;
  let x_140 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_136 * vec2<f32>(x_137.z, x_137.z)) + x_140);
  let x_142 : vec2<f32> = u_xlat0;
  let x_143 : vec2<f32> = u_xlat0;
  u_xlat6.x = dot(x_142, x_143);
  let x_150 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_150);
  let x_153 : vec2<f32> = u_xlat6;
  let x_155 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_153.x, x_153.x) * x_155);
  let x_157 : vec2<f32> = u_xlat0;
  let x_160 : f32 = x_14.x_WallThickness;
  u_xlat0 = (x_157 * vec2<f32>(x_160, x_160));
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = x_14.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_166.y, x_166.y, x_166.y, x_166.y) * x_169);
  let x_172 : vec4<f32> = x_14.unity_ObjectToWorld[0i];
  let x_173 : vec4<f32> = in_POSITION0;
  let x_176 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_172 * vec4<f32>(x_173.x, x_173.x, x_173.x, x_173.x)) + x_176);
  let x_179 : vec4<f32> = x_14.unity_ObjectToWorld[2i];
  let x_180 : vec4<f32> = in_POSITION0;
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_179 * vec4<f32>(x_180.z, x_180.z, x_180.z, x_180.z)) + x_183);
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = x_14.unity_ObjectToWorld[3i];
  u_xlat1 = (x_185 + x_187);
  let x_190 : vec4<f32> = u_xlat1;
  let x_193 : vec4<f32> = x_14.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_190.y, x_190.y, x_190.y, x_190.y) * x_193);
  let x_196 : vec4<f32> = x_14.unity_MatrixVP[0i];
  let x_197 : vec4<f32> = u_xlat1;
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_196 * vec4<f32>(x_197.x, x_197.x, x_197.x, x_197.x)) + x_200);
  let x_203 : vec4<f32> = x_14.unity_MatrixVP[2i];
  let x_204 : vec4<f32> = u_xlat1;
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_203 * vec4<f32>(x_204.z, x_204.z, x_204.z, x_204.z)) + x_207);
  let x_210 : vec4<f32> = x_14.unity_MatrixVP[3i];
  let x_211 : vec4<f32> = u_xlat1;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_210 * vec4<f32>(x_211.w, x_211.w, x_211.w, x_211.w)) + x_214);
  let x_218 : f32 = u_xlat1.z;
  let x_221 : f32 = u_xlat1.w;
  u_xlat6.x = (x_218 / x_221);
  let x_228 : f32 = u_xlat6.x;
  u_xlatb6 = (x_228 >= 1.0f);
  let x_231 : bool = u_xlatb6;
  u_xlat6.x = select(0.0f, 1.0f, x_231);
  let x_236 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_236) * 2.0f) + 1.0f);
  let x_247 : vec2<f32> = u_xlat0;
  let x_248 : vec2<f32> = u_xlat6;
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : vec2<f32> = ((x_247 * vec2<f32>(x_248.x, x_248.x)) + vec2<f32>(x_251.x, x_251.y));
  let x_256 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_253.x, x_253.y, x_256.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_259 : vec2<f32> = vec2<f32>(x_258.z, x_258.w);
  let x_261 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_261.x, x_261.y, x_259.x, x_259.y);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

