struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat3 : vec3<f32>;
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
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_68 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat1;
  gl_Position = x_80;
  let x_84 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_85 : vec4<f32> = in_POSITION0;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_94 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_96 : vec4<f32> = in_POSITION0;
  let x_99 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.w, x_96.w, x_96.w)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_103 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_109 : vec2<f32> = (vec2<f32>(x_103.y, x_103.y) * vec2<f32>(x_107.x, x_107.y));
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_113 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec2<f32> = ((vec2<f32>(x_113.x, x_113.y) * vec2<f32>(x_115.x, x_115.x)) + vec2<f32>(x_118.x, x_118.y));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_124 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_126 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.z, x_126.z)) + vec2<f32>(x_129.x, x_129.y));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_137 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_139 : vec4<f32> = u_xlat2;
  let x_142 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_139.w, x_139.w)) + vec2<f32>(x_142.x, x_142.y));
  let x_148 : vec4<f32> = in_TEXCOORD0;
  let x_152 : vec4<f32> = x_17.x_MainTex_ST;
  let x_156 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(x_152.x, x_152.y)) + vec2<f32>(x_156.z, x_156.w));
  let x_161 : vec3<f32> = in_NORMAL0;
  let x_163 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_161, vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_168 : vec3<f32> = in_NORMAL0;
  let x_170 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_168, vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_175 : vec3<f32> = in_NORMAL0;
  let x_177 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_175, vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_188);
  let x_190 : f32 = u_xlat12;
  let x_192 : vec4<f32> = u_xlat0;
  let x_194 : vec3<f32> = (vec3<f32>(x_190, x_190, x_190) * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_198 : vec4<f32> = in_TANGENT0;
  let x_201 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_203 : vec3<f32> = (vec3<f32>(x_198.y, x_198.y, x_198.y) * vec3<f32>(x_201.y, x_201.z, x_201.x));
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_209 : vec4<f32> = in_TANGENT0;
  let x_212 : vec4<f32> = u_xlat2;
  let x_214 : vec3<f32> = ((vec3<f32>(x_207.y, x_207.z, x_207.x) * vec3<f32>(x_209.x, x_209.x, x_209.x)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_220 : vec4<f32> = in_TANGENT0;
  let x_223 : vec4<f32> = u_xlat2;
  let x_225 : vec3<f32> = ((vec3<f32>(x_218.y, x_218.z, x_218.x) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), vec3<f32>(x_230.x, x_230.y, x_230.z));
  let x_233 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_233);
  let x_235 : f32 = u_xlat12;
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : vec3<f32> = (vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec4<f32> = u_xlat2;
  let x_254 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_249.z, x_249.x, x_249.y) * vec3<f32>(x_251.y, x_251.z, x_251.x)) + -(x_254));
  let x_260 : f32 = in_TANGENT0.w;
  let x_263 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat12 = (x_260 * x_263);
  let x_265 : f32 = u_xlat12;
  let x_267 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_265, x_265, x_265) * x_267);
  let x_271 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_271;
  let x_275 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_275;
  let x_278 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_278;
  let x_282 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_282;
  let x_286 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_286;
  let x_289 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_289;
  let x_292 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_292;
  let x_295 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_295;
  let x_298 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_298;
  let x_301 : f32 = u_xlat1.y;
  let x_303 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_301 * x_303);
  let x_307 : f32 = u_xlat0.x;
  u_xlat0.w = (x_307 * 0.5f);
  let x_311 : vec4<f32> = u_xlat1;
  let x_314 : vec2<f32> = (vec2<f32>(x_311.x, x_311.w) * vec2<f32>(0.5f, 0.5f));
  let x_315 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_314.x, x_315.y, x_314.y, x_315.w);
  let x_318 : vec4<f32> = u_xlat1;
  let x_319 : vec2<f32> = vec2<f32>(x_318.z, x_318.w);
  let x_320 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_320.x, x_320.y, x_319.x, x_319.y);
  let x_322 : vec4<f32> = u_xlat0;
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec2<f32> = (vec2<f32>(x_322.z, x_322.z) + vec2<f32>(x_324.x, x_324.w));
  let x_327 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_326.x, x_326.y, x_327.z, x_327.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6);
}

