struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(16) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_94 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_74 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = u_xlat1;
  gl_Position = ((x_74 * vec4<f32>(x_75.w, x_75.w, x_75.w, x_75.w)) + x_78);
  let x_88 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_88 == 0.0f);
  let x_91 : bool = u_xlatb0;
  if (x_91) {
    let x_99 : vec2<f32> = in_TEXCOORD0;
    x_94 = x_99;
  } else {
    let x_102 : vec2<f32> = in_TEXCOORD1;
    x_94 = x_102;
  }
  let x_103 : vec2<f32> = x_94;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_104.w);
  let x_107 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_115 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_117 : vec2<f32> = ((vec2<f32>(x_107.x, x_107.y) * vec2<f32>(x_111.x, x_111.y)) + vec2<f32>(x_115.z, x_115.w));
  let x_118 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_118.x, x_118.y, x_117.x, x_117.y);
  let x_120 : vec2<f32> = in_TEXCOORD0;
  let x_123 : vec4<f32> = x_18.x_MainTex_ST;
  let x_127 : vec4<f32> = x_18.x_MainTex_ST;
  let x_129 : vec2<f32> = ((x_120 * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(x_127.z, x_127.w));
  let x_130 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_136 : vec4<f32> = in_POSITION0;
  let x_139 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_141 : vec3<f32> = (vec3<f32>(x_136.y, x_136.y, x_136.y) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_147 : vec4<f32> = in_POSITION0;
  let x_150 : vec4<f32> = u_xlat0;
  let x_152 : vec3<f32> = ((vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_158 : vec4<f32> = in_POSITION0;
  let x_161 : vec4<f32> = u_xlat0;
  let x_163 : vec3<f32> = ((vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(x_158.z, x_158.z, x_158.z)) + vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_169 : vec4<f32> = in_POSITION0;
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.w, x_169.w, x_169.w)) + vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat0;
  let x_181 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_183 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) + -(x_181));
  let x_184 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_190 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_190;
  let x_193 : vec4<f32> = in_TANGENT0;
  let x_196 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_198 : vec3<f32> = (vec3<f32>(x_193.y, x_193.y, x_193.y) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_204 : vec4<f32> = in_TANGENT0;
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_215 : vec4<f32> = in_TANGENT0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.z, x_215.z, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_230 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_230);
  let x_233 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = vec3<f32>(x_240.x, x_240.y, x_240.z);
  let x_242 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_248 : vec3<f32> = in_NORMAL0;
  let x_250 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_248, vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec3<f32> = in_NORMAL0;
  let x_256 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_254, vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_260 : vec3<f32> = in_NORMAL0;
  let x_262 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_260, vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_267 : vec3<f32> = u_xlat2;
  let x_268 : vec3<f32> = u_xlat2;
  u_xlat0.x = dot(x_267, x_268);
  let x_272 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_272);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_275.x, x_275.x, x_275.x) * x_277);
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_280.y, x_280.z, x_280.x) * vec3<f32>(x_282.z, x_282.x, x_282.y));
  let x_285 : vec3<f32> = u_xlat2;
  let x_287 : vec4<f32> = u_xlat1;
  let x_290 : vec3<f32> = u_xlat3;
  let x_292 : vec3<f32> = ((vec3<f32>(x_285.y, x_285.z, x_285.x) * vec3<f32>(x_287.z, x_287.x, x_287.y)) + -(x_290));
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : vec3<f32> = u_xlat2;
  let x_297 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_301 : f32 = in_TANGENT0.w;
  let x_303 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat0.x = (x_301 * x_303);
  let x_307 : vec4<f32> = u_xlat0;
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.x, x_307.x) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_315;
  let x_318 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_318;
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD3);
}

