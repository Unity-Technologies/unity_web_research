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
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(11) var<uniform> x_21 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_97 : vec2<f32>;
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
  u_xlat19 = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_196);
  let x_198 : f32 = u_xlat19;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198, x_198, x_198) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  u_xlat0.w = 0.0f;
  let x_207 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_207.w, x_207.w, x_207.w, x_207.x);
  let x_210 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_210.w, x_210.w, x_210.w, x_210.y);
  let x_215 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_215;
  let x_219 : vec3<f32> = in_NORMAL0;
  let x_222 : vec4<f32> = x_21.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_219, vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_227 : vec3<f32> = in_NORMAL0;
  let x_229 : vec4<f32> = x_21.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_227, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec3<f32> = in_NORMAL0;
  let x_235 : vec4<f32> = x_21.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_233, vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat18;
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_255 : vec3<f32> = vec3<f32>(x_254.x, x_254.y, x_254.z);
  let x_256 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : f32 = u_xlat1.y;
  let x_261 : f32 = u_xlat1.y;
  u_xlat18 = (x_259 * x_261);
  let x_264 : f32 = u_xlat1.x;
  let x_266 : f32 = u_xlat1.x;
  let x_268 : f32 = u_xlat18;
  u_xlat18 = ((x_264 * x_266) + -(x_268));
  let x_272 : vec4<f32> = u_xlat1;
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_272.y, x_272.z, x_272.z, x_272.x) * vec4<f32>(x_274.x, x_274.y, x_274.z, x_274.z));
  let x_280 : vec4<f32> = x_21.unity_SHBr;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_280, x_281);
  let x_286 : vec4<f32> = x_21.unity_SHBg;
  let x_287 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_286, x_287);
  let x_292 : vec4<f32> = x_21.unity_SHBb;
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_292, x_293);
  let x_298 : vec4<f32> = x_21.unity_SHC;
  let x_300 : f32 = u_xlat18;
  let x_303 : vec4<f32> = u_xlat3;
  let x_305 : vec3<f32> = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300, x_300, x_300)) + vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  u_xlat1.w = 1.0f;
  let x_312 : vec4<f32> = x_21.unity_SHAr;
  let x_313 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_312, x_313);
  let x_318 : vec4<f32> = x_21.unity_SHAg;
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_318, x_319);
  let x_324 : vec4<f32> = x_21.unity_SHAb;
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_324, x_325);
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : vec4<f32> = u_xlat3;
  let x_332 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat2;
  let x_338 : vec3<f32> = max(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = x_21.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_341.y, x_341.y, x_341.y, x_341.y)) + x_345);
  let x_348 : vec4<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_348.y, x_348.y, x_348.y, x_348.y) * x_350);
  let x_352 : vec4<f32> = u_xlat3;
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_352 * x_353);
  let x_356 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = x_21.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_356.x, x_356.x, x_356.x, x_356.x)) + x_360);
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_21.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_362.z, x_362.z, x_362.z, x_362.z)) + x_366);
  let x_368 : vec4<f32> = u_xlat5;
  let x_369 : vec4<f32> = u_xlat1;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_368 * vec4<f32>(x_369.x, x_369.x, x_369.x, x_369.x)) + x_372);
  let x_374 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat1;
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_374 * vec4<f32>(x_375.z, x_375.z, x_375.z, x_375.z)) + x_378);
  let x_380 : vec4<f32> = u_xlat5;
  let x_381 : vec4<f32> = u_xlat5;
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_380 * x_381) + x_383);
  let x_385 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_385 * x_386) + x_388);
  let x_390 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_390, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_394);
  let x_396 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = x_21.unity_4LightAtten0;
  u_xlat0 = ((x_396 * x_399) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_403);
  let x_405 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_405 * x_406);
  let x_408 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_408, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_411 : vec4<f32> = u_xlat0;
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_411 * x_412);
  let x_414 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = x_21.unity_LightColor[1i];
  let x_420 : vec3<f32> = (vec3<f32>(x_414.y, x_414.y, x_414.y) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_424 : vec4<f32> = x_21.unity_LightColor[0i];
  let x_426 : vec4<f32> = u_xlat0;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.x, x_426.x, x_426.x)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_435 : vec4<f32> = x_21.unity_LightColor[2i];
  let x_437 : vec4<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437.z, x_437.z, x_437.z)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : vec4<f32> = x_21.unity_LightColor[3i];
  let x_448 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = ((vec3<f32>(x_446.x, x_446.y, x_446.z) * vec3<f32>(x_448.w, x_448.w, x_448.w)) + vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_457 : vec4<f32> = u_xlat2;
  let x_459 : vec4<f32> = u_xlat0;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.x, x_457.y, x_457.z) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
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
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5);
}

