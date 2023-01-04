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
  padding_2 : u32,
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_29 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_152 : PGlobals;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_3DC46A50 : sampler;

@group(1) @binding(2) var<uniform> x_408 : UnityPerMaterial;

var<private> vs_INTERP0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : vec2<bool>;
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat19 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_244 : f32;
  var x_256 : f32;
  var u_xlat4 : vec4<f32>;
  var x_291 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec3<bool>;
  var x_442 : f32;
  var x_454 : f32;
  var x_466 : f32;
  var u_xlatb19 : bool;
  var x_543 : f32;
  var x_555 : f32;
  var x_566 : f32;
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
  u_xlat2 = (vec3<f32>(x_99, x_99, x_99) * vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_105 : vec3<f32> = u_xlat0;
  let x_106 : vec4<f32> = u_xlat1;
  let x_108 : vec3<f32> = (x_105 * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec3<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat1;
  let x_116 : vec4<f32> = u_xlat3;
  let x_119 : vec3<f32> = ((vec3<f32>(x_111.x, x_111.z, x_111.y) * vec3<f32>(x_113.z, x_113.y, x_113.x)) + -(vec3<f32>(x_116.y, x_116.x, x_116.z)));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec3<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_122.y, x_122.x, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : f32 = u_xlat18;
  u_xlatb18 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_130);
  let x_134 : f32 = u_xlat0.x;
  let x_136 : f32 = u_xlat2.x;
  u_xlat19 = (x_134 * x_136);
  let x_139 : f32 = u_xlat2.z;
  let x_141 : f32 = u_xlat0.y;
  let x_143 : f32 = u_xlat19;
  u_xlat3.z = ((x_139 * x_141) + -(x_143));
  let x_147 : vec3<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_147.y, x_147.z, x_147.x), vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_161 : f32 = u_xlat1.z;
  let x_163 : f32 = u_xlat2.z;
  u_xlat19 = (x_161 * x_163);
  let x_166 : f32 = u_xlat1.y;
  let x_168 : f32 = u_xlat2.x;
  let x_170 : f32 = u_xlat19;
  u_xlat3.y = ((x_166 * x_168) + -(x_170));
  let x_174 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_174.z, x_174.x, x_174.y), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec3<f32> = u_xlat2;
  let x_183 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat0.x = dot(x_181, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : f32 = u_xlat18;
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : f32 = u_xlat18;
  u_xlat18 = max(x_199, 1.17549435e-37f);
  let x_202 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat18;
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = (vec3<f32>(x_204, x_204, x_204) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec4<f32> = u_xlat1;
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_220 : vec4<f32> = u_xlat1;
  let x_223 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.x));
  u_xlatb1 = vec3<bool>(x_223.x, x_223.y, x_223.z);
  let x_236 : vec4<f32> = vs_INTERP3;
  let x_240 : f32 = x_152.x_GlobalMipBias.x;
  let x_241 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_236.x, x_236.y), x_240);
  u_xlat3 = x_241;
  let x_243 : bool = u_xlatb1.x;
  if (x_243) {
    let x_248 : f32 = u_xlat3.z;
    x_244 = x_248;
  } else {
    let x_251 : f32 = u_xlat3.x;
    x_244 = x_251;
  }
  let x_252 : f32 = x_244;
  u_xlat1.x = x_252;
  let x_255 : bool = u_xlatb1.y;
  if (x_255) {
    let x_260 : f32 = u_xlat3.y;
    x_256 = x_260;
  } else {
    let x_263 : f32 = u_xlat3.w;
    x_256 = x_263;
  }
  let x_264 : f32 = x_256;
  u_xlat1.y = x_264;
  let x_266 : vec3<f32> = u_xlat2;
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : vec2<f32> = (vec2<f32>(x_266.x, x_266.y) * vec2<f32>(x_268.x, x_268.y));
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
  let x_274 : f32 = u_xlat1.y;
  let x_276 : f32 = u_xlat1.x;
  u_xlat18 = (x_274 + x_276);
  let x_284 : vec4<f32> = vs_INTERP3;
  let x_287 : f32 = x_152.x_GlobalMipBias.x;
  let x_288 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_284.x, x_284.y), x_287);
  u_xlat4 = x_288;
  let x_290 : bool = u_xlatb1.z;
  if (x_290) {
    let x_295 : f32 = u_xlat4.y;
    x_291 = x_295;
  } else {
    let x_298 : f32 = u_xlat4.x;
    x_291 = x_298;
  }
  let x_299 : f32 = x_291;
  u_xlat1.x = x_299;
  let x_302 : f32 = u_xlat1.x;
  let x_304 : f32 = u_xlat2.z;
  let x_306 : f32 = u_xlat18;
  u_xlat1.y = ((x_302 * x_304) + x_306);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_312.y, x_312.z, x_312.z), vec3<f32>(x_314.y, x_314.z, x_314.z));
  let x_317 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_317);
  let x_319 : f32 = u_xlat18;
  let x_321 : vec4<f32> = u_xlat1;
  let x_323 : vec3<f32> = (vec3<f32>(x_319, x_319, x_319) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat1;
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_326.y, x_326.z, x_326.y) * vec3<f32>(x_328.z, x_328.z, x_328.y));
  let x_332 : f32 = u_xlat1.z;
  let x_334 : f32 = u_xlat1.z;
  let x_337 : f32 = u_xlat2.z;
  u_xlat18 = ((x_332 * x_334) + -(x_337));
  let x_343 : vec4<f32> = x_29.unity_SHBr;
  let x_344 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(x_343, vec4<f32>(x_344.x, x_344.x, x_344.y, x_344.y));
  let x_350 : vec4<f32> = x_29.unity_SHBg;
  let x_351 : vec3<f32> = u_xlat2;
  u_xlat5.y = dot(x_350, vec4<f32>(x_351.x, x_351.x, x_351.y, x_351.y));
  let x_357 : vec4<f32> = x_29.unity_SHBb;
  let x_358 : vec3<f32> = u_xlat2;
  u_xlat5.z = dot(x_357, vec4<f32>(x_358.x, x_358.x, x_358.y, x_358.y));
  let x_364 : vec4<f32> = x_29.unity_SHC;
  let x_366 : f32 = u_xlat18;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat2 = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366, x_366, x_366)) + x_369);
  let x_373 : vec4<f32> = x_29.unity_SHAr;
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_373.y, x_373.x, x_373.z, x_373.w), vec4<f32>(x_375.y, x_375.z, x_375.z, x_375.w));
  let x_381 : vec4<f32> = x_29.unity_SHAg;
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_381.y, x_381.x, x_381.z, x_381.w), vec4<f32>(x_383.y, x_383.z, x_383.z, x_383.w));
  let x_389 : vec4<f32> = x_29.unity_SHAb;
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_389, x_390);
  let x_393 : vec3<f32> = u_xlat2;
  let x_394 : vec3<f32> = u_xlat5;
  let x_395 : vec3<f32> = (x_393 + x_394);
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat1;
  let x_401 : vec3<f32> = max(vec3<f32>(x_398.x, x_398.y, x_398.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat1;
  let x_410 : f32 = x_408.Vector1_5f4b185241524942830132fc71554a33;
  let x_412 : f32 = x_408.Vector1_5f4b185241524942830132fc71554a33;
  let x_414 : f32 = x_408.Vector1_5f4b185241524942830132fc71554a33;
  let x_415 : vec3<f32> = vec3<f32>(x_410, x_412, x_414);
  let x_420 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec3<f32> = u_xlat0;
  let x_424 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_423, x_424);
  let x_426 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_426);
  let x_428 : f32 = u_xlat18;
  let x_430 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_428, x_428, x_428) * x_430);
  let x_433 : vec3<f32> = u_xlat0;
  let x_435 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_433.x, x_433.y, x_433.z, x_433.x));
  u_xlatb2 = vec3<bool>(x_435.x, x_435.y, x_435.z);
  let x_437 : vec3<f32> = u_xlat0;
  let x_438 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_437 * x_438);
  let x_441 : bool = u_xlatb2.x;
  if (x_441) {
    let x_446 : f32 = u_xlat3.z;
    x_442 = x_446;
  } else {
    let x_449 : f32 = u_xlat3.x;
    x_442 = x_449;
  }
  let x_450 : f32 = x_442;
  u_xlat2.x = x_450;
  let x_453 : bool = u_xlatb2.y;
  if (x_453) {
    let x_458 : f32 = u_xlat3.y;
    x_454 = x_458;
  } else {
    let x_461 : f32 = u_xlat3.w;
    x_454 = x_461;
  }
  let x_462 : f32 = x_454;
  u_xlat2.y = x_462;
  let x_465 : bool = u_xlatb2.z;
  if (x_465) {
    let x_470 : f32 = u_xlat4.y;
    x_466 = x_470;
  } else {
    let x_473 : f32 = u_xlat4.x;
    x_466 = x_473;
  }
  let x_474 : f32 = x_466;
  u_xlat18 = x_474;
  let x_475 : vec3<f32> = u_xlat0;
  let x_477 : vec3<f32> = u_xlat2;
  let x_479 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) * vec2<f32>(x_477.x, x_477.y));
  let x_480 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_479.x, x_479.y, x_480.z);
  let x_483 : f32 = u_xlat0.y;
  let x_485 : f32 = u_xlat0.x;
  u_xlat0.x = (x_483 + x_485);
  let x_488 : f32 = u_xlat18;
  let x_490 : f32 = u_xlat0.z;
  let x_493 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_488 * x_490) + x_493);
  let x_497 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_497);
  let x_502 : f32 = x_408.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_502 * 0.5f);
  let x_507 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_507, 0.001f);
  let x_512 : f32 = u_xlat0.x;
  let x_514 : f32 = u_xlat6.x;
  u_xlat0.x = (x_512 * x_514);
  let x_518 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_518);
  let x_522 : vec3<f32> = vs_INTERP0;
  let x_526 : vec3<f32> = x_152.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_522) + x_526);
  let x_528 : vec3<f32> = u_xlat6;
  let x_529 : vec3<f32> = u_xlat6;
  u_xlat19 = dot(x_528, x_529);
  let x_531 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_531);
  let x_533 : vec3<f32> = u_xlat6;
  let x_534 : f32 = u_xlat19;
  u_xlat6 = (x_533 * vec3<f32>(x_534, x_534, x_534));
  let x_540 : f32 = x_152.unity_OrthoParams.w;
  u_xlatb19 = (x_540 == 0.0f);
  let x_542 : bool = u_xlatb19;
  if (x_542) {
    let x_547 : f32 = u_xlat6.x;
    x_543 = x_547;
  } else {
    let x_551 : f32 = x_152.unity_MatrixV[0i].z;
    x_543 = x_551;
  }
  let x_552 : f32 = x_543;
  u_xlat2.x = x_552;
  let x_554 : bool = u_xlatb19;
  if (x_554) {
    let x_559 : f32 = u_xlat6.y;
    x_555 = x_559;
  } else {
    let x_562 : f32 = x_152.unity_MatrixV[1i].z;
    x_555 = x_562;
  }
  let x_563 : f32 = x_555;
  u_xlat2.y = x_563;
  let x_565 : bool = u_xlatb19;
  if (x_565) {
    let x_570 : f32 = u_xlat6.z;
    x_566 = x_570;
  } else {
    let x_573 : f32 = x_152.unity_MatrixV[2i].z;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  u_xlat2.z = x_574;
  let x_576 : vec3<f32> = u_xlat2;
  let x_577 : vec3<f32> = u_xlat2;
  u_xlat6.x = dot(x_576, x_577);
  let x_581 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_581);
  let x_584 : vec3<f32> = u_xlat6;
  let x_586 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_584.x, x_584.x, x_584.x) * x_586);
  let x_588 : vec3<f32> = u_xlat6;
  let x_590 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat6.x = dot(x_588, -(vec3<f32>(x_590.x, x_590.y, x_590.z)));
  let x_596 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_596, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_600);
  let x_604 : f32 = u_xlat6.x;
  u_xlat6.x = (x_604 * 150.0f);
  let x_609 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_609);
  let x_613 : f32 = u_xlat6.x;
  u_xlat6.x = (x_613 + 1.0f);
  let x_617 : f32 = u_xlat0.x;
  let x_619 : f32 = u_xlat6.x;
  u_xlat0.x = (x_617 * x_619);
  let x_623 : vec4<f32> = x_152.x_MainLightColor;
  let x_625 : vec3<f32> = u_xlat0;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625.x, x_625.x, x_625.x)) + vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_633 : vec3<f32> = u_xlat0;
  let x_635 : vec4<f32> = x_408.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_637 : vec3<f32> = (x_633 * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_642 : f32 = x_152.x_BA_CloudData.w;
  u_xlat0.x = (-(x_642) + 1.0f);
  let x_647 : f32 = u_xlat0.x;
  let x_650 : f32 = u_xlat4.z;
  u_xlat0.x = (-(x_647) + x_650);
  let x_654 : f32 = u_xlat4.w;
  u_xlat6.x = (-(x_654) + 1.0f);
  let x_659 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_659);
  let x_663 : f32 = u_xlat6.x;
  let x_665 : f32 = x_408.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_663 * x_665);
  let x_669 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_669);
  let x_673 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_673) + 1.0f);
  let x_678 : f32 = u_xlat0.x;
  u_xlat0.x = (x_678 * 10.0f);
  let x_683 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_683, 0.0f, 1.0f);
  let x_688 : f32 = u_xlat0.x;
  u_xlat12 = ((x_688 * -2.0f) + 3.0f);
  let x_694 : f32 = u_xlat0.x;
  let x_696 : f32 = u_xlat0.x;
  u_xlat0.x = (x_694 * x_696);
  let x_700 : f32 = u_xlat0.x;
  let x_701 : f32 = u_xlat12;
  u_xlat0.x = (x_700 * x_701);
  let x_705 : f32 = u_xlat0.x;
  let x_707 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_705, x_707);
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

