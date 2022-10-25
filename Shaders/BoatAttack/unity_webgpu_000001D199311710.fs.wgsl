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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
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

@group(1) @binding(1) var<uniform> x_1318 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

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
  var x_522 : f32;
  var u_xlatb12 : vec2<bool>;
  var x_553 : f32;
  var u_xlat23 : vec2<f32>;
  var u_xlatb1 : bool;
  var x_603 : f32;
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
  var u_xlatu0 : u32;
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
  let x_404 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_400) * vec3<f32>(x_404.x, x_404.y, x_404.x));
  let x_410 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_410);
  let x_414 : u32 = u_xlatu1.z;
  u_xlatu23 = (x_414 * 1025u);
  let x_418 : u32 = u_xlatu23;
  u_xlatu3 = (x_418 >> 6u);
  let x_422 : u32 = u_xlatu23;
  let x_423 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_422 ^ x_423));
  let x_426 : i32 = u_xlati23;
  u_xlatu23 = (bitcast<u32>(x_426) * 9u);
  let x_430 : u32 = u_xlatu23;
  u_xlatu3 = (x_430 >> 11u);
  let x_433 : u32 = u_xlatu23;
  let x_434 : u32 = u_xlatu3;
  u_xlati23 = bitcast<i32>((x_433 ^ x_434));
  let x_437 : i32 = u_xlati23;
  u_xlati23 = (x_437 * 32769i);
  let x_441 : i32 = u_xlati23;
  let x_444 : u32 = u_xlatu1.y;
  u_xlati12 = bitcast<i32>((bitcast<u32>(x_441) ^ x_444));
  let x_448 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_448) * 1025u);
  let x_451 : u32 = u_xlatu12;
  u_xlatu23 = (x_451 >> 6u);
  let x_453 : u32 = u_xlatu23;
  let x_454 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_453 ^ x_454));
  let x_457 : i32 = u_xlati12;
  u_xlatu12 = (bitcast<u32>(x_457) * 9u);
  let x_460 : u32 = u_xlatu12;
  u_xlatu23 = (x_460 >> 11u);
  let x_462 : u32 = u_xlatu23;
  let x_463 : u32 = u_xlatu12;
  u_xlati12 = bitcast<i32>((x_462 ^ x_463));
  let x_466 : i32 = u_xlati12;
  u_xlati12 = (x_466 * 32769i);
  let x_469 : i32 = u_xlati12;
  let x_472 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_469) ^ x_472));
  let x_475 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_475) * 1025u);
  let x_480 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_480 >> 6u);
  let x_482 : u32 = u_xlatu12;
  let x_484 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_482 ^ x_484));
  let x_487 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_487) * 9u);
  let x_492 : u32 = u_xlatu1.x;
  u_xlatu12 = (x_492 >> 11u);
  let x_494 : u32 = u_xlatu12;
  let x_496 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_494 ^ x_496));
  let x_499 : i32 = u_xlati1;
  u_xlati1 = (x_499 * 32769i);
  param = 1065353216i;
  let x_505 : i32 = u_xlati1;
  param_1 = x_505;
  param_2 = 0i;
  param_3 = 23i;
  let x_508 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_508);
  let x_512 : f32 = u_xlat1.x;
  u_xlat1.x = (x_512 + -1.0f);
  let x_517 : f32 = u_xlat1.x;
  u_xlat12.x = (-(x_517) + 1.0f);
  let x_521 : bool = u_xlatb35;
  if (x_521) {
    let x_526 : f32 = u_xlat1.x;
    x_522 = x_526;
  } else {
    let x_529 : f32 = u_xlat12.x;
    x_522 = x_529;
  }
  let x_530 : f32 = x_522;
  u_xlat1.x = x_530;
  let x_532 : f32 = u_xlat33;
  let x_535 : f32 = u_xlat1.x;
  u_xlat33 = ((x_532 * 2.0f) + -(x_535));
  let x_538 : f32 = u_xlat33;
  let x_540 : f32 = u_xlat3.w;
  u_xlat1.x = (x_538 * x_540);
  let x_547 : f32 = u_xlat1.x;
  u_xlatb12.x = (x_547 >= 0.400000006f);
  let x_552 : bool = u_xlatb12.x;
  if (x_552) {
    let x_557 : f32 = u_xlat1.x;
    x_553 = x_557;
  } else {
    x_553 = 0.0f;
  }
  let x_559 : f32 = x_553;
  u_xlat12.x = x_559;
  let x_562 : f32 = u_xlat3.w;
  let x_563 : f32 = u_xlat33;
  u_xlat33 = ((x_562 * x_563) + -0.400000006f);
  let x_570 : f32 = u_xlat1.x;
  u_xlat23.x = dpdxCoarse(x_570);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = dpdyCoarse(x_574);
  let x_578 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat23.x;
  u_xlat1.x = (abs(x_578) + abs(x_581));
  let x_586 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_586, 0.0001f);
  let x_590 : f32 = u_xlat33;
  let x_592 : f32 = u_xlat1.x;
  u_xlat33 = (x_590 / x_592);
  let x_594 : f32 = u_xlat33;
  u_xlat33 = (x_594 + 0.5f);
  let x_596 : f32 = u_xlat33;
  u_xlat33 = clamp(x_596, 0.0f, 1.0f);
  let x_600 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb1 = !((x_600 == 0.0f));
  let x_602 : bool = u_xlatb1;
  if (x_602) {
    let x_606 : f32 = u_xlat33;
    x_603 = x_606;
  } else {
    let x_609 : f32 = u_xlat12.x;
    x_603 = x_609;
  }
  let x_610 : f32 = x_603;
  u_xlat33 = x_610;
  let x_611 : f32 = u_xlat33;
  u_xlat12.x = (x_611 + -0.0001f);
  let x_616 : f32 = u_xlat12.x;
  u_xlatb12.x = (x_616 < 0.0f);
  let x_620 : bool = u_xlatb12.x;
  if (((select(0i, 1i, x_620) * -1i) != 0i)) {
    discard;
  }
  let x_630 : f32 = vs_INTERP2.w;
  u_xlatb12.x = (0.0f < x_630);
  let x_634 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb12.y = (x_634 >= 0.0f);
  let x_638 : bool = u_xlatb12.x;
  u_xlat12.x = select(-1.0f, 1.0f, x_638);
  let x_642 : bool = u_xlatb12.y;
  u_xlat12.y = select(-1.0f, 1.0f, x_642);
  let x_646 : f32 = u_xlat12.y;
  let x_648 : f32 = u_xlat12.x;
  u_xlat12.x = (x_646 * x_648);
  let x_651 : vec3<f32> = vs_INTERP1;
  let x_653 : vec4<f32> = vs_INTERP2;
  let x_655 : vec3<f32> = (vec3<f32>(x_651.z, x_651.x, x_651.y) * vec3<f32>(x_653.y, x_653.z, x_653.x));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec3<f32> = vs_INTERP1;
  let x_660 : vec4<f32> = vs_INTERP2;
  let x_663 : vec4<f32> = u_xlat3;
  let x_666 : vec3<f32> = ((vec3<f32>(x_658.y, x_658.z, x_658.x) * vec3<f32>(x_660.z, x_660.x, x_660.y)) + -(vec3<f32>(x_663.x, x_663.y, x_663.z)));
  let x_667 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec3<f32> = u_xlat12;
  let x_671 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.x, x_669.x) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : vec3<f32> = u_xlat16;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678.y, x_678.y, x_678.y));
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec3<f32> = u_xlat16;
  let x_685 : vec4<f32> = vs_INTERP2;
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.x, x_683.x) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec3<f32> = u_xlat16;
  let x_695 : vec3<f32> = vs_INTERP1;
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec3<f32> = ((vec3<f32>(x_693.z, x_693.z, x_693.z) * x_695) + vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat3;
  let x_704 : vec4<f32> = u_xlat3;
  u_xlat12.x = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_709 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_709);
  let x_712 : vec3<f32> = u_xlat12;
  let x_714 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = (vec3<f32>(x_712.x, x_712.x, x_712.x) * vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  u_xlat3.w = 1.0f;
  let x_722 : vec4<f32> = x_161.unity_SHAr;
  let x_723 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_722, x_723);
  let x_728 : vec4<f32> = x_161.unity_SHAg;
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_728, x_729);
  let x_734 : vec4<f32> = x_161.unity_SHAb;
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_734, x_735);
  let x_739 : vec4<f32> = u_xlat3;
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_739.y, x_739.z, x_739.z, x_739.x) * vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.z));
  let x_747 : vec4<f32> = x_161.unity_SHBr;
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_747, x_748);
  let x_753 : vec4<f32> = x_161.unity_SHBg;
  let x_754 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_753, x_754);
  let x_758 : vec4<f32> = x_161.unity_SHBb;
  let x_759 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_758, x_759);
  let x_763 : f32 = u_xlat3.y;
  let x_765 : f32 = u_xlat3.y;
  u_xlat12.x = (x_763 * x_765);
  let x_769 : f32 = u_xlat3.x;
  let x_771 : f32 = u_xlat3.x;
  let x_774 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_769 * x_771) + -(x_774));
  let x_780 : vec4<f32> = x_161.unity_SHC;
  let x_782 : vec3<f32> = u_xlat12;
  let x_785 : vec4<f32> = u_xlat8;
  u_xlat16 = ((vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(x_782.x, x_782.x, x_782.x)) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec3<f32> = u_xlat16;
  let x_789 : vec4<f32> = u_xlat6;
  u_xlat16 = (x_788 + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : vec3<f32> = u_xlat16;
  u_xlat16 = max(x_792, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_797 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_798 : vec2<f32> = vec2<f32>(x_797.x, x_797.y);
  let x_802 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_798.x, x_798.y));
  let x_803 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_802.x, x_802.y, x_803.z);
  let x_805 : vec3<f32> = u_xlat12;
  let x_807 : vec4<f32> = hlslcc_FragCoord;
  let x_809 : vec2<f32> = (vec2<f32>(x_805.x, x_805.y) * vec2<f32>(x_807.x, x_807.y));
  let x_810 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
  let x_813 : f32 = u_xlat6.y;
  let x_816 : f32 = x_90.x_ScaleBiasRt.x;
  let x_819 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat12.x = ((x_813 * x_816) + x_819);
  let x_823 : f32 = u_xlat12.x;
  u_xlat6.z = (-(x_823) + 1.0f);
  let x_828 : f32 = u_xlat5.x;
  u_xlat5.x = x_828;
  let x_831 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_831, 0.0f, 1.0f);
  let x_834 : f32 = u_xlat33;
  u_xlat33 = x_834;
  let x_835 : f32 = u_xlat33;
  u_xlat33 = clamp(x_835, 0.0f, 1.0f);
  let x_837 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_837 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_842 : f32 = u_xlat5.x;
  u_xlat12.x = (-(x_842) + 1.0f);
  let x_847 : f32 = u_xlat12.x;
  let x_849 : f32 = u_xlat12.x;
  u_xlat23.x = (x_847 * x_849);
  let x_853 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_853, 0.0078125f);
  let x_858 : f32 = u_xlat23.x;
  let x_860 : f32 = u_xlat23.x;
  u_xlat35 = (x_858 * x_860);
  let x_864 : f32 = u_xlat5.x;
  u_xlat36 = (x_864 + 0.040000021f);
  let x_867 : f32 = u_xlat36;
  u_xlat36 = min(x_867, 1.0f);
  let x_871 : f32 = u_xlat23.x;
  u_xlat37 = ((x_871 * 4.0f) + 2.0f);
  let x_880 : vec4<f32> = u_xlat6;
  let x_883 : f32 = x_90.x_GlobalMipBias.x;
  let x_884 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_880.x, x_880.z), x_883);
  u_xlat5.x = x_884.x;
  let x_888 : f32 = u_xlat5.x;
  u_xlat6.x = (x_888 + -1.0f);
  let x_893 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_895 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_893 * x_895) + 1.0f);
  let x_900 : f32 = u_xlat5.x;
  let x_902 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_900, x_902);
  let x_907 : vec4<f32> = vs_INTERP9;
  let x_908 : vec2<f32> = vec2<f32>(x_907.x, x_907.y);
  let x_910 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_908.x, x_908.y, x_910);
  let x_918 : vec3<f32> = txVec1;
  let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_918.xy, x_918.z);
  u_xlat17.x = x_920;
  let x_923 : f32 = u_xlat17.x;
  let x_925 : f32 = x_272.x_MainLightShadowParams.x;
  let x_927 : f32 = u_xlat34;
  u_xlat34 = ((x_923 * x_925) + x_927);
  let x_931 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_931);
  let x_935 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_935 >= 1.0f);
  let x_937 : bool = u_xlatb28;
  let x_938 : bool = u_xlatb17;
  u_xlatb17 = (x_937 | x_938);
  let x_940 : bool = u_xlatb17;
  let x_941 : f32 = u_xlat34;
  u_xlat34 = select(x_941, 1.0f, x_940);
  let x_943 : vec3<f32> = vs_INTERP0;
  let x_945 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_943 + -(x_945));
  let x_948 : vec3<f32> = u_xlat17;
  let x_949 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_948, x_949);
  let x_953 : f32 = u_xlat17.x;
  let x_955 : f32 = x_272.x_MainLightShadowParams.z;
  let x_958 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_953 * x_955) + x_958);
  let x_962 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_962, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat34;
  u_xlat28 = (-(x_966) + 1.0f);
  let x_970 : f32 = u_xlat17.x;
  let x_971 : f32 = u_xlat28;
  let x_973 : f32 = u_xlat34;
  u_xlat34 = ((x_970 * x_971) + x_973);
  let x_975 : vec4<f32> = u_xlat6;
  let x_978 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_975.x, x_975.x, x_975.x) * vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec3<f32> = u_xlat2;
  let x_983 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_981), vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_988 : f32 = u_xlat7.x;
  let x_990 : f32 = u_xlat7.x;
  u_xlat7.x = (x_988 + x_990);
  let x_993 : vec4<f32> = u_xlat3;
  let x_995 : vec4<f32> = u_xlat7;
  let x_999 : vec3<f32> = u_xlat2;
  let x_1001 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.y, x_993.z) * -(vec3<f32>(x_995.x, x_995.x, x_995.x))) + -(x_999));
  let x_1002 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1005 : vec4<f32> = u_xlat3;
  let x_1007 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), x_1007);
  let x_1009 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1009, 0.0f, 1.0f);
  let x_1011 : f32 = u_xlat40;
  u_xlat40 = (-(x_1011) + 1.0f);
  let x_1014 : f32 = u_xlat40;
  let x_1015 : f32 = u_xlat40;
  u_xlat40 = (x_1014 * x_1015);
  let x_1017 : f32 = u_xlat40;
  let x_1018 : f32 = u_xlat40;
  u_xlat40 = (x_1017 * x_1018);
  let x_1021 : f32 = u_xlat12.x;
  u_xlat8.x = ((-(x_1021) * 0.699999988f) + 1.700000048f);
  let x_1029 : f32 = u_xlat12.x;
  let x_1031 : f32 = u_xlat8.x;
  u_xlat12.x = (x_1029 * x_1031);
  let x_1035 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1035 * 6.0f);
  let x_1047 : vec4<f32> = u_xlat7;
  let x_1050 : f32 = u_xlat12.x;
  let x_1051 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1047.x, x_1047.y, x_1047.z), x_1050);
  u_xlat8 = x_1051;
  let x_1053 : f32 = u_xlat8.w;
  u_xlat12.x = (x_1053 + -1.0f);
  let x_1057 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1059 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_1057 * x_1059) + 1.0f);
  let x_1064 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_1064, 0.0f);
  let x_1068 : f32 = u_xlat12.x;
  u_xlat12.x = log2(x_1068);
  let x_1072 : f32 = u_xlat12.x;
  let x_1074 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat12.x = (x_1072 * x_1074);
  let x_1078 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1078);
  let x_1082 : f32 = u_xlat12.x;
  let x_1084 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat12.x = (x_1082 * x_1084);
  let x_1087 : vec4<f32> = u_xlat8;
  let x_1089 : vec3<f32> = u_xlat12;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(x_1089.x, x_1089.x, x_1089.x));
  let x_1092 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : vec2<f32> = u_xlat23;
  let x_1096 : vec2<f32> = u_xlat23;
  let x_1100 : vec2<f32> = ((vec2<f32>(x_1094.x, x_1094.x) * vec2<f32>(x_1096.x, x_1096.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1101 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1100.x, x_1100.y, x_1101.z);
  let x_1104 : f32 = u_xlat12.y;
  u_xlat23.x = (1.0f / x_1104);
  let x_1107 : f32 = u_xlat36;
  u_xlat36 = (x_1107 + -0.039999999f);
  let x_1110 : f32 = u_xlat40;
  let x_1111 : f32 = u_xlat36;
  u_xlat36 = ((x_1110 * x_1111) + 0.039999999f);
  let x_1116 : f32 = u_xlat23.x;
  let x_1117 : f32 = u_xlat36;
  u_xlat23.x = (x_1116 * x_1117);
  let x_1120 : vec2<f32> = u_xlat23;
  let x_1122 : vec4<f32> = u_xlat7;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.x, x_1120.x) * vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec3<f32> = u_xlat16;
  let x_1128 : vec3<f32> = u_xlat4;
  let x_1130 : vec4<f32> = u_xlat7;
  u_xlat16 = ((x_1127 * x_1128) + vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : f32 = u_xlat34;
  let x_1135 : f32 = x_161.unity_LightData.z;
  u_xlat23.x = (x_1133 * x_1135);
  let x_1138 : vec4<f32> = u_xlat3;
  let x_1141 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1144, 0.0f, 1.0f);
  let x_1146 : f32 = u_xlat34;
  let x_1148 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1146 * x_1148);
  let x_1151 : vec2<f32> = u_xlat23;
  let x_1153 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1151.x, x_1151.x, x_1151.x) * x_1153);
  let x_1155 : vec3<f32> = u_xlat2;
  let x_1157 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1159 : vec3<f32> = (x_1155 + vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1162 : vec4<f32> = u_xlat7;
  let x_1164 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1162.x, x_1162.y, x_1162.z), vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1169 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1169, 1.17549435e-37f);
  let x_1174 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_1174);
  let x_1177 : vec2<f32> = u_xlat23;
  let x_1179 : vec4<f32> = u_xlat7;
  let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.x, x_1177.x) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec4<f32> = u_xlat3;
  let x_1186 : vec4<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1191 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1191, 0.0f, 1.0f);
  let x_1195 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1197 : vec4<f32> = u_xlat7;
  u_xlat23.y = dot(vec3<f32>(x_1195.x, x_1195.y, x_1195.z), vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1202 : f32 = u_xlat23.y;
  u_xlat23.y = clamp(x_1202, 0.0f, 1.0f);
  let x_1205 : vec2<f32> = u_xlat23;
  let x_1206 : vec2<f32> = u_xlat23;
  u_xlat23 = (x_1205 * x_1206);
  let x_1209 : f32 = u_xlat23.x;
  let x_1211 : f32 = u_xlat12.x;
  u_xlat23.x = ((x_1209 * x_1211) + 1.000010014f);
  let x_1217 : f32 = u_xlat23.x;
  let x_1219 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1217 * x_1219);
  let x_1223 : f32 = u_xlat23.y;
  u_xlat34 = max(x_1223, 0.100000001f);
  let x_1226 : f32 = u_xlat34;
  let x_1228 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1226 * x_1228);
  let x_1231 : f32 = u_xlat37;
  let x_1233 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1231 * x_1233);
  let x_1236 : f32 = u_xlat35;
  let x_1238 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1236 / x_1238);
  let x_1241 : vec2<f32> = u_xlat23;
  let x_1245 : vec3<f32> = u_xlat4;
  let x_1246 : vec3<f32> = ((vec3<f32>(x_1241.x, x_1241.x, x_1241.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1245);
  let x_1247 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1249 : vec3<f32> = u_xlat17;
  let x_1250 : vec4<f32> = u_xlat7;
  u_xlat17 = (x_1249 * vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1255 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1257 : f32 = x_161.unity_LightData.y;
  u_xlat23.x = min(x_1255, x_1257);
  let x_1261 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_1261));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1273 : u32 = u_xlatu_loop_1;
    let x_1274 : u32 = u_xlatu23;
    if ((x_1273 < x_1274)) {
    } else {
      break;
    }
    let x_1277 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1277 >> 2u);
    let x_1280 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1280 & 3u));
    let x_1283 : u32 = u_xlatu36;
    let x_1286 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1283)];
    let x_1296 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1301 : vec4<u32> = indexable[x_1296];
    u_xlat36 = dot(x_1286, bitcast<vec4<f32>>(x_1301));
    let x_1305 : f32 = u_xlat36;
    u_xlati36 = i32(x_1305);
    let x_1307 : vec3<f32> = vs_INTERP0;
    let x_1319 : i32 = u_xlati36;
    let x_1321 : vec4<f32> = x_1318.x_AdditionalLightsPosition[x_1319];
    let x_1324 : i32 = u_xlati36;
    let x_1326 : vec4<f32> = x_1318.x_AdditionalLightsPosition[x_1324];
    let x_1328 : vec3<f32> = ((-(x_1307) * vec3<f32>(x_1321.w, x_1321.w, x_1321.w)) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
    let x_1331 : vec4<f32> = u_xlat8;
    let x_1333 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1331.x, x_1331.y, x_1331.z), vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
    let x_1336 : f32 = u_xlat40;
    u_xlat40 = max(x_1336, 6.10351562e-05f);
    let x_1340 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1340);
    let x_1343 : f32 = u_xlat41;
    let x_1345 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1343, x_1343, x_1343) * vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
    let x_1349 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1349);
    let x_1351 : f32 = u_xlat40;
    let x_1352 : i32 = u_xlati36;
    let x_1354 : f32 = x_1318.x_AdditionalLightsAttenuation[x_1352].x;
    u_xlat40 = (x_1351 * x_1354);
    let x_1356 : f32 = u_xlat40;
    let x_1358 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1356) * x_1358) + 1.0f);
    let x_1361 : f32 = u_xlat40;
    u_xlat40 = max(x_1361, 0.0f);
    let x_1363 : f32 = u_xlat40;
    let x_1364 : f32 = u_xlat40;
    u_xlat40 = (x_1363 * x_1364);
    let x_1366 : f32 = u_xlat40;
    let x_1367 : f32 = u_xlat42;
    u_xlat40 = (x_1366 * x_1367);
    let x_1369 : i32 = u_xlati36;
    let x_1371 : vec4<f32> = x_1318.x_AdditionalLightsSpotDir[x_1369];
    let x_1373 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1371.x, x_1371.y, x_1371.z), x_1373);
    let x_1375 : f32 = u_xlat42;
    let x_1376 : i32 = u_xlati36;
    let x_1378 : f32 = x_1318.x_AdditionalLightsAttenuation[x_1376].z;
    let x_1380 : i32 = u_xlati36;
    let x_1382 : f32 = x_1318.x_AdditionalLightsAttenuation[x_1380].w;
    u_xlat42 = ((x_1375 * x_1378) + x_1382);
    let x_1384 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1384, 0.0f, 1.0f);
    let x_1386 : f32 = u_xlat42;
    let x_1387 : f32 = u_xlat42;
    u_xlat42 = (x_1386 * x_1387);
    let x_1389 : f32 = u_xlat40;
    let x_1390 : f32 = u_xlat42;
    u_xlat40 = (x_1389 * x_1390);
    let x_1393 : vec4<f32> = u_xlat6;
    let x_1395 : i32 = u_xlati36;
    let x_1397 : vec4<f32> = x_1318.x_AdditionalLightsColor[x_1395];
    u_xlat10 = (vec3<f32>(x_1393.x, x_1393.x, x_1393.x) * vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
    let x_1400 : vec4<f32> = u_xlat3;
    let x_1402 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1400.x, x_1400.y, x_1400.z), x_1402);
    let x_1404 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1404, 0.0f, 1.0f);
    let x_1406 : f32 = u_xlat36;
    let x_1407 : f32 = u_xlat40;
    u_xlat36 = (x_1406 * x_1407);
    let x_1409 : f32 = u_xlat36;
    let x_1411 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1409, x_1409, x_1409) * x_1411);
    let x_1413 : vec4<f32> = u_xlat8;
    let x_1415 : f32 = u_xlat41;
    let x_1418 : vec3<f32> = u_xlat2;
    let x_1419 : vec3<f32> = ((vec3<f32>(x_1413.x, x_1413.y, x_1413.z) * vec3<f32>(x_1415, x_1415, x_1415)) + x_1418);
    let x_1420 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
    let x_1422 : vec4<f32> = u_xlat8;
    let x_1424 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1422.x, x_1422.y, x_1422.z), vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
    let x_1427 : f32 = u_xlat36;
    u_xlat36 = max(x_1427, 1.17549435e-37f);
    let x_1429 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1429);
    let x_1431 : f32 = u_xlat36;
    let x_1433 : vec4<f32> = u_xlat8;
    let x_1435 : vec3<f32> = (vec3<f32>(x_1431, x_1431, x_1431) * vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
    let x_1436 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
    let x_1438 : vec4<f32> = u_xlat3;
    let x_1440 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1438.x, x_1438.y, x_1438.z), vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
    let x_1443 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1443, 0.0f, 1.0f);
    let x_1445 : vec3<f32> = u_xlat9;
    let x_1446 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1445, vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
    let x_1449 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1449, 0.0f, 1.0f);
    let x_1451 : f32 = u_xlat36;
    let x_1452 : f32 = u_xlat36;
    u_xlat36 = (x_1451 * x_1452);
    let x_1454 : f32 = u_xlat36;
    let x_1456 : f32 = u_xlat12.x;
    u_xlat36 = ((x_1454 * x_1456) + 1.000010014f);
    let x_1459 : f32 = u_xlat40;
    let x_1460 : f32 = u_xlat40;
    u_xlat40 = (x_1459 * x_1460);
    let x_1462 : f32 = u_xlat36;
    let x_1463 : f32 = u_xlat36;
    u_xlat36 = (x_1462 * x_1463);
    let x_1465 : f32 = u_xlat40;
    u_xlat40 = max(x_1465, 0.100000001f);
    let x_1467 : f32 = u_xlat36;
    let x_1468 : f32 = u_xlat40;
    u_xlat36 = (x_1467 * x_1468);
    let x_1470 : f32 = u_xlat37;
    let x_1471 : f32 = u_xlat36;
    u_xlat36 = (x_1470 * x_1471);
    let x_1473 : f32 = u_xlat35;
    let x_1474 : f32 = u_xlat36;
    u_xlat36 = (x_1473 / x_1474);
    let x_1476 : f32 = u_xlat36;
    let x_1479 : vec3<f32> = u_xlat4;
    let x_1480 : vec3<f32> = ((vec3<f32>(x_1476, x_1476, x_1476) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1479);
    let x_1481 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
    let x_1483 : vec4<f32> = u_xlat8;
    let x_1485 : vec3<f32> = u_xlat10;
    let x_1487 : vec4<f32> = u_xlat7;
    let x_1489 : vec3<f32> = ((vec3<f32>(x_1483.x, x_1483.y, x_1483.z) * x_1485) + vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
    let x_1490 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1490.w);

    continuing {
      let x_1492 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1492 + bitcast<u32>(1i));
    }
  }
  let x_1494 : vec3<f32> = u_xlat16;
  let x_1495 : vec4<f32> = u_xlat5;
  let x_1498 : vec3<f32> = u_xlat17;
  u_xlat12 = ((x_1494 * vec3<f32>(x_1495.x, x_1495.x, x_1495.x)) + x_1498);
  let x_1500 : vec4<f32> = u_xlat7;
  let x_1502 : vec3<f32> = u_xlat12;
  u_xlat12 = (vec3<f32>(x_1500.x, x_1500.y, x_1500.z) + x_1502);
  let x_1506 : vec4<f32> = vs_INTERP4;
  let x_1508 : vec3<f32> = u_xlat0;
  let x_1510 : vec3<f32> = u_xlat12;
  let x_1511 : vec3<f32> = ((vec3<f32>(x_1506.w, x_1506.w, x_1506.w) * x_1508) + x_1510);
  let x_1512 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1511.x, x_1511.y, x_1511.z, x_1512.w);
  let x_1514 : bool = u_xlatb1;
  let x_1515 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1515, x_1514);
  let x_1523 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_1525 : f32 = x_161.unity_RenderingLayer.x;
  u_xlatu0 = (x_1523 & bitcast<u32>(x_1525));
  let x_1528 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1528);
  let x_1533 : f32 = u_xlat0.x;
  let x_1535 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1533 * x_1535);
  let x_1539 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1539, 0.0f, 1.0f);
  let x_1542 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1542.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

