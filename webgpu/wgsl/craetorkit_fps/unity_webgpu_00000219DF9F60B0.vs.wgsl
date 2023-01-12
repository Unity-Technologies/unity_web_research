type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_97 : vec2<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_32 : vec4<f32> = in_POSITION0;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_40 : vec4<f32> = in_POSITION0;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_45 + x_48);
  let x_51 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_51.y, x_51.y, x_51.y, x_51.y) * x_55);
  let x_58 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_58 * vec4<f32>(x_59.x, x_59.x, x_59.x, x_59.x)) + x_62);
  let x_65 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_65 * vec4<f32>(x_66.z, x_66.z, x_66.z, x_66.z)) + x_69);
  let x_77 : vec4<f32> = x_21.unity_MatrixVP[3i];
  let x_78 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat1;
  gl_Position = ((x_77 * vec4<f32>(x_78.w, x_78.w, x_78.w, x_78.w)) + x_81);
  let x_91 : f32 = x_21.x_UVSec;
  u_xlatb0 = (x_91 == 0.0f);
  let x_94 : bool = u_xlatb0;
  if (x_94) {
    let x_102 : vec2<f32> = in_TEXCOORD0;
    x_97 = x_102;
  } else {
    let x_105 : vec2<f32> = in_TEXCOORD1;
    x_97 = x_105;
  }
  let x_106 : vec2<f32> = x_97;
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_114 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_118 : vec4<f32> = x_21.x_DetailAlbedoMap_ST;
  let x_120 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_121.x, x_121.y, x_120.x, x_120.y);
  let x_123 : vec2<f32> = in_TEXCOORD0;
  let x_126 : vec4<f32> = x_21.x_MainTex_ST;
  let x_130 : vec4<f32> = x_21.x_MainTex_ST;
  let x_132 : vec2<f32> = ((x_123 * vec2<f32>(x_126.x, x_126.y)) + vec2<f32>(x_130.z, x_130.w));
  let x_133 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_132.x, x_132.y, x_133.z, x_133.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_139 : vec4<f32> = in_POSITION0;
  let x_142 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_144 : vec3<f32> = (vec3<f32>(x_139.y, x_139.y, x_139.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_150 : vec4<f32> = in_POSITION0;
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_159 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_161 : vec4<f32> = in_POSITION0;
  let x_164 : vec4<f32> = u_xlat0;
  let x_166 : vec3<f32> = ((vec3<f32>(x_159.x, x_159.y, x_159.z) * vec3<f32>(x_161.z, x_161.z, x_161.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_172 : vec4<f32> = in_POSITION0;
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.w, x_172.w, x_172.w)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_184 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_186 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) + -(x_184));
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_191 : vec4<f32> = u_xlat1;
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_196);
  let x_198 : f32 = u_xlat18;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_206 : vec4<f32> = in_TANGENT0;
  let x_209 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_211 : vec3<f32> = (vec3<f32>(x_206.y, x_206.y, x_206.y) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_217 : vec4<f32> = in_TANGENT0;
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.x, x_217.x, x_217.x)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_228 : vec4<f32> = in_TANGENT0;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.z, x_228.z, x_228.z)) + vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_241);
  let x_243 : f32 = u_xlat18;
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec3<f32> = (vec3<f32>(x_243, x_243, x_243) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec4<f32> = u_xlat1;
  let x_252 : vec3<f32> = vec3<f32>(x_251.x, x_251.y, x_251.z);
  let x_253 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_257 : f32 = u_xlat0.x;
  vs_TEXCOORD2.w = x_257;
  let x_261 : f32 = in_TANGENT0.w;
  let x_264 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlat18 = (x_261 * x_264);
  let x_269 : vec3<f32> = in_NORMAL0;
  let x_272 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_269, vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_276 : vec3<f32> = in_NORMAL0;
  let x_278 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_276, vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_282 : vec3<f32> = in_NORMAL0;
  let x_284 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_282, vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_295);
  let x_297 : f32 = u_xlat19;
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = (vec3<f32>(x_297, x_297, x_297) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.y, x_305.z, x_305.x) * vec3<f32>(x_307.z, x_307.x, x_307.y));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat1;
  let x_317 : vec4<f32> = u_xlat3;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312.y, x_312.z, x_312.x) * vec3<f32>(x_314.z, x_314.x, x_314.y)) + -(vec3<f32>(x_317.x, x_317.y, x_317.z)));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_324 : f32 = u_xlat18;
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec3<f32> = (vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : f32 = u_xlat0.y;
  vs_TEXCOORD3.w = x_332;
  let x_336 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_336;
  let x_338 : vec4<f32> = u_xlat2;
  let x_339 : vec3<f32> = vec3<f32>(x_338.x, x_338.y, x_338.z);
  let x_340 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = u_xlat2.y;
  let x_345 : f32 = u_xlat2.y;
  u_xlat18 = (x_343 * x_345);
  let x_348 : f32 = u_xlat2.x;
  let x_350 : f32 = u_xlat2.x;
  let x_352 : f32 = u_xlat18;
  u_xlat18 = ((x_348 * x_350) + -(x_352));
  let x_355 : vec4<f32> = u_xlat2;
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_355.y, x_355.z, x_355.z, x_355.x) * vec4<f32>(x_357.x, x_357.y, x_357.z, x_357.z));
  let x_362 : vec4<f32> = x_21.unity_SHBr;
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_362, x_363);
  let x_368 : vec4<f32> = x_21.unity_SHBg;
  let x_369 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_368, x_369);
  let x_374 : vec4<f32> = x_21.unity_SHBb;
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_374, x_375);
  let x_380 : vec4<f32> = x_21.unity_SHC;
  let x_382 : f32 = u_xlat18;
  let x_385 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382, x_382, x_382)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  u_xlat2.w = 1.0f;
  let x_394 : vec4<f32> = x_21.unity_SHAr;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_394, x_395);
  let x_400 : vec4<f32> = x_21.unity_SHAg;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_400, x_401);
  let x_406 : vec4<f32> = x_21.unity_SHAb;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_406, x_407);
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat3;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.y, x_410.z) + vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = max(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat0;
  let x_427 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_423.y, x_423.y, x_423.y, x_423.y)) + x_427);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_430.y, x_430.y, x_430.y, x_430.y) * x_432);
  let x_434 : vec4<f32> = u_xlat3;
  let x_435 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_434 * x_435);
  let x_438 : vec4<f32> = u_xlat0;
  let x_442 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_438.x, x_438.x, x_438.x, x_438.x)) + x_442);
  let x_444 : vec4<f32> = u_xlat0;
  let x_448 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_444.z, x_444.z, x_444.z, x_444.z)) + x_448);
  let x_450 : vec4<f32> = u_xlat5;
  let x_451 : vec4<f32> = u_xlat2;
  let x_454 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_450 * vec4<f32>(x_451.x, x_451.x, x_451.x, x_451.x)) + x_454);
  let x_456 : vec4<f32> = u_xlat0;
  let x_457 : vec4<f32> = u_xlat2;
  let x_460 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_456 * vec4<f32>(x_457.z, x_457.z, x_457.z, x_457.z)) + x_460);
  let x_462 : vec4<f32> = u_xlat5;
  let x_463 : vec4<f32> = u_xlat5;
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_462 * x_463) + x_465);
  let x_467 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat0;
  let x_470 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_467 * x_468) + x_470);
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_472, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_476);
  let x_478 : vec4<f32> = u_xlat0;
  let x_481 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_478 * x_481) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_485);
  let x_487 : vec4<f32> = u_xlat2;
  let x_488 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_487 * x_488);
  let x_490 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_490, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_493 : vec4<f32> = u_xlat0;
  let x_494 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_493 * x_494);
  let x_496 : vec4<f32> = u_xlat0;
  let x_500 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_502 : vec3<f32> = (vec3<f32>(x_496.y, x_496.y, x_496.y) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_508 : vec4<f32> = u_xlat0;
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_508.x, x_508.x, x_508.x)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_517 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_519 : vec4<f32> = u_xlat0;
  let x_522 : vec4<f32> = u_xlat2;
  let x_524 : vec3<f32> = ((vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(x_519.z, x_519.z, x_519.z)) + vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_528 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_530 : vec4<f32> = u_xlat0;
  let x_533 : vec4<f32> = u_xlat0;
  let x_535 : vec3<f32> = ((vec3<f32>(x_528.x, x_528.y, x_528.z) * vec3<f32>(x_530.w, x_530.w, x_530.w)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec4<f32> = u_xlat0;
  let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.y, x_539.z) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  vs_TEXCOORD5.w = 0.0f;
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
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

