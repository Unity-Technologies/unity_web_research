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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_BA_SkyboxRatio : f32,
  @size(12)
  padding_3 : u32,
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
  padding_4 : u32,
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

var<private> SV_Target1 : vec4<f32>;

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
  var x_576 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatu0 : u32;
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
  let x_545 : vec3<f32> = x_154.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_540) + x_545);
  let x_547 : vec3<f32> = u_xlat6;
  let x_548 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_547, x_548);
  let x_552 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_552);
  let x_555 : vec3<f32> = u_xlat6;
  let x_556 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_555 * vec3<f32>(x_556.x, x_556.x, x_556.x));
  let x_561 : f32 = x_154.unity_OrthoParams.w;
  u_xlatb1.x = (x_561 == 0.0f);
  let x_566 : f32 = x_154.unity_MatrixV[0i].z;
  u_xlat3.x = x_566;
  let x_569 : f32 = x_154.unity_MatrixV[1i].z;
  u_xlat3.y = x_569;
  let x_572 : f32 = x_154.unity_MatrixV[2i].z;
  u_xlat3.z = x_572;
  let x_575 : bool = u_xlatb1.x;
  if (x_575) {
    let x_579 : vec3<f32> = u_xlat6;
    x_576 = x_579;
  } else {
    let x_581 : vec4<f32> = u_xlat3;
    x_576 = vec3<f32>(x_581.x, x_581.y, x_581.z);
  }
  let x_583 : vec3<f32> = x_576;
  u_xlat6 = x_583;
  let x_584 : vec3<f32> = u_xlat6;
  let x_585 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_584, x_585);
  let x_589 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_589);
  let x_592 : vec3<f32> = u_xlat6;
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_592 * vec3<f32>(x_593.x, x_593.x, x_593.x));
  let x_596 : vec3<f32> = u_xlat6;
  let x_598 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat6.x = dot(x_596, -(vec3<f32>(x_598.x, x_598.y, x_598.z)));
  let x_604 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_604, 0.0f, 1.0f);
  let x_608 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_608);
  let x_612 : f32 = u_xlat6.x;
  u_xlat6.x = (x_612 * 150.0f);
  let x_617 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_617);
  let x_621 : f32 = u_xlat6.x;
  u_xlat6.x = (x_621 + 1.0f);
  let x_625 : f32 = u_xlat0.x;
  let x_627 : f32 = u_xlat6.x;
  u_xlat0.x = (x_625 * x_627);
  let x_631 : vec4<f32> = x_154.x_MainLightColor;
  let x_633 : vec3<f32> = u_xlat0;
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633.x, x_633.x, x_633.x)) + vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_640 : vec4<f32> = x_428.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_642 : vec3<f32> = u_xlat0;
  let x_646 : vec4<f32> = x_154.unity_FogColor;
  u_xlat0 = ((vec3<f32>(x_640.x, x_640.y, x_640.z) * x_642) + -(vec3<f32>(x_646.x, x_646.y, x_646.z)));
  let x_650 : vec3<f32> = vs_INTERP0;
  let x_653 : vec4<f32> = x_29.unity_WorldToObject[1i];
  let x_655 : vec3<f32> = (vec3<f32>(x_650.y, x_650.y, x_650.y) * vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : vec4<f32> = x_29.unity_WorldToObject[0i];
  let x_661 : vec3<f32> = vs_INTERP0;
  let x_664 : vec4<f32> = u_xlat1;
  let x_666 : vec3<f32> = ((vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_661.x, x_661.x, x_661.x)) + vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_670 : vec4<f32> = x_29.unity_WorldToObject[2i];
  let x_672 : vec3<f32> = vs_INTERP0;
  let x_675 : vec4<f32> = u_xlat1;
  let x_677 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.z, x_672.z, x_672.z)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = x_29.unity_WorldToObject[3i];
  let x_685 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat1;
  let x_691 : vec4<f32> = x_29.unity_ObjectToWorld[1i];
  let x_693 : vec3<f32> = (vec3<f32>(x_688.y, x_688.y, x_688.y) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_697 : vec4<f32> = x_29.unity_ObjectToWorld[0i];
  let x_699 : vec4<f32> = u_xlat1;
  let x_702 : vec4<f32> = u_xlat2;
  let x_704 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699.x, x_699.x, x_699.x)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_704.z);
  let x_708 : vec4<f32> = x_29.unity_ObjectToWorld[2i];
  let x_710 : vec4<f32> = u_xlat1;
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_710.z, x_710.z, x_710.z)) + vec3<f32>(x_713.x, x_713.y, x_713.w));
  let x_716 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat1;
  let x_721 : vec4<f32> = x_29.unity_ObjectToWorld[3i];
  let x_723 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) + vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_727 : f32 = u_xlat1.y;
  let x_729 : f32 = x_154.unity_MatrixV[1i].z;
  u_xlat18 = (x_727 * x_729);
  let x_732 : f32 = x_154.unity_MatrixV[0i].z;
  let x_734 : f32 = u_xlat1.x;
  let x_736 : f32 = u_xlat18;
  u_xlat18 = ((x_732 * x_734) + x_736);
  let x_739 : f32 = x_154.unity_MatrixV[2i].z;
  let x_741 : f32 = u_xlat1.z;
  let x_743 : f32 = u_xlat18;
  u_xlat18 = ((x_739 * x_741) + x_743);
  let x_745 : f32 = u_xlat18;
  let x_747 : f32 = x_154.unity_MatrixV[3i].z;
  u_xlat18 = (x_745 + x_747);
  let x_749 : f32 = u_xlat18;
  let x_753 : f32 = x_154.x_ProjectionParams.y;
  u_xlat18 = (-(x_749) + -(x_753));
  let x_756 : f32 = u_xlat18;
  u_xlat18 = max(x_756, 0.0f);
  let x_758 : f32 = u_xlat18;
  let x_761 : f32 = x_154.unity_FogParams.x;
  u_xlat18 = (x_758 * x_761);
  let x_763 : f32 = u_xlat18;
  let x_764 : f32 = u_xlat18;
  u_xlat18 = (x_763 * -(x_764));
  let x_767 : f32 = u_xlat18;
  u_xlat18 = exp2(x_767);
  let x_769 : f32 = u_xlat18;
  u_xlat18 = (-(x_769) + 1.0f);
  let x_772 : f32 = u_xlat18;
  let x_775 : f32 = x_154.x_BA_SkyboxRatio;
  u_xlat18 = (x_772 / x_775);
  let x_777 : f32 = u_xlat18;
  let x_779 : f32 = u_xlat18;
  u_xlat18 = ((-(x_777) * x_779) + 1.0f);
  let x_782 : f32 = u_xlat18;
  u_xlat18 = exp2(x_782);
  let x_784 : f32 = u_xlat18;
  u_xlat18 = (-(x_784) + 1.0f);
  let x_788 : f32 = x_154.x_BA_SkyboxRatio;
  u_xlat1.x = (-(x_788) + 1.0f);
  let x_793 : f32 = x_154.x_WorldSpaceCameraPos.y;
  let x_796 : f32 = u_xlat1.x;
  let x_799 : f32 = vs_INTERP0.y;
  u_xlat1.x = ((-(x_793) * x_796) + x_799);
  let x_803 : f32 = x_428.Vector1_10DA9AB3;
  let x_806 : f32 = x_154.x_BA_SkyboxRatio;
  let x_809 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_803) * x_806) + x_809);
  let x_813 : f32 = x_154.x_BA_SkyboxRatio;
  let x_815 : f32 = x_428.Vector1_33982692;
  u_xlat7 = (x_813 * x_815);
  let x_817 : f32 = u_xlat7;
  u_xlat7 = max(x_817, 0.0f);
  let x_819 : f32 = u_xlat7;
  u_xlat7 = (1.0f / x_819);
  let x_821 : f32 = u_xlat7;
  let x_823 : f32 = u_xlat1.x;
  u_xlat1.x = (x_821 * x_823);
  let x_827 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_827, 0.0f, 1.0f);
  let x_831 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_831) + 1.0f);
  let x_836 : f32 = u_xlat1.x;
  let x_838 : f32 = u_xlat18;
  u_xlat18 = ((-(x_836) * x_838) + 1.0f);
  let x_841 : f32 = u_xlat18;
  u_xlat18 = min(x_841, 1.0f);
  let x_845 : f32 = u_xlat18;
  let x_847 : vec3<f32> = u_xlat0;
  let x_850 : vec4<f32> = x_154.unity_FogColor;
  let x_852 : vec3<f32> = ((vec3<f32>(x_845, x_845, x_845) * x_847) + vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_857 : f32 = x_154.x_BA_CloudData.w;
  u_xlat0.x = (-(x_857) + 1.0f);
  let x_866 : vec4<f32> = vs_INTERP3;
  let x_869 : f32 = x_154.x_GlobalMipBias.x;
  let x_870 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_866.x, x_866.y), x_869);
  let x_871 : vec2<f32> = vec2<f32>(x_870.z, x_870.w);
  let x_872 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_871.x, x_871.y, x_872.z);
  let x_875 : f32 = u_xlat0.x;
  let x_878 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_875) + x_878);
  let x_882 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_882) + 1.0f);
  let x_887 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_887);
  let x_891 : f32 = u_xlat6.x;
  let x_893 : f32 = x_428.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_891 * x_893);
  let x_897 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_897);
  let x_901 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_901) + 1.0f);
  let x_906 : f32 = u_xlat0.x;
  u_xlat0.x = (x_906 * 10.0f);
  let x_911 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_911, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat0.x;
  u_xlat12 = ((x_916 * -2.0f) + 3.0f);
  let x_922 : f32 = u_xlat0.x;
  let x_924 : f32 = u_xlat0.x;
  u_xlat0.x = (x_922 * x_924);
  let x_928 : f32 = u_xlat0.x;
  let x_929 : f32 = u_xlat12;
  u_xlat0.x = (x_928 * x_929);
  let x_933 : f32 = u_xlat0.x;
  let x_935 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_933, x_935);
  let x_943 : u32 = x_154.x_RenderingLayerMaxInt;
  let x_946 : f32 = x_29.unity_RenderingLayer.x;
  u_xlatu0 = (x_943 & bitcast<u32>(x_946));
  let x_949 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_949);
  let x_954 : f32 = u_xlat0.x;
  let x_956 : f32 = x_154.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_954 * x_956);
  let x_960 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_960, 0.0f, 1.0f);
  let x_963 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_963.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

