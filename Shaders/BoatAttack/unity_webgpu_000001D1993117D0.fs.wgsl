struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

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

struct UnityPerMaterial {
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  Color_C30C7CA3 : vec4<f32>,
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_90 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_161 : UnityPerDraw;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_272 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1317 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb33 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat2 : vec3<f32>;
  var x_118 : f32;
  var x_132 : f32;
  var x_145 : f32;
  var u_xlat33 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat16 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb35 : bool;
  var u_xlatb37 : bool;
  var u_xlat11 : vec3<f32>;
  var u_xlat35 : f32;
  var x_389 : f32;
  var u_xlatu1 : vec3<u32>;
  var u_xlatu23 : u32;
  var u_xlatu3 : u32;
  var u_xlati23 : i32;
  var u_xlati12 : i32;
  var u_xlatu12 : u32;
  var u_xlati1 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat12 : vec3<f32>;
  var x_521 : f32;
  var u_xlatb12 : vec2<bool>;
  var x_552 : f32;
  var u_xlat23 : vec2<f32>;
  var u_xlatb1 : bool;
  var x_602 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec4<f32> = gl_FragCoord;
  let x_50 : vec3<f32> = vec3<f32>(x_49.x, x_49.y, x_49.z);
  let x_55 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_50.x, x_50.y, x_50.z, (1.0f / x_55));
  let x_65 : vec3<f32> = vs_INTERP1;
  let x_66 : vec3<f32> = vs_INTERP1;
  u_xlat0.x = dot(x_65, x_66);
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_72);
  let x_76 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_76);
  let x_79 : vec3<f32> = u_xlat0;
  let x_81 : vec3<f32> = vs_INTERP1;
  u_xlat0 = (vec3<f32>(x_79.x, x_79.x, x_79.x) * x_81);
  let x_94 : f32 = x_90.unity_OrthoParams.w;
  u_xlatb33 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat34 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat34;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_117 : bool = u_xlatb33;
  if (x_117) {
    let x_122 : f32 = u_xlat1.x;
    x_118 = x_122;
  } else {
    let x_128 : f32 = x_90.unity_MatrixV[0i].z;
    x_118 = x_128;
  }
  let x_129 : f32 = x_118;
  u_xlat2.x = x_129;
  let x_131 : bool = u_xlatb33;
  if (x_131) {
    let x_137 : f32 = u_xlat1.y;
    x_132 = x_137;
  } else {
    let x_141 : f32 = x_90.unity_MatrixV[1i].z;
    x_132 = x_141;
  }
  let x_142 : f32 = x_132;
  u_xlat2.y = x_142;
  let x_144 : bool = u_xlatb33;
  if (x_144) {
    let x_149 : f32 = u_xlat1.z;
    x_145 = x_149;
  } else {
    let x_153 : f32 = x_90.unity_MatrixV[2i].z;
    x_145 = x_153;
  }
  let x_154 : f32 = x_145;
  u_xlat2.z = x_154;
  let x_156 : vec3<f32> = u_xlat2;
  let x_164 : vec4<f32> = x_161.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_156.y, x_156.y, x_156.y) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec4<f32> = x_161.unity_WorldToObject[0i];
  let x_170 : vec3<f32> = u_xlat2;
  let x_173 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_168.x, x_168.y, x_168.z) * vec3<f32>(x_170.x, x_170.x, x_170.x)) + x_173);
  let x_176 : vec4<f32> = x_161.unity_WorldToObject[2i];
  let x_178 : vec3<f32> = u_xlat2;
  let x_181 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_178.z, x_178.z, x_178.z)) + x_181);
  let x_184 : vec3<f32> = u_xlat1;
  let x_185 : vec3<f32> = u_xlat1;
  u_xlat33 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat33;
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_205 : vec4<f32> = vs_INTERP3;
  let x_208 : f32 = x_90.x_GlobalMipBias.x;
  let x_209 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_205.x, x_205.y), x_208);
  u_xlat3 = x_209;
  let x_211 : vec4<f32> = u_xlat3;
  let x_217 : vec4<f32> = x_215.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_226 : vec4<f32> = vs_INTERP3;
  let x_229 : f32 = x_90.x_GlobalMipBias.x;
  let x_230 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_226.x, x_226.y), x_229);
  u_xlat5 = vec4<f32>(x_230.w, x_230.x, x_230.y, x_230.z);
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_233.y, x_233.z, x_233.w, x_233.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_241 : vec4<f32> = u_xlat6;
  let x_242 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_244);
  let x_247 : f32 = u_xlat33;
  let x_249 : vec4<f32> = u_xlat6;
  u_xlat16 = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_254 : f32 = vs_INTERP4.y;
  u_xlat33 = (x_254 * 200.0f);
  let x_257 : f32 = u_xlat33;
  u_xlat33 = min(x_257, 1.0f);
  let x_259 : f32 = u_xlat33;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = (vec3<f32>(x_259, x_259, x_259) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_274 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][1i];
  let x_276 : vec3<f32> = (vec3<f32>(x_266.y, x_266.y, x_266.y) * vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_277 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][0i];
  let x_282 : vec3<f32> = vs_INTERP0;
  let x_285 : vec4<f32> = u_xlat6;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.x, x_282.x, x_282.x)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_291 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][2i];
  let x_293 : vec3<f32> = vs_INTERP0;
  let x_296 : vec4<f32> = u_xlat6;
  let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.z, x_293.z, x_293.z)) + vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_305 : vec4<f32> = x_272.x_MainLightWorldToShadow[0i][3i];
  let x_307 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) + vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : vec4<f32> = u_xlat6;
  let x_312 : vec2<f32> = vec2<f32>(x_311.x, x_311.y);
  let x_314 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_312.x, x_312.y, x_314);
  let x_326 : vec3<f32> = txVec0;
  let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
  u_xlat33 = x_328;
  let x_331 : f32 = x_272.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_331) + 1.0f);
  let x_334 : f32 = u_xlat33;
  let x_336 : f32 = x_272.x_MainLightShadowParams.x;
  let x_338 : f32 = u_xlat34;
  u_xlat33 = ((x_334 * x_336) + x_338);
  let x_342 : f32 = u_xlat6.z;
  u_xlatb35 = (0.0f >= x_342);
  let x_346 : f32 = u_xlat6.z;
  u_xlatb37 = (x_346 >= 1.0f);
  let x_348 : bool = u_xlatb35;
  let x_349 : bool = u_xlatb37;
  u_xlatb35 = (x_348 | x_349);
  let x_351 : bool = u_xlatb35;
  let x_352 : f32 = u_xlat33;
  u_xlat33 = select(x_352, 1.0f, x_351);
  let x_354 : vec3<f32> = u_xlat0;
  let x_356 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_354, -(vec3<f32>(x_356.x, x_356.y, x_356.z)));
  let x_362 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_362, 0.0f, 1.0f);
  let x_366 : f32 = u_xlat33;
  let x_370 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat11 = (vec3<f32>(x_366, x_366, x_366) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec3<f32> = u_xlat11;
  let x_374 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_373 * vec3<f32>(x_374.x, x_374.x, x_374.x));
  let x_377 : vec3<f32> = u_xlat0;
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_377 * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_382 : f32 = x_161.unity_LODFade.x;
  u_xlatb33 = (x_382 < 0.0f);
  let x_386 : f32 = x_161.unity_LODFade.x;
  u_xlat35 = (x_386 + 1.0f);
  let x_388 : bool = u_xlatb33;
  if (x_388) {
    let x_392 : f32 = u_xlat35;
    x_389 = x_392;
  } else {
    let x_395 : f32 = x_161.unity_LODFade.x;
    x_389 = x_395;
  }
  let x_396 : f32 = x_389;
  u_xlat33 = x_396;
  let x_398 : f32 = u_xlat33;
  u_xlatb35 = (0.5f >= x_398);
  let x_400 : vec3<f32> = u_xlat1;
  let x_403 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_400) * vec3<f32>(x_403.x, x_403.y, x_403.x));
  let x_409 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_409);
  let x_413 : u32 = u_xlatu1.z;
  u_xlatu23 = (x_413 * 1025u);
  let x_417 : u32 = u_xlatu23;
  u_xlatu3 = (x_417 >> 6u);
  let x_421 : u32 = u_xlatu23;
  let x_422 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_421 ^ x_422));
  let x_425 : i32 = u_xlati23;
  u_xlatu23 = (bitcast<u32>(x_425) * 9u);
  let x_429 : u32 = u_xlatu23;
  u_xlatu3 = (x_429 >> 11u);
  let x_432 : u32 = u_xlatu23;
  let x_433 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_432 ^ x_433));
  let x_436 : i32 = u_xlati23;
  u_xlati23 = (x_436 * 32769i);
  let x_440 : i32 = u_xlati23;
  let x_443 : u32 = u_xlatu1.y;
  u_xlati12 = bitcast<i32>((bitcast<u32>(x_440) ^ x_443));
  let x_447 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_447) * 1025u);
  let x_450 : u32 = u_xlatu12;
  u_xlatu23 = (x_450 >> 6u);
  let x_452 : u32 = u_xlatu23;
  let x_453 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_452 ^ x_453));
  let x_456 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_456) * 9u);
  let x_459 : u32 = u_xlatu12;
  u_xlatu23 = (x_459 >> 11u);
  let x_461 : u32 = u_xlatu23;
  let x_462 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_461 ^ x_462));
  let x_465 : i32 = u_xlati12;
  u_xlati12 = (x_465 * 32769i);
  let x_468 : i32 = u_xlati12;
  let x_471 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_468) ^ x_471));
  let x_474 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_474) * 1025u);
  let x_479 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_479 >> 6u);
  let x_481 : u32 = u_xlatu12;
  let x_483 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_481 ^ x_483));
  let x_486 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_486) * 9u);
  let x_491 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_491 >> 11u);
  let x_493 : u32 = u_xlatu12;
  let x_495 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_493 ^ x_495));
  let x_498 : i32 = u_xlati1;
  u_xlati1 = (x_498 * 32769i);
  param = 1065353216i;
  let x_504 : i32 = u_xlati1;
  param_1 = x_504;
  param_2 = 0i;
  param_3 = 23i;
  let x_507 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_507);
  let x_511 : f32 = u_xlat1.x;
  u_xlat1.x = (x_511 + -1.0f);
  let x_516 : f32 = u_xlat1.x;
  u_xlat12.x = (-(x_516) + 1.0f);
  let x_520 : bool = u_xlatb35;
  if (x_520) {
    let x_525 : f32 = u_xlat1.x;
    x_521 = x_525;
  } else {
    let x_528 : f32 = u_xlat12.x;
    x_521 = x_528;
  }
  let x_529 : f32 = x_521;
  u_xlat1.x = x_529;
  let x_531 : f32 = u_xlat33;
  let x_534 : f32 = u_xlat1.x;
  u_xlat33 = ((x_531 * 2.0f) + -(x_534));
  let x_537 : f32 = u_xlat33;
  let x_539 : f32 = u_xlat3.w;
  u_xlat1.x = (x_537 * x_539);
  let x_546 : f32 = u_xlat1.x;
  u_xlatb12.x = (x_546 >= 0.400000006f);
  let x_551 : bool = u_xlatb12.x;
  if (x_551) {
    let x_556 : f32 = u_xlat1.x;
    x_552 = x_556;
  } else {
    x_552 = 0.0f;
  }
  let x_558 : f32 = x_552;
  u_xlat12.x = x_558;
  let x_561 : f32 = u_xlat3.w;
  let x_562 : f32 = u_xlat33;
  u_xlat33 = ((x_561 * x_562) + -0.400000006f);
  let x_569 : f32 = u_xlat1.x;
  u_xlat23.x = dpdxCoarse(x_569);
  let x_573 : f32 = u_xlat1.x;
  u_xlat1.x = dpdyCoarse(x_573);
  let x_577 : f32 = u_xlat1.x;
  let x_580 : f32 = u_xlat23.x;
  u_xlat1.x = (abs(x_577) + abs(x_580));
  let x_585 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_585, 0.0001f);
  let x_589 : f32 = u_xlat33;
  let x_591 : f32 = u_xlat1.x;
  u_xlat33 = (x_589 / x_591);
  let x_593 : f32 = u_xlat33;
  u_xlat33 = (x_593 + 0.5f);
  let x_595 : f32 = u_xlat33;
  u_xlat33 = clamp(x_595, 0.0f, 1.0f);
  let x_599 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb1 = !((x_599 == 0.0f));
  let x_601 : bool = u_xlatb1;
  if (x_601) {
    let x_605 : f32 = u_xlat33;
    x_602 = x_605;
  } else {
    let x_608 : f32 = u_xlat12.x;
    x_602 = x_608;
  }
  let x_609 : f32 = x_602;
  u_xlat33 = x_609;
  let x_610 : f32 = u_xlat33;
  u_xlat12.x = (x_610 + -0.0001f);
  let x_615 : f32 = u_xlat12.x;
  u_xlatb12.x = (x_615 < 0.0f);
  let x_619 : bool = u_xlatb12.x;
  if (((select(0i, 1i, x_619) * -1i) != 0i)) {
    discard;
  }
  let x_629 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_629);
  let x_633 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_633 >= 0.0f);
  let x_637 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_637);
  let x_641 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_641);
  let x_645 : f32 = u_xlat12.y;
  let x_647 : f32 = u_xlat12.x;
  u_xlat12.x = (x_645 * x_647);
  let x_650 : vec3<f32> = vs_INTERP1;
  let x_652 : vec4<f32> = vs_INTERP2;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.z, x_650.x, x_650.y) * vec3<f32>(x_652.y, x_652.z, x_652.x));
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec3<f32> = vs_INTERP1;
  let x_659 : vec4<f32> = vs_INTERP2;
  let x_662 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = ((vec3<f32>(x_657.y, x_657.z, x_657.x) * vec3<f32>(x_659.z, x_659.x, x_659.y)) + -(vec3<f32>(x_662.x, x_662.y, x_662.z)));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec3<f32> = u_xlat12;
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.x, x_668.x) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = u_xlat16;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.y, x_677.y, x_677.y));
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec3<f32> = u_xlat16;
  let x_684 : vec4<f32> = vs_INTERP2;
  let x_687 : vec4<f32> = u_xlat3;
  let x_689 : vec3<f32> = ((vec3<f32>(x_682.x, x_682.x, x_682.x) * vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec3<f32> = u_xlat16;
  let x_694 : vec3<f32> = vs_INTERP1;
  let x_696 : vec4<f32> = u_xlat3;
  let x_698 : vec3<f32> = ((vec3<f32>(x_692.z, x_692.z, x_692.z) * x_694) + vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_703 : vec4<f32> = u_xlat3;
  u_xlat12.x = dot(vec3<f32>(x_701.x, x_701.y, x_701.z), vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_708 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_708);
  let x_711 : vec3<f32> = u_xlat12;
  let x_713 : vec4<f32> = u_xlat3;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.x, x_711.x) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  u_xlat3.w = 1.0f;
  let x_721 : vec4<f32> = x_161.unity_SHAr;
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_721, x_722);
  let x_727 : vec4<f32> = x_161.unity_SHAg;
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_727, x_728);
  let x_733 : vec4<f32> = x_161.unity_SHAb;
  let x_734 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_733, x_734);
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_738.y, x_738.z, x_738.z, x_738.x) * vec4<f32>(x_740.x, x_740.y, x_740.z, x_740.z));
  let x_746 : vec4<f32> = x_161.unity_SHBr;
  let x_747 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_746, x_747);
  let x_752 : vec4<f32> = x_161.unity_SHBg;
  let x_753 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_752, x_753);
  let x_757 : vec4<f32> = x_161.unity_SHBb;
  let x_758 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_757, x_758);
  let x_762 : f32 = u_xlat3.y;
  let x_764 : f32 = u_xlat3.y;
  u_xlat12.x = (x_762 * x_764);
  let x_768 : f32 = u_xlat3.x;
  let x_770 : f32 = u_xlat3.x;
  let x_773 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_768 * x_770) + -(x_773));
  let x_779 : vec4<f32> = x_161.unity_SHC;
  let x_781 : vec3<f32> = u_xlat12;
  let x_784 : vec4<f32> = u_xlat8;
  u_xlat16 = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(x_781.x, x_781.x, x_781.x)) + vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec3<f32> = u_xlat16;
  let x_788 : vec4<f32> = u_xlat6;
  u_xlat16 = (x_787 + vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_791, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_796 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_797 : vec2<f32> = vec2<f32>(x_796.x, x_796.y);
  let x_801 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_797.x, x_797.y));
  let x_802 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_801.x, x_801.y, x_802.z);
  let x_804 : vec3<f32> = u_xlat12;
  let x_806 : vec4<f32> = hlslcc_FragCoord;
  let x_808 : vec2<f32> = (vec2<f32>(x_804.x, x_804.y) * vec2<f32>(x_806.x, x_806.y));
  let x_809 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_812 : f32 = u_xlat6.y;
  let x_815 : f32 = x_90.x_ScaleBiasRt.x;
  let x_818 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat12.x = ((x_812 * x_815) + x_818);
  let x_822 : f32 = u_xlat12.x;
  u_xlat6.z = (-(x_822) + 1.0f);
  let x_827 : f32 = u_xlat5.x;
  u_xlat5.x = x_827;
  let x_830 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_830, 0.0f, 1.0f);
  let x_833 : f32 = u_xlat33;
  u_xlat33 = x_833;
  let x_834 : f32 = u_xlat33;
  u_xlat33 = clamp(x_834, 0.0f, 1.0f);
  let x_836 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_836 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_841 : f32 = u_xlat5.x;
  u_xlat12.x = (-(x_841) + 1.0f);
  let x_846 : f32 = u_xlat12.x;
  let x_848 : f32 = u_xlat12.x;
  u_xlat23.x = (x_846 * x_848);
  let x_852 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_852, 0.0078125f);
  let x_857 : f32 = u_xlat23.x;
  let x_859 : f32 = u_xlat23.x;
  u_xlat35 = (x_857 * x_859);
  let x_863 : f32 = u_xlat5.x;
  u_xlat36 = (x_863 + 0.040000021f);
  let x_866 : f32 = u_xlat36;
  u_xlat36 = min(x_866, 1.0f);
  let x_870 : f32 = u_xlat23.x;
  u_xlat37 = ((x_870 * 4.0f) + 2.0f);
  let x_879 : vec4<f32> = u_xlat6;
  let x_882 : f32 = x_90.x_GlobalMipBias.x;
  let x_883 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_879.x, x_879.z), x_882);
  u_xlat5.x = x_883.x;
  let x_887 : f32 = u_xlat5.x;
  u_xlat6.x = (x_887 + -1.0f);
  let x_892 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_894 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_892 * x_894) + 1.0f);
  let x_899 : f32 = u_xlat5.x;
  let x_901 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_899, x_901);
  let x_906 : vec4<f32> = vs_INTERP9;
  let x_907 : vec2<f32> = vec2<f32>(x_906.x, x_906.y);
  let x_909 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_907.x, x_907.y, x_909);
  let x_917 : vec3<f32> = txVec1;
  let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_917.xy, x_917.z);
  u_xlat17.x = x_919;
  let x_922 : f32 = u_xlat17.x;
  let x_924 : f32 = x_272.x_MainLightShadowParams.x;
  let x_926 : f32 = u_xlat34;
  u_xlat34 = ((x_922 * x_924) + x_926);
  let x_930 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_930);
  let x_934 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_934 >= 1.0f);
  let x_936 : bool = u_xlatb28;
  let x_937 : bool = u_xlatb17;
  u_xlatb17 = (x_936 | x_937);
  let x_939 : bool = u_xlatb17;
  let x_940 : f32 = u_xlat34;
  u_xlat34 = select(x_940, 1.0f, x_939);
  let x_942 : vec3<f32> = vs_INTERP0;
  let x_944 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_942 + -(x_944));
  let x_947 : vec3<f32> = u_xlat17;
  let x_948 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_947, x_948);
  let x_952 : f32 = u_xlat17.x;
  let x_954 : f32 = x_272.x_MainLightShadowParams.z;
  let x_957 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_952 * x_954) + x_957);
  let x_961 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_961, 0.0f, 1.0f);
  let x_965 : f32 = u_xlat34;
  u_xlat28 = (-(x_965) + 1.0f);
  let x_969 : f32 = u_xlat17.x;
  let x_970 : f32 = u_xlat28;
  let x_972 : f32 = u_xlat34;
  u_xlat34 = ((x_969 * x_970) + x_972);
  let x_974 : vec4<f32> = u_xlat6;
  let x_977 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_974.x, x_974.x, x_974.x) * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec3<f32> = u_xlat2;
  let x_982 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_980), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_987 : f32 = u_xlat7.x;
  let x_989 : f32 = u_xlat7.x;
  u_xlat7.x = (x_987 + x_989);
  let x_992 : vec4<f32> = u_xlat3;
  let x_994 : vec4<f32> = u_xlat7;
  let x_998 : vec3<f32> = u_xlat2;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_992.x, x_992.y, x_992.z) * -(vec3<f32>(x_994.x, x_994.x, x_994.x))) + -(x_998));
  let x_1001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1004 : vec4<f32> = u_xlat3;
  let x_1006 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), x_1006);
  let x_1008 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1008, 0.0f, 1.0f);
  let x_1010 : f32 = u_xlat40;
  u_xlat40 = (-(x_1010) + 1.0f);
  let x_1013 : f32 = u_xlat40;
  let x_1014 : f32 = u_xlat40;
  u_xlat40 = (x_1013 * x_1014);
  let x_1016 : f32 = u_xlat40;
  let x_1017 : f32 = u_xlat40;
  u_xlat40 = (x_1016 * x_1017);
  let x_1020 : f32 = u_xlat12.x;
  u_xlat8.x = ((-(x_1020) * 0.699999988f) + 1.700000048f);
  let x_1028 : f32 = u_xlat12.x;
  let x_1030 : f32 = u_xlat8.x;
  u_xlat12.x = (x_1028 * x_1030);
  let x_1034 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1034 * 6.0f);
  let x_1046 : vec4<f32> = u_xlat7;
  let x_1049 : f32 = u_xlat12.x;
  let x_1050 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1046.x, x_1046.y, x_1046.z), x_1049);
  u_xlat8 = x_1050;
  let x_1052 : f32 = u_xlat8.w;
  u_xlat12.x = (x_1052 + -1.0f);
  let x_1056 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1058 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_1056 * x_1058) + 1.0f);
  let x_1063 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_1063, 0.0f);
  let x_1067 : f32 = u_xlat12.x;
  u_xlat12.x = log2(x_1067);
  let x_1071 : f32 = u_xlat12.x;
  let x_1073 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat12.x = (x_1071 * x_1073);
  let x_1077 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1077);
  let x_1081 : f32 = u_xlat12.x;
  let x_1083 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat12.x = (x_1081 * x_1083);
  let x_1086 : vec4<f32> = u_xlat8;
  let x_1088 : vec3<f32> = u_xlat12;
  let x_1090 : vec3<f32> = (vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * vec3<f32>(x_1088.x, x_1088.x, x_1088.x));
  let x_1091 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec2<f32> = u_xlat23;
  let x_1095 : vec2<f32> = u_xlat23;
  let x_1099 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.x) * vec2<f32>(x_1095.x, x_1095.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1100 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1099.x, x_1099.y, x_1100.z);
  let x_1103 : f32 = u_xlat12.y;
  u_xlat23.x = (1.0f / x_1103);
  let x_1106 : f32 = u_xlat36;
  u_xlat36 = (x_1106 + -0.039999999f);
  let x_1109 : f32 = u_xlat40;
  let x_1110 : f32 = u_xlat36;
  u_xlat36 = ((x_1109 * x_1110) + 0.039999999f);
  let x_1115 : f32 = u_xlat23.x;
  let x_1116 : f32 = u_xlat36;
  u_xlat23.x = (x_1115 * x_1116);
  let x_1119 : vec2<f32> = u_xlat23;
  let x_1121 : vec4<f32> = u_xlat7;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.x, x_1119.x) * vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1126 : vec3<f32> = u_xlat16;
  let x_1127 : vec3<f32> = u_xlat4;
  let x_1129 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1126 * x_1127) + vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : f32 = u_xlat34;
  let x_1134 : f32 = x_161.unity_LightData.z;
  u_xlat23.x = (x_1132 * x_1134);
  let x_1137 : vec4<f32> = u_xlat3;
  let x_1140 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1137.x, x_1137.y, x_1137.z), vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1143 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1143, 0.0f, 1.0f);
  let x_1145 : f32 = u_xlat34;
  let x_1147 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1145 * x_1147);
  let x_1150 : vec2<f32> = u_xlat23;
  let x_1152 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1150.x, x_1150.x, x_1150.x) * x_1152);
  let x_1154 : vec3<f32> = u_xlat2;
  let x_1156 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1158 : vec3<f32> = (x_1154 + vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec4<f32> = u_xlat7;
  let x_1163 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1161.x, x_1161.y, x_1161.z), vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1168 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1168, 1.17549435e-37f);
  let x_1173 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_1173);
  let x_1176 : vec2<f32> = u_xlat23;
  let x_1178 : vec4<f32> = u_xlat7;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.x, x_1176.x) * vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1183 : vec4<f32> = u_xlat3;
  let x_1185 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1183.x, x_1183.y, x_1183.z), vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
  let x_1190 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1190, 0.0f, 1.0f);
  let x_1194 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1196 : vec4<f32> = u_xlat7;
  u_xlat23.y = dot(vec3<f32>(x_1194.x, x_1194.y, x_1194.z), vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1201 : f32 = u_xlat23.y;
  u_xlat23.y = clamp(x_1201, 0.0f, 1.0f);
  let x_1204 : vec2<f32> = u_xlat23;
  let x_1205 : vec2<f32> = u_xlat23;
  u_xlat23 = (x_1204 * x_1205);
  let x_1208 : f32 = u_xlat23.x;
  let x_1210 : f32 = u_xlat12.x;
  u_xlat23.x = ((x_1208 * x_1210) + 1.000010014f);
  let x_1216 : f32 = u_xlat23.x;
  let x_1218 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1216 * x_1218);
  let x_1222 : f32 = u_xlat23.y;
  u_xlat34 = max(x_1222, 0.100000001f);
  let x_1225 : f32 = u_xlat34;
  let x_1227 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1225 * x_1227);
  let x_1230 : f32 = u_xlat37;
  let x_1232 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1230 * x_1232);
  let x_1235 : f32 = u_xlat35;
  let x_1237 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1235 / x_1237);
  let x_1240 : vec2<f32> = u_xlat23;
  let x_1244 : vec3<f32> = u_xlat4;
  let x_1245 : vec3<f32> = ((vec3<f32>(x_1240.x, x_1240.x, x_1240.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1244);
  let x_1246 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec3<f32> = u_xlat17;
  let x_1249 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1248 * vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1254 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1256 : f32 = x_161.unity_LightData.y;
  u_xlat23.x = min(x_1254, x_1256);
  let x_1260 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_1260));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1272 : u32 = u_xlatu_loop_1;
    let x_1273 : u32 = u_xlatu23;
    if ((x_1272 < x_1273)) {
    } else {
      break;
    }
    let x_1276 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1276 >> 2u);
    let x_1279 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1279 & 3u));
    let x_1282 : u32 = u_xlatu36;
    let x_1285 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1282)];
    let x_1295 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1300 : vec4<u32> = indexable[x_1295];
    u_xlat36 = dot(x_1285, bitcast<vec4<f32>>(x_1300));
    let x_1304 : f32 = u_xlat36;
    u_xlati36 = i32(x_1304);
    let x_1306 : vec3<f32> = vs_INTERP0;
    let x_1318 : i32 = u_xlati36;
    let x_1320 : vec4<f32> = x_1317.x_AdditionalLightsPosition[x_1318];
    let x_1323 : i32 = u_xlati36;
    let x_1325 : vec4<f32> = x_1317.x_AdditionalLightsPosition[x_1323];
    let x_1327 : vec3<f32> = ((-(x_1306) * vec3<f32>(x_1320.w, x_1320.w, x_1320.w)) + vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
    let x_1328 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
    let x_1330 : vec4<f32> = u_xlat8;
    let x_1332 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1330.x, x_1330.y, x_1330.z), vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
    let x_1335 : f32 = u_xlat40;
    u_xlat40 = max(x_1335, 6.10351562e-05f);
    let x_1339 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1339);
    let x_1342 : f32 = u_xlat41;
    let x_1344 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1342, x_1342, x_1342) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
    let x_1348 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1348);
    let x_1350 : f32 = u_xlat40;
    let x_1351 : i32 = u_xlati36;
    let x_1353 : f32 = x_1317.x_AdditionalLightsAttenuation[x_1351].x;
    u_xlat40 = (x_1350 * x_1353);
    let x_1355 : f32 = u_xlat40;
    let x_1357 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1355) * x_1357) + 1.0f);
    let x_1360 : f32 = u_xlat40;
    u_xlat40 = max(x_1360, 0.0f);
    let x_1362 : f32 = u_xlat40;
    let x_1363 : f32 = u_xlat40;
    u_xlat40 = (x_1362 * x_1363);
    let x_1365 : f32 = u_xlat40;
    let x_1366 : f32 = u_xlat42;
    u_xlat40 = (x_1365 * x_1366);
    let x_1368 : i32 = u_xlati36;
    let x_1370 : vec4<f32> = x_1317.x_AdditionalLightsSpotDir[x_1368];
    let x_1372 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1370.x, x_1370.y, x_1370.z), x_1372);
    let x_1374 : f32 = u_xlat42;
    let x_1375 : i32 = u_xlati36;
    let x_1377 : f32 = x_1317.x_AdditionalLightsAttenuation[x_1375].z;
    let x_1379 : i32 = u_xlati36;
    let x_1381 : f32 = x_1317.x_AdditionalLightsAttenuation[x_1379].w;
    u_xlat42 = ((x_1374 * x_1377) + x_1381);
    let x_1383 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1383, 0.0f, 1.0f);
    let x_1385 : f32 = u_xlat42;
    let x_1386 : f32 = u_xlat42;
    u_xlat42 = (x_1385 * x_1386);
    let x_1388 : f32 = u_xlat40;
    let x_1389 : f32 = u_xlat42;
    u_xlat40 = (x_1388 * x_1389);
    let x_1392 : vec4<f32> = u_xlat6;
    let x_1394 : i32 = u_xlati36;
    let x_1396 : vec4<f32> = x_1317.x_AdditionalLightsColor[x_1394];
    u_xlat10 = (vec3<f32>(x_1392.x, x_1392.x, x_1392.x) * vec3<f32>(x_1396.x, x_1396.y, x_1396.z));
    let x_1399 : vec4<f32> = u_xlat3;
    let x_1401 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1399.x, x_1399.y, x_1399.z), x_1401);
    let x_1403 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1403, 0.0f, 1.0f);
    let x_1405 : f32 = u_xlat36;
    let x_1406 : f32 = u_xlat40;
    u_xlat36 = (x_1405 * x_1406);
    let x_1408 : f32 = u_xlat36;
    let x_1410 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1408, x_1408, x_1408) * x_1410);
    let x_1412 : vec4<f32> = u_xlat8;
    let x_1414 : f32 = u_xlat41;
    let x_1417 : vec3<f32> = u_xlat2;
    let x_1418 : vec3<f32> = ((vec3<f32>(x_1412.x, x_1412.y, x_1412.z) * vec3<f32>(x_1414, x_1414, x_1414)) + x_1417);
    let x_1419 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
    let x_1421 : vec4<f32> = u_xlat8;
    let x_1423 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1421.x, x_1421.y, x_1421.z), vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
    let x_1426 : f32 = u_xlat36;
    u_xlat36 = max(x_1426, 1.17549435e-37f);
    let x_1428 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1428);
    let x_1430 : f32 = u_xlat36;
    let x_1432 : vec4<f32> = u_xlat8;
    let x_1434 : vec3<f32> = (vec3<f32>(x_1430, x_1430, x_1430) * vec3<f32>(x_1432.x, x_1432.y, x_1432.z));
    let x_1435 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
    let x_1437 : vec4<f32> = u_xlat3;
    let x_1439 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1437.x, x_1437.y, x_1437.z), vec3<f32>(x_1439.x, x_1439.y, x_1439.z));
    let x_1442 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1442, 0.0f, 1.0f);
    let x_1444 : vec3<f32> = u_xlat9;
    let x_1445 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1444, vec3<f32>(x_1445.x, x_1445.y, x_1445.z));
    let x_1448 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1448, 0.0f, 1.0f);
    let x_1450 : f32 = u_xlat36;
    let x_1451 : f32 = u_xlat36;
    u_xlat36 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat36;
    let x_1455 : f32 = u_xlat12.x;
    u_xlat36 = ((x_1453 * x_1455) + 1.000010014f);
    let x_1458 : f32 = u_xlat40;
    let x_1459 : f32 = u_xlat40;
    u_xlat40 = (x_1458 * x_1459);
    let x_1461 : f32 = u_xlat36;
    let x_1462 : f32 = u_xlat36;
    u_xlat36 = (x_1461 * x_1462);
    let x_1464 : f32 = u_xlat40;
    u_xlat40 = max(x_1464, 0.100000001f);
    let x_1466 : f32 = u_xlat36;
    let x_1467 : f32 = u_xlat40;
    u_xlat36 = (x_1466 * x_1467);
    let x_1469 : f32 = u_xlat37;
    let x_1470 : f32 = u_xlat36;
    u_xlat36 = (x_1469 * x_1470);
    let x_1472 : f32 = u_xlat35;
    let x_1473 : f32 = u_xlat36;
    u_xlat36 = (x_1472 / x_1473);
    let x_1475 : f32 = u_xlat36;
    let x_1478 : vec3<f32> = u_xlat4;
    let x_1479 : vec3<f32> = ((vec3<f32>(x_1475, x_1475, x_1475) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1478);
    let x_1480 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
    let x_1482 : vec4<f32> = u_xlat8;
    let x_1484 : vec3<f32> = u_xlat10;
    let x_1486 : vec4<f32> = u_xlat7;
    let x_1488 : vec3<f32> = ((vec3<f32>(x_1482.x, x_1482.y, x_1482.z) * x_1484) + vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
    let x_1489 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);

    continuing {
      let x_1491 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1491 + bitcast<u32>(1i));
    }
  }
  let x_1493 : vec3<f32> = u_xlat16;
  let x_1494 : vec4<f32> = u_xlat5;
  let x_1497 : vec3<f32> = u_xlat17;
  u_xlat12 = ((x_1493 * vec3<f32>(x_1494.x, x_1494.x, x_1494.x)) + x_1497);
  let x_1499 : vec4<f32> = u_xlat7;
  let x_1501 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_1499.x, x_1499.y, x_1499.z) + x_1501);
  let x_1505 : vec4<f32> = vs_INTERP4;
  let x_1507 : vec3<f32> = u_xlat0;
  let x_1509 : vec3<f32> = u_xlat12;
  let x_1510 : vec3<f32> = ((vec3<f32>(x_1505.w, x_1505.w, x_1505.w) * x_1507) + x_1509);
  let x_1511 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1510.x, x_1510.y, x_1510.z, x_1511.w);
  let x_1513 : bool = u_xlatb1;
  let x_1514 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1514, x_1513);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0);
}

