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

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_272 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1235 : AdditionalLights;

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
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
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
  let x_726 : vec2<f32> = vs_INTERP5;
  let x_728 : f32 = x_90.x_GlobalMipBias.x;
  let x_729 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_726, x_728);
  u_xlat16 = vec3<f32>(x_729.x, x_729.y, x_729.z);
  let x_733 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_734 : vec2<f32> = vec2<f32>(x_733.x, x_733.y);
  let x_738 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_734.x, x_734.y));
  let x_739 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_738.x, x_738.y, x_739.z);
  let x_741 : vec3<f32> = u_xlat12;
  let x_743 : vec4<f32> = hlslcc_FragCoord;
  let x_745 : vec2<f32> = (vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_743.x, x_743.y));
  let x_746 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
  let x_749 : f32 = u_xlat6.y;
  let x_752 : f32 = x_90.x_ScaleBiasRt.x;
  let x_755 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat12.x = ((x_749 * x_752) + x_755);
  let x_759 : f32 = u_xlat12.x;
  u_xlat6.z = (-(x_759) + 1.0f);
  let x_764 : f32 = u_xlat5.x;
  u_xlat5.x = x_764;
  let x_767 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_767, 0.0f, 1.0f);
  let x_770 : f32 = u_xlat33;
  u_xlat33 = x_770;
  let x_771 : f32 = u_xlat33;
  u_xlat33 = clamp(x_771, 0.0f, 1.0f);
  let x_773 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_773 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_778 : f32 = u_xlat5.x;
  u_xlat12.x = (-(x_778) + 1.0f);
  let x_783 : f32 = u_xlat12.x;
  let x_785 : f32 = u_xlat12.x;
  u_xlat23.x = (x_783 * x_785);
  let x_789 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_789, 0.0078125f);
  let x_794 : f32 = u_xlat23.x;
  let x_796 : f32 = u_xlat23.x;
  u_xlat35 = (x_794 * x_796);
  let x_800 : f32 = u_xlat5.x;
  u_xlat36 = (x_800 + 0.040000021f);
  let x_803 : f32 = u_xlat36;
  u_xlat36 = min(x_803, 1.0f);
  let x_807 : f32 = u_xlat23.x;
  u_xlat37 = ((x_807 * 4.0f) + 2.0f);
  let x_816 : vec4<f32> = u_xlat6;
  let x_819 : f32 = x_90.x_GlobalMipBias.x;
  let x_820 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_816.x, x_816.z), x_819);
  u_xlat5.x = x_820.x;
  let x_824 : f32 = u_xlat5.x;
  u_xlat6.x = (x_824 + -1.0f);
  let x_829 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_831 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_829 * x_831) + 1.0f);
  let x_836 : f32 = u_xlat5.x;
  let x_838 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_836, x_838);
  let x_843 : vec4<f32> = vs_INTERP9;
  let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
  let x_846 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_844.x, x_844.y, x_846);
  let x_854 : vec3<f32> = txVec1;
  let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_854.xy, x_854.z);
  u_xlat17.x = x_856;
  let x_859 : f32 = u_xlat17.x;
  let x_861 : f32 = x_272.x_MainLightShadowParams.x;
  let x_863 : f32 = u_xlat34;
  u_xlat34 = ((x_859 * x_861) + x_863);
  let x_867 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_867);
  let x_871 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_871 >= 1.0f);
  let x_873 : bool = u_xlatb28;
  let x_874 : bool = u_xlatb17;
  u_xlatb17 = (x_873 | x_874);
  let x_876 : bool = u_xlatb17;
  let x_877 : f32 = u_xlat34;
  u_xlat34 = select(x_877, 1.0f, x_876);
  let x_879 : vec3<f32> = vs_INTERP0;
  let x_881 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_879 + -(x_881));
  let x_884 : vec3<f32> = u_xlat17;
  let x_885 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_884, x_885);
  let x_889 : f32 = u_xlat17.x;
  let x_891 : f32 = x_272.x_MainLightShadowParams.z;
  let x_894 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_889 * x_891) + x_894);
  let x_898 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_898, 0.0f, 1.0f);
  let x_902 : f32 = u_xlat34;
  u_xlat28 = (-(x_902) + 1.0f);
  let x_906 : f32 = u_xlat17.x;
  let x_907 : f32 = u_xlat28;
  let x_909 : f32 = u_xlat34;
  u_xlat34 = ((x_906 * x_907) + x_909);
  let x_911 : vec4<f32> = u_xlat6;
  let x_914 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_911.x, x_911.x, x_911.x) * vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_918 : vec3<f32> = u_xlat2;
  let x_920 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_918), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_925 : f32 = u_xlat7.x;
  let x_927 : f32 = u_xlat7.x;
  u_xlat7.x = (x_925 + x_927);
  let x_930 : vec4<f32> = u_xlat3;
  let x_932 : vec3<f32> = u_xlat7;
  let x_936 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_930.x, x_930.y, x_930.z) * -(vec3<f32>(x_932.x, x_932.x, x_932.x))) + -(x_936));
  let x_940 : vec4<f32> = u_xlat3;
  let x_942 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_940.x, x_940.y, x_940.z), x_942);
  let x_944 : f32 = u_xlat40;
  u_xlat40 = clamp(x_944, 0.0f, 1.0f);
  let x_946 : f32 = u_xlat40;
  u_xlat40 = (-(x_946) + 1.0f);
  let x_949 : f32 = u_xlat40;
  let x_950 : f32 = u_xlat40;
  u_xlat40 = (x_949 * x_950);
  let x_952 : f32 = u_xlat40;
  let x_953 : f32 = u_xlat40;
  u_xlat40 = (x_952 * x_953);
  let x_957 : f32 = u_xlat12.x;
  u_xlat8.x = ((-(x_957) * 0.699999988f) + 1.700000048f);
  let x_965 : f32 = u_xlat12.x;
  let x_967 : f32 = u_xlat8.x;
  u_xlat12.x = (x_965 * x_967);
  let x_971 : f32 = u_xlat12.x;
  u_xlat12.x = (x_971 * 6.0f);
  let x_983 : vec3<f32> = u_xlat7;
  let x_985 : f32 = u_xlat12.x;
  let x_986 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_983, x_985);
  u_xlat8 = x_986;
  let x_988 : f32 = u_xlat8.w;
  u_xlat12.x = (x_988 + -1.0f);
  let x_992 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_994 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_992 * x_994) + 1.0f);
  let x_999 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_999, 0.0f);
  let x_1003 : f32 = u_xlat12.x;
  u_xlat12.x = log2(x_1003);
  let x_1007 : f32 = u_xlat12.x;
  let x_1009 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat12.x = (x_1007 * x_1009);
  let x_1013 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1013);
  let x_1017 : f32 = u_xlat12.x;
  let x_1019 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat12.x = (x_1017 * x_1019);
  let x_1022 : vec4<f32> = u_xlat8;
  let x_1024 : vec3<f32> = u_xlat12;
  u_xlat7 = (vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * vec3<f32>(x_1024.x, x_1024.x, x_1024.x));
  let x_1027 : vec2<f32> = u_xlat23;
  let x_1029 : vec2<f32> = u_xlat23;
  let x_1033 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.x) * vec2<f32>(x_1029.x, x_1029.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1034 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1033.x, x_1033.y, x_1034.z);
  let x_1037 : f32 = u_xlat12.y;
  u_xlat23.x = (1.0f / x_1037);
  let x_1040 : f32 = u_xlat36;
  u_xlat36 = (x_1040 + -0.039999999f);
  let x_1043 : f32 = u_xlat40;
  let x_1044 : f32 = u_xlat36;
  u_xlat36 = ((x_1043 * x_1044) + 0.039999999f);
  let x_1049 : f32 = u_xlat23.x;
  let x_1050 : f32 = u_xlat36;
  u_xlat23.x = (x_1049 * x_1050);
  let x_1053 : vec2<f32> = u_xlat23;
  let x_1055 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1053.x, x_1053.x, x_1053.x) * x_1055);
  let x_1057 : vec3<f32> = u_xlat16;
  let x_1058 : vec3<f32> = u_xlat4;
  let x_1060 : vec3<f32> = u_xlat7;
  u_xlat16 = ((x_1057 * x_1058) + x_1060);
  let x_1062 : f32 = u_xlat34;
  let x_1064 : f32 = x_161.unity_LightData.z;
  u_xlat23.x = (x_1062 * x_1064);
  let x_1067 : vec4<f32> = u_xlat3;
  let x_1070 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1067.x, x_1067.y, x_1067.z), vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
  let x_1073 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1073, 0.0f, 1.0f);
  let x_1075 : f32 = u_xlat34;
  let x_1077 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1075 * x_1077);
  let x_1080 : vec2<f32> = u_xlat23;
  let x_1082 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1080.x, x_1080.x, x_1080.x) * x_1082);
  let x_1084 : vec3<f32> = u_xlat2;
  let x_1086 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat7 = (x_1084 + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec3<f32> = u_xlat7;
  let x_1090 : vec3<f32> = u_xlat7;
  u_xlat23.x = dot(x_1089, x_1090);
  let x_1094 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1094, 1.17549435e-37f);
  let x_1099 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_1099);
  let x_1102 : vec2<f32> = u_xlat23;
  let x_1104 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1102.x, x_1102.x, x_1102.x) * x_1104);
  let x_1106 : vec4<f32> = u_xlat3;
  let x_1108 : vec3<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), x_1108);
  let x_1112 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1112, 0.0f, 1.0f);
  let x_1116 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1118 : vec3<f32> = u_xlat7;
  u_xlat23.y = dot(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), x_1118);
  let x_1122 : f32 = u_xlat23.y;
  u_xlat23.y = clamp(x_1122, 0.0f, 1.0f);
  let x_1125 : vec2<f32> = u_xlat23;
  let x_1126 : vec2<f32> = u_xlat23;
  u_xlat23 = (x_1125 * x_1126);
  let x_1129 : f32 = u_xlat23.x;
  let x_1131 : f32 = u_xlat12.x;
  u_xlat23.x = ((x_1129 * x_1131) + 1.000010014f);
  let x_1137 : f32 = u_xlat23.x;
  let x_1139 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1137 * x_1139);
  let x_1143 : f32 = u_xlat23.y;
  u_xlat34 = max(x_1143, 0.100000001f);
  let x_1146 : f32 = u_xlat34;
  let x_1148 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1146 * x_1148);
  let x_1151 : f32 = u_xlat37;
  let x_1153 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1151 * x_1153);
  let x_1156 : f32 = u_xlat35;
  let x_1158 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1156 / x_1158);
  let x_1161 : vec2<f32> = u_xlat23;
  let x_1165 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1161.x, x_1161.x, x_1161.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1165);
  let x_1167 : vec3<f32> = u_xlat17;
  let x_1168 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1167 * x_1168);
  let x_1172 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1174 : f32 = x_161.unity_LightData.y;
  u_xlat23.x = min(x_1172, x_1174);
  let x_1178 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_1178));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1190 : u32 = u_xlatu_loop_1;
    let x_1191 : u32 = u_xlatu23;
    if ((x_1190 < x_1191)) {
    } else {
      break;
    }
    let x_1194 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1194 >> 2u);
    let x_1197 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1197 & 3u));
    let x_1200 : u32 = u_xlatu36;
    let x_1203 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1200)];
    let x_1213 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1218 : vec4<u32> = indexable[x_1213];
    u_xlat36 = dot(x_1203, bitcast<vec4<f32>>(x_1218));
    let x_1222 : f32 = u_xlat36;
    u_xlati36 = i32(x_1222);
    let x_1224 : vec3<f32> = vs_INTERP0;
    let x_1236 : i32 = u_xlati36;
    let x_1238 : vec4<f32> = x_1235.x_AdditionalLightsPosition[x_1236];
    let x_1241 : i32 = u_xlati36;
    let x_1243 : vec4<f32> = x_1235.x_AdditionalLightsPosition[x_1241];
    let x_1245 : vec3<f32> = ((-(x_1224) * vec3<f32>(x_1238.w, x_1238.w, x_1238.w)) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
    let x_1246 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
    let x_1248 : vec4<f32> = u_xlat8;
    let x_1250 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
    let x_1253 : f32 = u_xlat40;
    u_xlat40 = max(x_1253, 6.10351562e-05f);
    let x_1257 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1257);
    let x_1260 : f32 = u_xlat41;
    let x_1262 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1260, x_1260, x_1260) * vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
    let x_1266 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1266);
    let x_1268 : f32 = u_xlat40;
    let x_1269 : i32 = u_xlati36;
    let x_1271 : f32 = x_1235.x_AdditionalLightsAttenuation[x_1269].x;
    u_xlat40 = (x_1268 * x_1271);
    let x_1273 : f32 = u_xlat40;
    let x_1275 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1273) * x_1275) + 1.0f);
    let x_1278 : f32 = u_xlat40;
    u_xlat40 = max(x_1278, 0.0f);
    let x_1280 : f32 = u_xlat40;
    let x_1281 : f32 = u_xlat40;
    u_xlat40 = (x_1280 * x_1281);
    let x_1283 : f32 = u_xlat40;
    let x_1284 : f32 = u_xlat42;
    u_xlat40 = (x_1283 * x_1284);
    let x_1286 : i32 = u_xlati36;
    let x_1288 : vec4<f32> = x_1235.x_AdditionalLightsSpotDir[x_1286];
    let x_1290 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1288.x, x_1288.y, x_1288.z), x_1290);
    let x_1292 : f32 = u_xlat42;
    let x_1293 : i32 = u_xlati36;
    let x_1295 : f32 = x_1235.x_AdditionalLightsAttenuation[x_1293].z;
    let x_1297 : i32 = u_xlati36;
    let x_1299 : f32 = x_1235.x_AdditionalLightsAttenuation[x_1297].w;
    u_xlat42 = ((x_1292 * x_1295) + x_1299);
    let x_1301 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1301, 0.0f, 1.0f);
    let x_1303 : f32 = u_xlat42;
    let x_1304 : f32 = u_xlat42;
    u_xlat42 = (x_1303 * x_1304);
    let x_1306 : f32 = u_xlat40;
    let x_1307 : f32 = u_xlat42;
    u_xlat40 = (x_1306 * x_1307);
    let x_1310 : vec4<f32> = u_xlat6;
    let x_1312 : i32 = u_xlati36;
    let x_1314 : vec4<f32> = x_1235.x_AdditionalLightsColor[x_1312];
    u_xlat10 = (vec3<f32>(x_1310.x, x_1310.x, x_1310.x) * vec3<f32>(x_1314.x, x_1314.y, x_1314.z));
    let x_1317 : vec4<f32> = u_xlat3;
    let x_1319 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1317.x, x_1317.y, x_1317.z), x_1319);
    let x_1321 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1321, 0.0f, 1.0f);
    let x_1323 : f32 = u_xlat36;
    let x_1324 : f32 = u_xlat40;
    u_xlat36 = (x_1323 * x_1324);
    let x_1326 : f32 = u_xlat36;
    let x_1328 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1326, x_1326, x_1326) * x_1328);
    let x_1330 : vec4<f32> = u_xlat8;
    let x_1332 : f32 = u_xlat41;
    let x_1335 : vec3<f32> = u_xlat2;
    let x_1336 : vec3<f32> = ((vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(x_1332, x_1332, x_1332)) + x_1335);
    let x_1337 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
    let x_1339 : vec4<f32> = u_xlat8;
    let x_1341 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1339.x, x_1339.y, x_1339.z), vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
    let x_1344 : f32 = u_xlat36;
    u_xlat36 = max(x_1344, 1.17549435e-37f);
    let x_1346 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1346);
    let x_1348 : f32 = u_xlat36;
    let x_1350 : vec4<f32> = u_xlat8;
    let x_1352 : vec3<f32> = (vec3<f32>(x_1348, x_1348, x_1348) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
    let x_1353 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
    let x_1355 : vec4<f32> = u_xlat3;
    let x_1357 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1355.x, x_1355.y, x_1355.z), vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
    let x_1360 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1360, 0.0f, 1.0f);
    let x_1362 : vec3<f32> = u_xlat9;
    let x_1363 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1362, vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
    let x_1366 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1366, 0.0f, 1.0f);
    let x_1368 : f32 = u_xlat36;
    let x_1369 : f32 = u_xlat36;
    u_xlat36 = (x_1368 * x_1369);
    let x_1371 : f32 = u_xlat36;
    let x_1373 : f32 = u_xlat12.x;
    u_xlat36 = ((x_1371 * x_1373) + 1.000010014f);
    let x_1376 : f32 = u_xlat40;
    let x_1377 : f32 = u_xlat40;
    u_xlat40 = (x_1376 * x_1377);
    let x_1379 : f32 = u_xlat36;
    let x_1380 : f32 = u_xlat36;
    u_xlat36 = (x_1379 * x_1380);
    let x_1382 : f32 = u_xlat40;
    u_xlat40 = max(x_1382, 0.100000001f);
    let x_1384 : f32 = u_xlat36;
    let x_1385 : f32 = u_xlat40;
    u_xlat36 = (x_1384 * x_1385);
    let x_1387 : f32 = u_xlat37;
    let x_1388 : f32 = u_xlat36;
    u_xlat36 = (x_1387 * x_1388);
    let x_1390 : f32 = u_xlat35;
    let x_1391 : f32 = u_xlat36;
    u_xlat36 = (x_1390 / x_1391);
    let x_1393 : f32 = u_xlat36;
    let x_1396 : vec3<f32> = u_xlat4;
    let x_1397 : vec3<f32> = ((vec3<f32>(x_1393, x_1393, x_1393) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1396);
    let x_1398 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1397.x, x_1397.y, x_1397.z, x_1398.w);
    let x_1400 : vec4<f32> = u_xlat8;
    let x_1402 : vec3<f32> = u_xlat10;
    let x_1404 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1400.x, x_1400.y, x_1400.z) * x_1402) + x_1404);

    continuing {
      let x_1406 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1406 + bitcast<u32>(1i));
    }
  }
  let x_1408 : vec3<f32> = u_xlat16;
  let x_1409 : vec4<f32> = u_xlat5;
  let x_1412 : vec3<f32> = u_xlat17;
  u_xlat12 = ((x_1408 * vec3<f32>(x_1409.x, x_1409.x, x_1409.x)) + x_1412);
  let x_1414 : vec3<f32> = u_xlat7;
  let x_1415 : vec3<f32> = u_xlat12;
  u_xlat12 = (x_1414 + x_1415);
  let x_1419 : vec4<f32> = vs_INTERP4;
  let x_1421 : vec3<f32> = u_xlat0;
  let x_1423 : vec3<f32> = u_xlat12;
  let x_1424 : vec3<f32> = ((vec3<f32>(x_1419.w, x_1419.w, x_1419.w) * x_1421) + x_1423);
  let x_1425 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1427 : bool = u_xlatb1;
  let x_1428 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1428, x_1427);
  let x_1436 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_1438 : f32 = x_161.unity_RenderingLayer.x;
  u_xlatu0 = (x_1436 & bitcast<u32>(x_1438));
  let x_1441 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1441);
  let x_1446 : f32 = u_xlat0.x;
  let x_1448 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1446 * x_1448);
  let x_1452 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1452, 0.0f, 1.0f);
  let x_1456 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1456.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>, @location(6) vs_INTERP9_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP9 = vs_INTERP9_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

