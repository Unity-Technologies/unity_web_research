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
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(1) @binding(0) var<uniform> x_151 : PGlobals;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_416 : UnityPerMaterial;

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
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat19 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_237 : f32;
  var x_249 : f32;
  var u_xlat7 : f32;
  var u_xlat13 : vec2<f32>;
  var x_299 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var x_450 : f32;
  var x_462 : f32;
  var x_474 : f32;
  var x_554 : f32;
  var x_567 : f32;
  var x_579 : f32;
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
  let x_90 : f32 = u_xlat18;
  let x_92 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_90, x_90, x_90) * vec3<f32>(x_92.y, x_92.z, x_92.x));
  let x_97 : f32 = u_xlat18;
  let x_99 : vec4<f32> = vs_INTERP2;
  let x_101 : vec3<f32> = (vec3<f32>(x_97, x_97, x_97) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = u_xlat0;
  let x_106 : vec3<f32> = u_xlat1;
  let x_107 : vec3<f32> = (x_105 * x_106);
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec3<f32> = u_xlat0;
  let x_112 : vec3<f32> = u_xlat1;
  let x_115 : vec4<f32> = u_xlat3;
  let x_118 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.z, x_110.y) * vec3<f32>(x_112.z, x_112.y, x_112.x)) + -(vec3<f32>(x_115.y, x_115.x, x_115.z)));
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_121.y, x_121.x, x_121.z), vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_127 : f32 = u_xlat18;
  u_xlatb18 = (x_127 < 0.0f);
  let x_129 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_129);
  let x_133 : f32 = u_xlat0.x;
  let x_135 : f32 = u_xlat2.x;
  u_xlat19 = (x_133 * x_135);
  let x_138 : f32 = u_xlat2.z;
  let x_140 : f32 = u_xlat0.y;
  let x_142 : f32 = u_xlat19;
  u_xlat3.z = ((x_138 * x_140) + -(x_142));
  let x_146 : vec3<f32> = u_xlat0;
  let x_155 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_146.y, x_146.z, x_146.x), vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_160 : f32 = u_xlat1.z;
  let x_162 : f32 = u_xlat2.z;
  u_xlat19 = (x_160 * x_162);
  let x_165 : f32 = u_xlat1.y;
  let x_167 : f32 = u_xlat2.x;
  let x_169 : f32 = u_xlat19;
  u_xlat3.y = ((x_165 * x_167) + -(x_169));
  let x_173 : vec3<f32> = u_xlat1;
  let x_176 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_173.z, x_173.x, x_173.y), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : f32 = u_xlat18;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec3<f32> = u_xlat1;
  let x_193 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_192, x_193);
  let x_195 : f32 = u_xlat18;
  u_xlat18 = max(x_195, 1.17549435e-37f);
  let x_198 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_198);
  let x_200 : f32 = u_xlat18;
  let x_202 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec3<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat1;
  let x_206 : vec3<f32> = (x_204 * x_205);
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_213 : vec3<f32> = u_xlat1;
  let x_216 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_213.x, x_213.y, x_213.z, x_213.x));
  u_xlatb1 = vec3<bool>(x_216.x, x_216.y, x_216.z);
  let x_229 : vec4<f32> = vs_INTERP3;
  let x_233 : f32 = x_151.x_GlobalMipBias.x;
  let x_234 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_229.x, x_229.y), x_233);
  u_xlat3 = x_234;
  let x_236 : bool = u_xlatb1.x;
  if (x_236) {
    let x_241 : f32 = u_xlat3.z;
    x_237 = x_241;
  } else {
    let x_244 : f32 = u_xlat3.x;
    x_237 = x_244;
  }
  let x_245 : f32 = x_237;
  u_xlat1.x = x_245;
  let x_248 : bool = u_xlatb1.y;
  if (x_248) {
    let x_253 : f32 = u_xlat3.y;
    x_249 = x_253;
  } else {
    let x_256 : f32 = u_xlat3.w;
    x_249 = x_256;
  }
  let x_257 : f32 = x_249;
  u_xlat1.y = x_257;
  let x_259 : vec4<f32> = u_xlat2;
  let x_261 : vec3<f32> = u_xlat1;
  let x_263 : vec2<f32> = (vec2<f32>(x_259.x, x_259.y) * vec2<f32>(x_261.x, x_261.y));
  let x_264 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_263.x, x_263.y, x_264.z);
  let x_267 : f32 = u_xlat1.y;
  let x_269 : f32 = u_xlat1.x;
  u_xlat18 = (x_267 + x_269);
  let x_271 : vec4<f32> = u_xlat3;
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec2<f32> = (vec2<f32>(x_271.z, x_271.w) + vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_275.x, x_275.y, x_276.z);
  let x_279 : f32 = u_xlat1.y;
  let x_281 : f32 = u_xlat1.x;
  u_xlat1.x = (x_279 + x_281);
  let x_286 : f32 = u_xlat1.x;
  u_xlat7 = (x_286 * 0.25f);
  let x_290 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_290) * 0.25f) + 1.0f);
  let x_298 : bool = u_xlatb1.z;
  if (x_298) {
    let x_302 : f32 = u_xlat7;
    x_299 = x_302;
  } else {
    let x_305 : f32 = u_xlat1.x;
    x_299 = x_305;
  }
  let x_306 : f32 = x_299;
  u_xlat13.x = x_306;
  let x_309 : f32 = u_xlat13.x;
  let x_311 : f32 = u_xlat2.z;
  let x_313 : f32 = u_xlat18;
  u_xlat2.y = ((x_309 * x_311) + x_313);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_319.y, x_319.z, x_319.z), vec3<f32>(x_321.y, x_321.z, x_321.z));
  let x_324 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_324);
  let x_326 : f32 = u_xlat18;
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : vec3<f32> = (vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : vec4<f32> = u_xlat2;
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_334.y, x_334.z, x_334.y) * vec3<f32>(x_336.z, x_336.z, x_336.y));
  let x_340 : f32 = u_xlat2.z;
  let x_342 : f32 = u_xlat2.z;
  let x_345 : f32 = u_xlat4.z;
  u_xlat18 = ((x_340 * x_342) + -(x_345));
  let x_351 : vec4<f32> = x_29.unity_SHBr;
  let x_352 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_351, vec4<f32>(x_352.x, x_352.x, x_352.y, x_352.y));
  let x_358 : vec4<f32> = x_29.unity_SHBg;
  let x_359 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_358, vec4<f32>(x_359.x, x_359.x, x_359.y, x_359.y));
  let x_365 : vec4<f32> = x_29.unity_SHBb;
  let x_366 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_365, vec4<f32>(x_366.x, x_366.x, x_366.y, x_366.y));
  let x_372 : vec4<f32> = x_29.unity_SHC;
  let x_374 : f32 = u_xlat18;
  let x_377 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_374, x_374, x_374)) + x_377);
  let x_381 : vec4<f32> = x_29.unity_SHAr;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_381.y, x_381.x, x_381.z, x_381.w), vec4<f32>(x_383.y, x_383.z, x_383.z, x_383.w));
  let x_389 : vec4<f32> = x_29.unity_SHAg;
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_389.y, x_389.x, x_389.z, x_389.w), vec4<f32>(x_391.y, x_391.z, x_391.z, x_391.w));
  let x_397 : vec4<f32> = x_29.unity_SHAb;
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_397, x_398);
  let x_401 : vec3<f32> = u_xlat4;
  let x_402 : vec3<f32> = u_xlat5;
  let x_403 : vec3<f32> = (x_401 + x_402);
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat2;
  let x_409 : vec3<f32> = max(vec3<f32>(x_406.x, x_406.y, x_406.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : vec4<f32> = u_xlat2;
  let x_418 : f32 = x_416.Vector1_5f4b185241524942830132fc71554a33;
  let x_420 : f32 = x_416.Vector1_5f4b185241524942830132fc71554a33;
  let x_422 : f32 = x_416.Vector1_5f4b185241524942830132fc71554a33;
  let x_423 : vec3<f32> = vec3<f32>(x_418, x_420, x_422);
  let x_428 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_429 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec3<f32> = u_xlat0;
  let x_432 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_431, x_432);
  let x_434 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_434);
  let x_436 : f32 = u_xlat18;
  let x_438 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_436, x_436, x_436) * x_438);
  let x_441 : vec3<f32> = u_xlat0;
  let x_443 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_441.x, x_441.y, x_441.z, x_441.x));
  u_xlatb4 = vec3<bool>(x_443.x, x_443.y, x_443.z);
  let x_445 : vec3<f32> = u_xlat0;
  let x_446 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_445 * x_446);
  let x_449 : bool = u_xlatb4.x;
  if (x_449) {
    let x_454 : f32 = u_xlat3.z;
    x_450 = x_454;
  } else {
    let x_457 : f32 = u_xlat3.x;
    x_450 = x_457;
  }
  let x_458 : f32 = x_450;
  u_xlat13.x = x_458;
  let x_461 : bool = u_xlatb4.y;
  if (x_461) {
    let x_466 : f32 = u_xlat3.y;
    x_462 = x_466;
  } else {
    let x_469 : f32 = u_xlat3.w;
    x_462 = x_469;
  }
  let x_470 : f32 = x_462;
  u_xlat13.y = x_470;
  let x_473 : bool = u_xlatb4.z;
  if (x_473) {
    let x_477 : f32 = u_xlat7;
    x_474 = x_477;
  } else {
    let x_480 : f32 = u_xlat1.x;
    x_474 = x_480;
  }
  let x_481 : f32 = x_474;
  u_xlat18 = x_481;
  let x_482 : vec3<f32> = u_xlat0;
  let x_484 : vec2<f32> = u_xlat13;
  let x_485 : vec2<f32> = (vec2<f32>(x_482.x, x_482.y) * x_484);
  let x_486 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_485.x, x_485.y, x_486.z);
  let x_489 : f32 = u_xlat0.y;
  let x_491 : f32 = u_xlat0.x;
  u_xlat0.x = (x_489 + x_491);
  let x_494 : f32 = u_xlat18;
  let x_496 : f32 = u_xlat0.z;
  let x_499 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_494 * x_496) + x_499);
  let x_503 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_503);
  let x_508 : f32 = x_416.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_508 * 0.5f);
  let x_513 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_513, 0.001f);
  let x_518 : f32 = u_xlat0.x;
  let x_520 : f32 = u_xlat6.x;
  u_xlat0.x = (x_518 * x_520);
  let x_524 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_524);
  let x_528 : vec3<f32> = vs_INTERP0;
  let x_533 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_528) + x_533);
  let x_535 : vec3<f32> = u_xlat6;
  let x_536 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat1;
  u_xlat6 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_151.unity_OrthoParams.w;
  u_xlatb1.x = (x_549 == 0.0f);
  let x_553 : bool = u_xlatb1.x;
  if (x_553) {
    let x_558 : f32 = u_xlat6.x;
    x_554 = x_558;
  } else {
    let x_562 : f32 = x_151.unity_MatrixV[0i].z;
    x_554 = x_562;
  }
  let x_563 : f32 = x_554;
  u_xlat3.x = x_563;
  let x_566 : bool = u_xlatb1.x;
  if (x_566) {
    let x_571 : f32 = u_xlat6.y;
    x_567 = x_571;
  } else {
    let x_574 : f32 = x_151.unity_MatrixV[1i].z;
    x_567 = x_574;
  }
  let x_575 : f32 = x_567;
  u_xlat3.y = x_575;
  let x_578 : bool = u_xlatb1.x;
  if (x_578) {
    let x_583 : f32 = u_xlat6.z;
    x_579 = x_583;
  } else {
    let x_586 : f32 = x_151.unity_MatrixV[2i].z;
    x_579 = x_586;
  }
  let x_587 : f32 = x_579;
  u_xlat3.z = x_587;
  let x_589 : vec4<f32> = u_xlat3;
  let x_591 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_589.x, x_589.y, x_589.z), vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_596 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_596);
  let x_599 : vec3<f32> = u_xlat6;
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_599.x, x_599.x, x_599.x) * vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec3<f32> = u_xlat6;
  let x_606 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat6.x = dot(x_604, -(vec3<f32>(x_606.x, x_606.y, x_606.z)));
  let x_612 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_612, 0.0f, 1.0f);
  let x_616 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_616);
  let x_620 : f32 = u_xlat6.x;
  u_xlat6.x = (x_620 * 150.0f);
  let x_625 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_625);
  let x_629 : f32 = u_xlat6.x;
  u_xlat6.x = (x_629 + 1.0f);
  let x_633 : f32 = u_xlat0.x;
  let x_635 : f32 = u_xlat6.x;
  u_xlat0.x = (x_633 * x_635);
  let x_639 : vec4<f32> = x_151.x_MainLightColor;
  let x_641 : vec3<f32> = u_xlat0;
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_649 : vec3<f32> = u_xlat0;
  let x_651 : vec4<f32> = x_416.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_653 : vec3<f32> = (x_649 * vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_658 : f32 = x_151.x_BA_CloudData.w;
  u_xlat0.x = (-(x_658) + 1.0f);
  let x_667 : vec4<f32> = vs_INTERP3;
  let x_670 : f32 = x_151.x_GlobalMipBias.x;
  let x_671 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_667.x, x_667.y), x_670);
  let x_672 : vec2<f32> = vec2<f32>(x_671.z, x_671.w);
  let x_673 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_672.x, x_672.y, x_673.z);
  let x_676 : f32 = u_xlat0.x;
  let x_679 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_676) + x_679);
  let x_683 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_683) + 1.0f);
  let x_688 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_688);
  let x_692 : f32 = u_xlat6.x;
  let x_694 : f32 = x_416.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_692 * x_694);
  let x_698 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_698);
  let x_702 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat0.x = (x_707 * 10.0f);
  let x_712 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_712, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat0.x;
  u_xlat12 = ((x_717 * -2.0f) + 3.0f);
  let x_723 : f32 = u_xlat0.x;
  let x_725 : f32 = u_xlat0.x;
  u_xlat0.x = (x_723 * x_725);
  let x_729 : f32 = u_xlat0.x;
  let x_730 : f32 = u_xlat12;
  u_xlat0.x = (x_729 * x_730);
  let x_734 : f32 = u_xlat0.x;
  let x_736 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_734, x_736);
  let x_744 : u32 = x_151.x_RenderingLayerMaxInt;
  let x_747 : f32 = x_29.unity_RenderingLayer.x;
  u_xlatu0 = (x_744 & bitcast<u32>(x_747));
  let x_750 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_750);
  let x_755 : f32 = u_xlat0.x;
  let x_757 : f32 = x_151.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_755 * x_757);
  let x_761 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_761, 0.0f, 1.0f);
  let x_764 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_764.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

