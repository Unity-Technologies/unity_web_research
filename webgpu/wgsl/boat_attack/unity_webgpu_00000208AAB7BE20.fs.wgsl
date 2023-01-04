type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_BA_SkyboxRatio : f32,
  @size(12)
  padding_2 : u32,
  x_BA_CloudData : vec4<f32>,
}

struct UnityPerMaterial {
  x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_TexelSize : vec4<f32>,
  Color_7eff2e7fc27440719d0a871a39dabdd3 : vec4<f32>,
  Vector1_2a375228e8d3437382814520b0cd8644 : f32,
  Vector1_5f4b185241524942830132fc71554a33 : f32,
  Vector1_2d1f70e8efb04843b1f8184ae06925e0 : f32,
  Vector1_33982692 : f32,
  Vector1_10DA9AB3 : f32,
  @size(4)
  padding_3 : u32,
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_29 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_154 : PGlobals;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_428 : UnityPerMaterial;

var<private> vs_INTERP0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_3DC46A50 : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : vec2<bool>;
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat19 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_249 : f32;
  var x_261 : f32;
  var u_xlat7 : f32;
  var u_xlat13 : vec2<f32>;
  var x_311 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var x_462 : f32;
  var x_474 : f32;
  var x_486 : f32;
  var x_575 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = vs_INTERP2.w;
  u_xlatb0.x = (0.0f < x_19);
  let x_34 : f32 = x_29.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_34 >= 0.0f);
  let x_42 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_42);
  let x_49 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_49);
  let x_53 : f32 = u_xlat0.y;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * x_55);
  let x_61 : vec3<f32> = vs_INTERP1;
  let x_63 : vec4<f32> = vs_INTERP2;
  u_xlat6 = (vec3<f32>(x_61.y, x_61.z, x_61.x) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_66 : vec3<f32> = vs_INTERP1;
  let x_67 : vec4<f32> = vs_INTERP2;
  let x_70 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_66 * vec3<f32>(x_67.y, x_67.z, x_67.x)) + -(x_70));
  let x_73 : vec3<f32> = u_xlat6;
  let x_74 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_73 * vec3<f32>(x_74.x, x_74.x, x_74.x));
  let x_78 : vec3<f32> = vs_INTERP1;
  let x_79 : vec3<f32> = vs_INTERP1;
  u_xlat18 = dot(x_78, x_79);
  let x_81 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_81);
  let x_83 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_83);
  let x_85 : vec3<f32> = u_xlat0;
  let x_86 : f32 = u_xlat18;
  u_xlat0 = (x_85 * vec3<f32>(x_86, x_86, x_86));
  let x_91 : f32 = u_xlat18;
  let x_93 : vec3<f32> = vs_INTERP1;
  let x_95 : vec3<f32> = (vec3<f32>(x_91, x_91, x_91) * vec3<f32>(x_93.y, x_93.z, x_93.x));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : f32 = u_xlat18;
  let x_101 : vec4<f32> = vs_INTERP2;
  let x_103 : vec3<f32> = (vec3<f32>(x_99, x_99, x_99) * vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec3<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec3<f32> = (x_107 * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_113 : vec3<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat1;
  let x_118 : vec4<f32> = u_xlat3;
  let x_121 : vec3<f32> = ((vec3<f32>(x_113.x, x_113.z, x_113.y) * vec3<f32>(x_115.z, x_115.y, x_115.x)) + -(vec3<f32>(x_118.y, x_118.x, x_118.z)));
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_124.y, x_124.x, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : f32 = u_xlat18;
  u_xlatb18 = (x_130 < 0.0f);
  let x_132 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_132);
  let x_136 : f32 = u_xlat0.x;
  let x_138 : f32 = u_xlat2.x;
  u_xlat19 = (x_136 * x_138);
  let x_141 : f32 = u_xlat2.z;
  let x_143 : f32 = u_xlat0.y;
  let x_145 : f32 = u_xlat19;
  u_xlat3.z = ((x_141 * x_143) + -(x_145));
  let x_149 : vec3<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_149.y, x_149.z, x_149.x), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : f32 = u_xlat1.z;
  let x_165 : f32 = u_xlat2.z;
  u_xlat19 = (x_163 * x_165);
  let x_168 : f32 = u_xlat1.y;
  let x_170 : f32 = u_xlat2.x;
  let x_172 : f32 = u_xlat19;
  u_xlat3.y = ((x_168 * x_170) + -(x_172));
  let x_176 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_176.z, x_176.x, x_176.y), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec4<f32> = u_xlat2;
  let x_186 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : f32 = u_xlat18;
  let x_192 : vec4<f32> = u_xlat3;
  let x_194 : vec3<f32> = (vec3<f32>(x_190, x_190, x_190) * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : f32 = u_xlat18;
  u_xlat18 = max(x_202, 1.17549435e-37f);
  let x_205 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_205);
  let x_207 : f32 = u_xlat18;
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec3<f32> = (vec3<f32>(x_207, x_207, x_207) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_225.x, x_225.y, x_225.z, x_225.x));
  u_xlatb1 = vec3<bool>(x_228.x, x_228.y, x_228.z);
  let x_241 : vec4<f32> = vs_INTERP3;
  let x_245 : f32 = x_154.x_GlobalMipBias.x;
  let x_246 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_241.x, x_241.y), x_245);
  u_xlat3 = x_246;
  let x_248 : bool = u_xlatb1.x;
  if (x_248) {
    let x_253 : f32 = u_xlat3.z;
    x_249 = x_253;
  } else {
    let x_256 : f32 = u_xlat3.x;
    x_249 = x_256;
  }
  let x_257 : f32 = x_249;
  u_xlat1.x = x_257;
  let x_260 : bool = u_xlatb1.y;
  if (x_260) {
    let x_265 : f32 = u_xlat3.y;
    x_261 = x_265;
  } else {
    let x_268 : f32 = u_xlat3.w;
    x_261 = x_268;
  }
  let x_269 : f32 = x_261;
  u_xlat1.y = x_269;
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat1;
  let x_275 : vec2<f32> = (vec2<f32>(x_271.x, x_271.y) * vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_279 : f32 = u_xlat1.y;
  let x_281 : f32 = u_xlat1.x;
  u_xlat18 = (x_279 + x_281);
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec2<f32> = (vec2<f32>(x_283.z, x_283.w) + vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
  let x_291 : f32 = u_xlat1.y;
  let x_293 : f32 = u_xlat1.x;
  u_xlat1.x = (x_291 + x_293);
  let x_298 : f32 = u_xlat1.x;
  u_xlat7 = (x_298 * 0.25f);
  let x_302 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_302) * 0.25f) + 1.0f);
  let x_310 : bool = u_xlatb1.z;
  if (x_310) {
    let x_314 : f32 = u_xlat7;
    x_311 = x_314;
  } else {
    let x_317 : f32 = u_xlat1.x;
    x_311 = x_317;
  }
  let x_318 : f32 = x_311;
  u_xlat13.x = x_318;
  let x_321 : f32 = u_xlat13.x;
  let x_323 : f32 = u_xlat2.z;
  let x_325 : f32 = u_xlat18;
  u_xlat2.y = ((x_321 * x_323) + x_325);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_331.y, x_331.z, x_331.z), vec3<f32>(x_333.y, x_333.z, x_333.z));
  let x_336 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_336);
  let x_338 : f32 = u_xlat18;
  let x_340 : vec4<f32> = u_xlat2;
  let x_342 : vec3<f32> = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_346.y, x_346.z, x_346.y) * vec3<f32>(x_348.z, x_348.z, x_348.y));
  let x_352 : f32 = u_xlat2.z;
  let x_354 : f32 = u_xlat2.z;
  let x_357 : f32 = u_xlat4.z;
  u_xlat18 = ((x_352 * x_354) + -(x_357));
  let x_363 : vec4<f32> = x_29.unity_SHBr;
  let x_364 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_363, vec4<f32>(x_364.x, x_364.x, x_364.y, x_364.y));
  let x_370 : vec4<f32> = x_29.unity_SHBg;
  let x_371 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_370, vec4<f32>(x_371.x, x_371.x, x_371.y, x_371.y));
  let x_377 : vec4<f32> = x_29.unity_SHBb;
  let x_378 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_377, vec4<f32>(x_378.x, x_378.x, x_378.y, x_378.y));
  let x_384 : vec4<f32> = x_29.unity_SHC;
  let x_386 : f32 = u_xlat18;
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386, x_386, x_386)) + x_389);
  let x_393 : vec4<f32> = x_29.unity_SHAr;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_393.y, x_393.x, x_393.z, x_393.w), vec4<f32>(x_395.y, x_395.z, x_395.z, x_395.w));
  let x_401 : vec4<f32> = x_29.unity_SHAg;
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_401.y, x_401.x, x_401.z, x_401.w), vec4<f32>(x_403.y, x_403.z, x_403.z, x_403.w));
  let x_409 : vec4<f32> = x_29.unity_SHAb;
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_409, x_410);
  let x_413 : vec3<f32> = u_xlat4;
  let x_414 : vec3<f32> = u_xlat5;
  let x_415 : vec3<f32> = (x_413 + x_414);
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat2;
  let x_421 : vec3<f32> = max(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_422 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat2;
  let x_430 : f32 = x_428.Vector1_5f4b185241524942830132fc71554a33;
  let x_432 : f32 = x_428.Vector1_5f4b185241524942830132fc71554a33;
  let x_434 : f32 = x_428.Vector1_5f4b185241524942830132fc71554a33;
  let x_435 : vec3<f32> = vec3<f32>(x_430, x_432, x_434);
  let x_440 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec3<f32> = u_xlat0;
  let x_444 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_443, x_444);
  let x_446 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_446);
  let x_448 : f32 = u_xlat18;
  let x_450 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_448, x_448, x_448) * x_450);
  let x_453 : vec3<f32> = u_xlat0;
  let x_455 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_453.x, x_453.y, x_453.z, x_453.x));
  u_xlatb4 = vec3<bool>(x_455.x, x_455.y, x_455.z);
  let x_457 : vec3<f32> = u_xlat0;
  let x_458 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_457 * x_458);
  let x_461 : bool = u_xlatb4.x;
  if (x_461) {
    let x_466 : f32 = u_xlat3.z;
    x_462 = x_466;
  } else {
    let x_469 : f32 = u_xlat3.x;
    x_462 = x_469;
  }
  let x_470 : f32 = x_462;
  u_xlat13.x = x_470;
  let x_473 : bool = u_xlatb4.y;
  if (x_473) {
    let x_478 : f32 = u_xlat3.y;
    x_474 = x_478;
  } else {
    let x_481 : f32 = u_xlat3.w;
    x_474 = x_481;
  }
  let x_482 : f32 = x_474;
  u_xlat13.y = x_482;
  let x_485 : bool = u_xlatb4.z;
  if (x_485) {
    let x_489 : f32 = u_xlat7;
    x_486 = x_489;
  } else {
    let x_492 : f32 = u_xlat1.x;
    x_486 = x_492;
  }
  let x_493 : f32 = x_486;
  u_xlat18 = x_493;
  let x_494 : vec3<f32> = u_xlat0;
  let x_496 : vec2<f32> = u_xlat13;
  let x_497 : vec2<f32> = (vec2<f32>(x_494.x, x_494.y) * x_496);
  let x_498 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_497.x, x_497.y, x_498.z);
  let x_501 : f32 = u_xlat0.y;
  let x_503 : f32 = u_xlat0.x;
  u_xlat0.x = (x_501 + x_503);
  let x_506 : f32 = u_xlat18;
  let x_508 : f32 = u_xlat0.z;
  let x_511 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_506 * x_508) + x_511);
  let x_515 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_515);
  let x_520 : f32 = x_428.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_520 * 0.5f);
  let x_525 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_525, 0.001f);
  let x_530 : f32 = u_xlat0.x;
  let x_532 : f32 = u_xlat6.x;
  u_xlat0.x = (x_530 * x_532);
  let x_536 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_536);
  let x_540 : vec3<f32> = vs_INTERP0;
  let x_544 : vec3<f32> = x_154.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_540) + x_544);
  let x_546 : vec3<f32> = u_xlat6;
  let x_547 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_546, x_547);
  let x_551 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_551);
  let x_554 : vec3<f32> = u_xlat6;
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_554 * vec3<f32>(x_555.x, x_555.x, x_555.x));
  let x_560 : f32 = x_154.unity_OrthoParams.w;
  u_xlatb1.x = (x_560 == 0.0f);
  let x_565 : f32 = x_154.unity_MatrixV[0i].z;
  u_xlat3.x = x_565;
  let x_568 : f32 = x_154.unity_MatrixV[1i].z;
  u_xlat3.y = x_568;
  let x_571 : f32 = x_154.unity_MatrixV[2i].z;
  u_xlat3.z = x_571;
  let x_574 : bool = u_xlatb1.x;
  if (x_574) {
    let x_578 : vec3<f32> = u_xlat6;
    x_575 = x_578;
  } else {
    let x_580 : vec4<f32> = u_xlat3;
    x_575 = vec3<f32>(x_580.x, x_580.y, x_580.z);
  }
  let x_582 : vec3<f32> = x_575;
  u_xlat6 = x_582;
  let x_583 : vec3<f32> = u_xlat6;
  let x_584 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_583, x_584);
  let x_588 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_588);
  let x_591 : vec3<f32> = u_xlat6;
  let x_592 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_591 * vec3<f32>(x_592.x, x_592.x, x_592.x));
  let x_595 : vec3<f32> = u_xlat6;
  let x_597 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat6.x = dot(x_595, -(vec3<f32>(x_597.x, x_597.y, x_597.z)));
  let x_603 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_603, 0.0f, 1.0f);
  let x_607 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_607);
  let x_611 : f32 = u_xlat6.x;
  u_xlat6.x = (x_611 * 150.0f);
  let x_616 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_616);
  let x_620 : f32 = u_xlat6.x;
  u_xlat6.x = (x_620 + 1.0f);
  let x_624 : f32 = u_xlat0.x;
  let x_626 : f32 = u_xlat6.x;
  u_xlat0.x = (x_624 * x_626);
  let x_630 : vec4<f32> = x_154.x_MainLightColor;
  let x_632 : vec3<f32> = u_xlat0;
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632.x, x_632.x, x_632.x)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_639 : vec4<f32> = x_428.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_641 : vec3<f32> = u_xlat0;
  let x_645 : vec4<f32> = x_154.unity_FogColor;
  u_xlat0 = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * x_641) + -(vec3<f32>(x_645.x, x_645.y, x_645.z)));
  let x_649 : vec3<f32> = vs_INTERP0;
  let x_652 : vec4<f32> = x_29.unity_WorldToObject[1i];
  let x_654 : vec3<f32> = (vec3<f32>(x_649.y, x_649.y, x_649.y) * vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_658 : vec4<f32> = x_29.unity_WorldToObject[0i];
  let x_660 : vec3<f32> = vs_INTERP0;
  let x_663 : vec4<f32> = u_xlat1;
  let x_665 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660.x, x_660.x, x_660.x)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_669 : vec4<f32> = x_29.unity_WorldToObject[2i];
  let x_671 : vec3<f32> = vs_INTERP0;
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec3<f32> = ((vec3<f32>(x_669.x, x_669.y, x_669.z) * vec3<f32>(x_671.z, x_671.z, x_671.z)) + vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = x_29.unity_WorldToObject[3i];
  let x_684 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat1;
  let x_690 : vec4<f32> = x_29.unity_ObjectToWorld[1i];
  let x_692 : vec3<f32> = (vec3<f32>(x_687.y, x_687.y, x_687.y) * vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_696 : vec4<f32> = x_29.unity_ObjectToWorld[0i];
  let x_698 : vec4<f32> = u_xlat1;
  let x_701 : vec4<f32> = u_xlat2;
  let x_703 : vec3<f32> = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_698.x, x_698.x, x_698.x)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_703.z);
  let x_707 : vec4<f32> = x_29.unity_ObjectToWorld[2i];
  let x_709 : vec4<f32> = u_xlat1;
  let x_712 : vec4<f32> = u_xlat1;
  let x_714 : vec3<f32> = ((vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(x_709.z, x_709.z, x_709.z)) + vec3<f32>(x_712.x, x_712.y, x_712.w));
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_720 : vec4<f32> = x_29.unity_ObjectToWorld[3i];
  let x_722 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) + vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_726 : f32 = u_xlat1.y;
  let x_728 : f32 = x_154.unity_MatrixV[1i].z;
  u_xlat18 = (x_726 * x_728);
  let x_731 : f32 = x_154.unity_MatrixV[0i].z;
  let x_733 : f32 = u_xlat1.x;
  let x_735 : f32 = u_xlat18;
  u_xlat18 = ((x_731 * x_733) + x_735);
  let x_738 : f32 = x_154.unity_MatrixV[2i].z;
  let x_740 : f32 = u_xlat1.z;
  let x_742 : f32 = u_xlat18;
  u_xlat18 = ((x_738 * x_740) + x_742);
  let x_744 : f32 = u_xlat18;
  let x_746 : f32 = x_154.unity_MatrixV[3i].z;
  u_xlat18 = (x_744 + x_746);
  let x_748 : f32 = u_xlat18;
  let x_752 : f32 = x_154.x_ProjectionParams.y;
  u_xlat18 = (-(x_748) + -(x_752));
  let x_755 : f32 = u_xlat18;
  u_xlat18 = max(x_755, 0.0f);
  let x_757 : f32 = u_xlat18;
  let x_760 : f32 = x_154.unity_FogParams.x;
  u_xlat18 = (x_757 * x_760);
  let x_762 : f32 = u_xlat18;
  let x_763 : f32 = u_xlat18;
  u_xlat18 = (x_762 * -(x_763));
  let x_766 : f32 = u_xlat18;
  u_xlat18 = exp2(x_766);
  let x_768 : f32 = u_xlat18;
  u_xlat18 = (-(x_768) + 1.0f);
  let x_771 : f32 = u_xlat18;
  let x_774 : f32 = x_154.x_BA_SkyboxRatio;
  u_xlat18 = (x_771 / x_774);
  let x_776 : f32 = u_xlat18;
  let x_778 : f32 = u_xlat18;
  u_xlat18 = ((-(x_776) * x_778) + 1.0f);
  let x_781 : f32 = u_xlat18;
  u_xlat18 = exp2(x_781);
  let x_783 : f32 = u_xlat18;
  u_xlat18 = (-(x_783) + 1.0f);
  let x_787 : f32 = x_154.x_BA_SkyboxRatio;
  u_xlat1.x = (-(x_787) + 1.0f);
  let x_792 : f32 = x_154.x_WorldSpaceCameraPos.y;
  let x_795 : f32 = u_xlat1.x;
  let x_798 : f32 = vs_INTERP0.y;
  u_xlat1.x = ((-(x_792) * x_795) + x_798);
  let x_802 : f32 = x_428.Vector1_10DA9AB3;
  let x_805 : f32 = x_154.x_BA_SkyboxRatio;
  let x_808 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_802) * x_805) + x_808);
  let x_812 : f32 = x_154.x_BA_SkyboxRatio;
  let x_814 : f32 = x_428.Vector1_33982692;
  u_xlat7 = (x_812 * x_814);
  let x_816 : f32 = u_xlat7;
  u_xlat7 = max(x_816, 0.0f);
  let x_818 : f32 = u_xlat7;
  u_xlat7 = (1.0f / x_818);
  let x_820 : f32 = u_xlat7;
  let x_822 : f32 = u_xlat1.x;
  u_xlat1.x = (x_820 * x_822);
  let x_826 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_826, 0.0f, 1.0f);
  let x_830 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_830) + 1.0f);
  let x_835 : f32 = u_xlat1.x;
  let x_837 : f32 = u_xlat18;
  u_xlat18 = ((-(x_835) * x_837) + 1.0f);
  let x_840 : f32 = u_xlat18;
  u_xlat18 = min(x_840, 1.0f);
  let x_844 : f32 = u_xlat18;
  let x_846 : vec3<f32> = u_xlat0;
  let x_849 : vec4<f32> = x_154.unity_FogColor;
  let x_851 : vec3<f32> = ((vec3<f32>(x_844, x_844, x_844) * x_846) + vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_856 : f32 = x_154.x_BA_CloudData.w;
  u_xlat0.x = (-(x_856) + 1.0f);
  let x_865 : vec4<f32> = vs_INTERP3;
  let x_868 : f32 = x_154.x_GlobalMipBias.x;
  let x_869 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_865.x, x_865.y), x_868);
  let x_870 : vec2<f32> = vec2<f32>(x_869.z, x_869.w);
  let x_871 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_870.x, x_870.y, x_871.z);
  let x_874 : f32 = u_xlat0.x;
  let x_877 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_874) + x_877);
  let x_881 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_881) + 1.0f);
  let x_886 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_886);
  let x_890 : f32 = u_xlat6.x;
  let x_892 : f32 = x_428.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_890 * x_892);
  let x_896 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_896);
  let x_900 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_900) + 1.0f);
  let x_905 : f32 = u_xlat0.x;
  u_xlat0.x = (x_905 * 10.0f);
  let x_910 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_910, 0.0f, 1.0f);
  let x_915 : f32 = u_xlat0.x;
  u_xlat12 = ((x_915 * -2.0f) + 3.0f);
  let x_921 : f32 = u_xlat0.x;
  let x_923 : f32 = u_xlat0.x;
  u_xlat0.x = (x_921 * x_923);
  let x_927 : f32 = u_xlat0.x;
  let x_928 : f32 = u_xlat12;
  u_xlat0.x = (x_927 * x_928);
  let x_932 : f32 = u_xlat0.x;
  let x_934 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_932, x_934);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

