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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_272 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP9 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1271 : AdditionalLights;

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
  let x_725 : vec2<f32> = vs_INTERP5;
  let x_727 : f32 = x_90.x_GlobalMipBias.x;
  let x_728 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_725, x_727);
  u_xlat6 = x_728;
  let x_733 : vec2<f32> = vs_INTERP5;
  let x_735 : f32 = x_90.x_GlobalMipBias.x;
  let x_736 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_733, x_735);
  u_xlat16 = vec3<f32>(x_736.x, x_736.y, x_736.z);
  let x_738 : vec4<f32> = u_xlat6;
  let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_743 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat3;
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat12.x = dot(vec3<f32>(x_745.x, x_745.y, x_745.z), vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_752 : f32 = u_xlat12.x;
  u_xlat12.x = (x_752 + 0.5f);
  let x_755 : vec3<f32> = u_xlat12;
  let x_757 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_755.x, x_755.x, x_755.x) * x_757);
  let x_760 : f32 = u_xlat6.w;
  u_xlat12.x = max(x_760, 0.0001f);
  let x_763 : vec3<f32> = u_xlat16;
  let x_764 : vec3<f32> = u_xlat12;
  u_xlat16 = (x_763 / vec3<f32>(x_764.x, x_764.x, x_764.x));
  let x_769 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_770 : vec2<f32> = vec2<f32>(x_769.x, x_769.y);
  let x_774 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_770.x, x_770.y));
  let x_775 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_774.x, x_774.y, x_775.z);
  let x_777 : vec3<f32> = u_xlat12;
  let x_779 : vec4<f32> = hlslcc_FragCoord;
  let x_781 : vec2<f32> = (vec2<f32>(x_777.x, x_777.y) * vec2<f32>(x_779.x, x_779.y));
  let x_782 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_785 : f32 = u_xlat6.y;
  let x_788 : f32 = x_90.x_ScaleBiasRt.x;
  let x_791 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat12.x = ((x_785 * x_788) + x_791);
  let x_795 : f32 = u_xlat12.x;
  u_xlat6.z = (-(x_795) + 1.0f);
  let x_800 : f32 = u_xlat5.x;
  u_xlat5.x = x_800;
  let x_803 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_803, 0.0f, 1.0f);
  let x_806 : f32 = u_xlat33;
  u_xlat33 = x_806;
  let x_807 : f32 = u_xlat33;
  u_xlat33 = clamp(x_807, 0.0f, 1.0f);
  let x_809 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_809 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_814 : f32 = u_xlat5.x;
  u_xlat12.x = (-(x_814) + 1.0f);
  let x_819 : f32 = u_xlat12.x;
  let x_821 : f32 = u_xlat12.x;
  u_xlat23.x = (x_819 * x_821);
  let x_825 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_825, 0.0078125f);
  let x_830 : f32 = u_xlat23.x;
  let x_832 : f32 = u_xlat23.x;
  u_xlat35 = (x_830 * x_832);
  let x_836 : f32 = u_xlat5.x;
  u_xlat36 = (x_836 + 0.040000021f);
  let x_839 : f32 = u_xlat36;
  u_xlat36 = min(x_839, 1.0f);
  let x_843 : f32 = u_xlat23.x;
  u_xlat37 = ((x_843 * 4.0f) + 2.0f);
  let x_852 : vec4<f32> = u_xlat6;
  let x_855 : f32 = x_90.x_GlobalMipBias.x;
  let x_856 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_852.x, x_852.z), x_855);
  u_xlat5.x = x_856.x;
  let x_860 : f32 = u_xlat5.x;
  u_xlat6.x = (x_860 + -1.0f);
  let x_865 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_867 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_865 * x_867) + 1.0f);
  let x_872 : f32 = u_xlat5.x;
  let x_874 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_872, x_874);
  let x_879 : vec4<f32> = vs_INTERP9;
  let x_880 : vec2<f32> = vec2<f32>(x_879.x, x_879.y);
  let x_882 : f32 = vs_INTERP9.z;
  txVec1 = vec3<f32>(x_880.x, x_880.y, x_882);
  let x_890 : vec3<f32> = txVec1;
  let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
  u_xlat17.x = x_892;
  let x_895 : f32 = u_xlat17.x;
  let x_897 : f32 = x_272.x_MainLightShadowParams.x;
  let x_899 : f32 = u_xlat34;
  u_xlat34 = ((x_895 * x_897) + x_899);
  let x_903 : f32 = vs_INTERP9.z;
  u_xlatb17 = (0.0f >= x_903);
  let x_907 : f32 = vs_INTERP9.z;
  u_xlatb28 = (x_907 >= 1.0f);
  let x_909 : bool = u_xlatb28;
  let x_910 : bool = u_xlatb17;
  u_xlatb17 = (x_909 | x_910);
  let x_912 : bool = u_xlatb17;
  let x_913 : f32 = u_xlat34;
  u_xlat34 = select(x_913, 1.0f, x_912);
  let x_915 : vec3<f32> = vs_INTERP0;
  let x_917 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat17 = (x_915 + -(x_917));
  let x_920 : vec3<f32> = u_xlat17;
  let x_921 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_920, x_921);
  let x_925 : f32 = u_xlat17.x;
  let x_927 : f32 = x_272.x_MainLightShadowParams.z;
  let x_930 : f32 = x_272.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_925 * x_927) + x_930);
  let x_934 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_934, 0.0f, 1.0f);
  let x_938 : f32 = u_xlat34;
  u_xlat28 = (-(x_938) + 1.0f);
  let x_942 : f32 = u_xlat17.x;
  let x_943 : f32 = u_xlat28;
  let x_945 : f32 = u_xlat34;
  u_xlat34 = ((x_942 * x_943) + x_945);
  let x_947 : vec4<f32> = u_xlat6;
  let x_950 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_947.x, x_947.x, x_947.x) * vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_954 : vec3<f32> = u_xlat2;
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_954), vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_961 : f32 = u_xlat7.x;
  let x_963 : f32 = u_xlat7.x;
  u_xlat7.x = (x_961 + x_963);
  let x_966 : vec4<f32> = u_xlat3;
  let x_968 : vec3<f32> = u_xlat7;
  let x_972 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_966.x, x_966.y, x_966.z) * -(vec3<f32>(x_968.x, x_968.x, x_968.x))) + -(x_972));
  let x_976 : vec4<f32> = u_xlat3;
  let x_978 : vec3<f32> = u_xlat2;
  u_xlat40 = dot(vec3<f32>(x_976.x, x_976.y, x_976.z), x_978);
  let x_980 : f32 = u_xlat40;
  u_xlat40 = clamp(x_980, 0.0f, 1.0f);
  let x_982 : f32 = u_xlat40;
  u_xlat40 = (-(x_982) + 1.0f);
  let x_985 : f32 = u_xlat40;
  let x_986 : f32 = u_xlat40;
  u_xlat40 = (x_985 * x_986);
  let x_988 : f32 = u_xlat40;
  let x_989 : f32 = u_xlat40;
  u_xlat40 = (x_988 * x_989);
  let x_993 : f32 = u_xlat12.x;
  u_xlat8.x = ((-(x_993) * 0.699999988f) + 1.700000048f);
  let x_1001 : f32 = u_xlat12.x;
  let x_1003 : f32 = u_xlat8.x;
  u_xlat12.x = (x_1001 * x_1003);
  let x_1007 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1007 * 6.0f);
  let x_1019 : vec3<f32> = u_xlat7;
  let x_1021 : f32 = u_xlat12.x;
  let x_1022 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1019, x_1021);
  u_xlat8 = x_1022;
  let x_1024 : f32 = u_xlat8.w;
  u_xlat12.x = (x_1024 + -1.0f);
  let x_1028 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1030 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_1028 * x_1030) + 1.0f);
  let x_1035 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_1035, 0.0f);
  let x_1039 : f32 = u_xlat12.x;
  u_xlat12.x = log2(x_1039);
  let x_1043 : f32 = u_xlat12.x;
  let x_1045 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat12.x = (x_1043 * x_1045);
  let x_1049 : f32 = u_xlat12.x;
  u_xlat12.x = exp2(x_1049);
  let x_1053 : f32 = u_xlat12.x;
  let x_1055 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat12.x = (x_1053 * x_1055);
  let x_1058 : vec4<f32> = u_xlat8;
  let x_1060 : vec3<f32> = u_xlat12;
  u_xlat7 = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * vec3<f32>(x_1060.x, x_1060.x, x_1060.x));
  let x_1063 : vec2<f32> = u_xlat23;
  let x_1065 : vec2<f32> = u_xlat23;
  let x_1069 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.x) * vec2<f32>(x_1065.x, x_1065.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1070 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1069.x, x_1069.y, x_1070.z);
  let x_1073 : f32 = u_xlat12.y;
  u_xlat23.x = (1.0f / x_1073);
  let x_1076 : f32 = u_xlat36;
  u_xlat36 = (x_1076 + -0.039999999f);
  let x_1079 : f32 = u_xlat40;
  let x_1080 : f32 = u_xlat36;
  u_xlat36 = ((x_1079 * x_1080) + 0.039999999f);
  let x_1085 : f32 = u_xlat23.x;
  let x_1086 : f32 = u_xlat36;
  u_xlat23.x = (x_1085 * x_1086);
  let x_1089 : vec2<f32> = u_xlat23;
  let x_1091 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1089.x, x_1089.x, x_1089.x) * x_1091);
  let x_1093 : vec3<f32> = u_xlat16;
  let x_1094 : vec3<f32> = u_xlat4;
  let x_1096 : vec3<f32> = u_xlat7;
  u_xlat16 = ((x_1093 * x_1094) + x_1096);
  let x_1098 : f32 = u_xlat34;
  let x_1100 : f32 = x_161.unity_LightData.z;
  u_xlat23.x = (x_1098 * x_1100);
  let x_1103 : vec4<f32> = u_xlat3;
  let x_1106 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_1103.x, x_1103.y, x_1103.z), vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1109, 0.0f, 1.0f);
  let x_1111 : f32 = u_xlat34;
  let x_1113 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1111 * x_1113);
  let x_1116 : vec2<f32> = u_xlat23;
  let x_1118 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1116.x, x_1116.x, x_1116.x) * x_1118);
  let x_1120 : vec3<f32> = u_xlat2;
  let x_1122 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat7 = (x_1120 + vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : vec3<f32> = u_xlat7;
  let x_1126 : vec3<f32> = u_xlat7;
  u_xlat23.x = dot(x_1125, x_1126);
  let x_1130 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_1130, 1.17549435e-37f);
  let x_1135 : f32 = u_xlat23.x;
  u_xlat23.x = inverseSqrt(x_1135);
  let x_1138 : vec2<f32> = u_xlat23;
  let x_1140 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1138.x, x_1138.x, x_1138.x) * x_1140);
  let x_1142 : vec4<f32> = u_xlat3;
  let x_1144 : vec3<f32> = u_xlat7;
  u_xlat23.x = dot(vec3<f32>(x_1142.x, x_1142.y, x_1142.z), x_1144);
  let x_1148 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1148, 0.0f, 1.0f);
  let x_1152 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1154 : vec3<f32> = u_xlat7;
  u_xlat23.y = dot(vec3<f32>(x_1152.x, x_1152.y, x_1152.z), x_1154);
  let x_1158 : f32 = u_xlat23.y;
  u_xlat23.y = clamp(x_1158, 0.0f, 1.0f);
  let x_1161 : vec2<f32> = u_xlat23;
  let x_1162 : vec2<f32> = u_xlat23;
  u_xlat23 = (x_1161 * x_1162);
  let x_1165 : f32 = u_xlat23.x;
  let x_1167 : f32 = u_xlat12.x;
  u_xlat23.x = ((x_1165 * x_1167) + 1.000010014f);
  let x_1173 : f32 = u_xlat23.x;
  let x_1175 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1173 * x_1175);
  let x_1179 : f32 = u_xlat23.y;
  u_xlat34 = max(x_1179, 0.100000001f);
  let x_1182 : f32 = u_xlat34;
  let x_1184 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1182 * x_1184);
  let x_1187 : f32 = u_xlat37;
  let x_1189 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1187 * x_1189);
  let x_1192 : f32 = u_xlat35;
  let x_1194 : f32 = u_xlat23.x;
  u_xlat23.x = (x_1192 / x_1194);
  let x_1197 : vec2<f32> = u_xlat23;
  let x_1201 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1197.x, x_1197.x, x_1197.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1201);
  let x_1203 : vec3<f32> = u_xlat17;
  let x_1204 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1203 * x_1204);
  let x_1208 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1210 : f32 = x_161.unity_LightData.y;
  u_xlat23.x = min(x_1208, x_1210);
  let x_1214 : f32 = u_xlat23.x;
  u_xlatu23 = bitcast<u32>(i32(x_1214));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1226 : u32 = u_xlatu_loop_1;
    let x_1227 : u32 = u_xlatu23;
    if ((x_1226 < x_1227)) {
    } else {
      break;
    }
    let x_1230 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_1230 >> 2u);
    let x_1233 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1233 & 3u));
    let x_1236 : u32 = u_xlatu36;
    let x_1239 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1236)];
    let x_1249 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1254 : vec4<u32> = indexable[x_1249];
    u_xlat36 = dot(x_1239, bitcast<vec4<f32>>(x_1254));
    let x_1258 : f32 = u_xlat36;
    u_xlati36 = i32(x_1258);
    let x_1260 : vec3<f32> = vs_INTERP0;
    let x_1272 : i32 = u_xlati36;
    let x_1274 : vec4<f32> = x_1271.x_AdditionalLightsPosition[x_1272];
    let x_1277 : i32 = u_xlati36;
    let x_1279 : vec4<f32> = x_1271.x_AdditionalLightsPosition[x_1277];
    let x_1281 : vec3<f32> = ((-(x_1260) * vec3<f32>(x_1274.w, x_1274.w, x_1274.w)) + vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
    let x_1282 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
    let x_1284 : vec4<f32> = u_xlat8;
    let x_1286 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1284.x, x_1284.y, x_1284.z), vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
    let x_1289 : f32 = u_xlat40;
    u_xlat40 = max(x_1289, 6.10351562e-05f);
    let x_1293 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1293);
    let x_1296 : f32 = u_xlat41;
    let x_1298 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1296, x_1296, x_1296) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
    let x_1302 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1302);
    let x_1304 : f32 = u_xlat40;
    let x_1305 : i32 = u_xlati36;
    let x_1307 : f32 = x_1271.x_AdditionalLightsAttenuation[x_1305].x;
    u_xlat40 = (x_1304 * x_1307);
    let x_1309 : f32 = u_xlat40;
    let x_1311 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1309) * x_1311) + 1.0f);
    let x_1314 : f32 = u_xlat40;
    u_xlat40 = max(x_1314, 0.0f);
    let x_1316 : f32 = u_xlat40;
    let x_1317 : f32 = u_xlat40;
    u_xlat40 = (x_1316 * x_1317);
    let x_1319 : f32 = u_xlat40;
    let x_1320 : f32 = u_xlat42;
    u_xlat40 = (x_1319 * x_1320);
    let x_1322 : i32 = u_xlati36;
    let x_1324 : vec4<f32> = x_1271.x_AdditionalLightsSpotDir[x_1322];
    let x_1326 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1324.x, x_1324.y, x_1324.z), x_1326);
    let x_1328 : f32 = u_xlat42;
    let x_1329 : i32 = u_xlati36;
    let x_1331 : f32 = x_1271.x_AdditionalLightsAttenuation[x_1329].z;
    let x_1333 : i32 = u_xlati36;
    let x_1335 : f32 = x_1271.x_AdditionalLightsAttenuation[x_1333].w;
    u_xlat42 = ((x_1328 * x_1331) + x_1335);
    let x_1337 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1337, 0.0f, 1.0f);
    let x_1339 : f32 = u_xlat42;
    let x_1340 : f32 = u_xlat42;
    u_xlat42 = (x_1339 * x_1340);
    let x_1342 : f32 = u_xlat40;
    let x_1343 : f32 = u_xlat42;
    u_xlat40 = (x_1342 * x_1343);
    let x_1346 : vec4<f32> = u_xlat6;
    let x_1348 : i32 = u_xlati36;
    let x_1350 : vec4<f32> = x_1271.x_AdditionalLightsColor[x_1348];
    u_xlat10 = (vec3<f32>(x_1346.x, x_1346.x, x_1346.x) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
    let x_1353 : vec4<f32> = u_xlat3;
    let x_1355 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1353.x, x_1353.y, x_1353.z), x_1355);
    let x_1357 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1357, 0.0f, 1.0f);
    let x_1359 : f32 = u_xlat36;
    let x_1360 : f32 = u_xlat40;
    u_xlat36 = (x_1359 * x_1360);
    let x_1362 : f32 = u_xlat36;
    let x_1364 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1362, x_1362, x_1362) * x_1364);
    let x_1366 : vec4<f32> = u_xlat8;
    let x_1368 : f32 = u_xlat41;
    let x_1371 : vec3<f32> = u_xlat2;
    let x_1372 : vec3<f32> = ((vec3<f32>(x_1366.x, x_1366.y, x_1366.z) * vec3<f32>(x_1368, x_1368, x_1368)) + x_1371);
    let x_1373 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1373.w);
    let x_1375 : vec4<f32> = u_xlat8;
    let x_1377 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1375.x, x_1375.y, x_1375.z), vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
    let x_1380 : f32 = u_xlat36;
    u_xlat36 = max(x_1380, 1.17549435e-37f);
    let x_1382 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1382);
    let x_1384 : f32 = u_xlat36;
    let x_1386 : vec4<f32> = u_xlat8;
    let x_1388 : vec3<f32> = (vec3<f32>(x_1384, x_1384, x_1384) * vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
    let x_1389 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
    let x_1391 : vec4<f32> = u_xlat3;
    let x_1393 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1391.x, x_1391.y, x_1391.z), vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
    let x_1396 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1396, 0.0f, 1.0f);
    let x_1398 : vec3<f32> = u_xlat9;
    let x_1399 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1398, vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
    let x_1402 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1402, 0.0f, 1.0f);
    let x_1404 : f32 = u_xlat36;
    let x_1405 : f32 = u_xlat36;
    u_xlat36 = (x_1404 * x_1405);
    let x_1407 : f32 = u_xlat36;
    let x_1409 : f32 = u_xlat12.x;
    u_xlat36 = ((x_1407 * x_1409) + 1.000010014f);
    let x_1412 : f32 = u_xlat40;
    let x_1413 : f32 = u_xlat40;
    u_xlat40 = (x_1412 * x_1413);
    let x_1415 : f32 = u_xlat36;
    let x_1416 : f32 = u_xlat36;
    u_xlat36 = (x_1415 * x_1416);
    let x_1418 : f32 = u_xlat40;
    u_xlat40 = max(x_1418, 0.100000001f);
    let x_1420 : f32 = u_xlat36;
    let x_1421 : f32 = u_xlat40;
    u_xlat36 = (x_1420 * x_1421);
    let x_1423 : f32 = u_xlat37;
    let x_1424 : f32 = u_xlat36;
    u_xlat36 = (x_1423 * x_1424);
    let x_1426 : f32 = u_xlat35;
    let x_1427 : f32 = u_xlat36;
    u_xlat36 = (x_1426 / x_1427);
    let x_1429 : f32 = u_xlat36;
    let x_1432 : vec3<f32> = u_xlat4;
    let x_1433 : vec3<f32> = ((vec3<f32>(x_1429, x_1429, x_1429) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1432);
    let x_1434 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
    let x_1436 : vec4<f32> = u_xlat8;
    let x_1438 : vec3<f32> = u_xlat10;
    let x_1440 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1436.x, x_1436.y, x_1436.z) * x_1438) + x_1440);

    continuing {
      let x_1442 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1442 + bitcast<u32>(1i));
    }
  }
  let x_1444 : vec3<f32> = u_xlat16;
  let x_1445 : vec4<f32> = u_xlat5;
  let x_1448 : vec3<f32> = u_xlat17;
  u_xlat12 = ((x_1444 * vec3<f32>(x_1445.x, x_1445.x, x_1445.x)) + x_1448);
  let x_1450 : vec3<f32> = u_xlat7;
  let x_1451 : vec3<f32> = u_xlat12;
  u_xlat12 = (x_1450 + x_1451);
  let x_1455 : vec4<f32> = vs_INTERP4;
  let x_1457 : vec3<f32> = u_xlat0;
  let x_1459 : vec3<f32> = u_xlat12;
  let x_1460 : vec3<f32> = ((vec3<f32>(x_1455.w, x_1455.w, x_1455.w) * x_1457) + x_1459);
  let x_1461 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1460.x, x_1460.y, x_1460.z, x_1461.w);
  let x_1463 : bool = u_xlatb1;
  let x_1464 : f32 = u_xlat33;
  SV_Target0.w = select(1.0f, x_1464, x_1463);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
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
  return main_out(SV_Target0);
}

