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

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_160 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_279 : UnityPerMaterial;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_381 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1425 : AdditionalLights;

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
  var u_xlatb11 : vec2<bool>;
  var u_xlat11 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat5 : vec3<f32>;
  var x_186 : f32;
  var x_199 : f32;
  var x_211 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb34 : bool;
  var x_610 : f32;
  var u_xlat12 : vec3<f32>;
  var x_652 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlatu13 : vec3<u32>;
  var u_xlatu35 : u32;
  var u_xlatu3 : u32;
  var u_xlati35 : i32;
  var u_xlati24 : i32;
  var u_xlatu24 : u32;
  var u_xlati13 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat24 : f32;
  var x_787 : f32;
  var u_xlatb13 : bool;
  var x_813 : f32;
  var x_860 : f32;
  var u_xlat36 : f32;
  var u_xlat15 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat26 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu15 : u32;
  var u_xlati38 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati15 : i32;
  var u_xlat42 : f32;
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
  let x_86 : f32 = vs_INTERP2.w;
  u_xlatb11.x = (0.0f < x_86);
  let x_99 : f32 = x_95.unity_WorldTransformParams.w;
  u_xlatb11.y = (x_99 >= 0.0f);
  let x_105 : bool = u_xlatb11.x;
  u_xlat11.x = select(-1.0f, 1.0f, x_105);
  let x_110 : bool = u_xlatb11.y;
  u_xlat11.y = select(-1.0f, 1.0f, x_110);
  let x_114 : f32 = u_xlat11.y;
  let x_116 : f32 = u_xlat11.x;
  u_xlat11.x = (x_114 * x_116);
  let x_120 : vec3<f32> = vs_INTERP1;
  let x_122 : vec4<f32> = vs_INTERP2;
  u_xlat1 = (vec3<f32>(x_120.z, x_120.x, x_120.y) * vec3<f32>(x_122.y, x_122.z, x_122.x));
  let x_125 : vec3<f32> = vs_INTERP1;
  let x_127 : vec4<f32> = vs_INTERP2;
  let x_130 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_125.y, x_125.z, x_125.x) * vec3<f32>(x_127.z, x_127.x, x_127.y)) + -(x_130));
  let x_133 : vec3<f32> = u_xlat11;
  let x_135 : vec3<f32> = u_xlat1;
  u_xlat11 = (vec3<f32>(x_133.x, x_133.x, x_133.x) * x_135);
  let x_137 : vec3<f32> = u_xlat0;
  let x_139 : vec3<f32> = vs_INTERP1;
  u_xlat1 = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_142 : vec3<f32> = u_xlat0;
  let x_144 : vec4<f32> = vs_INTERP2;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec3<f32> = u_xlat11;
  let x_151 : vec3<f32> = u_xlat0;
  let x_153 : vec3<f32> = (x_150 * vec3<f32>(x_151.x, x_151.x, x_151.x));
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_163 : f32 = x_160.unity_OrthoParams.w;
  u_xlatb0 = (x_163 == 0.0f);
  let x_167 : vec3<f32> = vs_INTERP0;
  let x_172 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_167) + x_172);
  let x_175 : vec3<f32> = u_xlat4;
  let x_176 : vec3<f32> = u_xlat4;
  u_xlat34 = dot(x_175, x_176);
  let x_178 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_178);
  let x_180 : f32 = u_xlat34;
  let x_182 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_185 : bool = u_xlatb0;
  if (x_185) {
    let x_190 : f32 = u_xlat4.x;
    x_186 = x_190;
  } else {
    let x_195 : f32 = x_160.unity_MatrixV[0i].z;
    x_186 = x_195;
  }
  let x_196 : f32 = x_186;
  u_xlat5.x = x_196;
  let x_198 : bool = u_xlatb0;
  if (x_198) {
    let x_203 : f32 = u_xlat4.y;
    x_199 = x_203;
  } else {
    let x_207 : f32 = x_160.unity_MatrixV[1i].z;
    x_199 = x_207;
  }
  let x_208 : f32 = x_199;
  u_xlat5.y = x_208;
  let x_210 : bool = u_xlatb0;
  if (x_210) {
    let x_215 : f32 = u_xlat4.z;
    x_211 = x_215;
  } else {
    let x_219 : f32 = x_160.unity_MatrixV[2i].z;
    x_211 = x_219;
  }
  let x_220 : f32 = x_211;
  u_xlat5.z = x_220;
  let x_222 : vec3<f32> = u_xlat5;
  let x_226 : vec4<f32> = x_95.unity_WorldToObject[1i];
  u_xlat4 = (vec3<f32>(x_222.y, x_222.y, x_222.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_230 : vec4<f32> = x_95.unity_WorldToObject[0i];
  let x_232 : vec3<f32> = u_xlat5;
  let x_235 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.x, x_232.x, x_232.x)) + x_235);
  let x_238 : vec4<f32> = x_95.unity_WorldToObject[2i];
  let x_240 : vec3<f32> = u_xlat5;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.z, x_240.z, x_240.z)) + x_243);
  let x_245 : vec3<f32> = u_xlat4;
  let x_246 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_245, x_246);
  let x_250 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_250);
  let x_253 : vec3<f32> = u_xlat0;
  let x_255 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_253.x, x_253.x, x_253.x) * x_255);
  let x_269 : vec4<f32> = vs_INTERP3;
  let x_272 : f32 = x_160.x_GlobalMipBias.x;
  let x_273 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_269.x, x_269.y), x_272);
  u_xlat6 = x_273;
  let x_275 : vec4<f32> = u_xlat6;
  let x_281 : vec4<f32> = x_279.Color_C30C7CA3;
  u_xlat7 = (vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_290 : vec4<f32> = vs_INTERP3;
  let x_293 : f32 = x_160.x_GlobalMipBias.x;
  let x_294 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_290.x, x_290.y), x_293);
  u_xlat8 = vec4<f32>(x_294.w, x_294.x, x_294.y, x_294.z);
  let x_297 : vec4<f32> = u_xlat8;
  u_xlat9 = ((vec4<f32>(x_297.y, x_297.z, x_297.w, x_297.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_304 : vec4<f32> = u_xlat9;
  let x_305 : vec4<f32> = u_xlat9;
  u_xlat0.x = dot(x_304, x_305);
  let x_309 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_309);
  let x_313 : vec3<f32> = u_xlat0;
  let x_315 : vec4<f32> = u_xlat9;
  u_xlat19 = (vec3<f32>(x_313.x, x_313.x, x_313.x) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_320 : f32 = vs_INTERP4.y;
  u_xlat0.x = (x_320 * 200.0f);
  let x_325 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_325, 1.0f);
  let x_328 : vec3<f32> = u_xlat0;
  let x_330 : vec4<f32> = u_xlat6;
  let x_332 : vec3<f32> = (vec3<f32>(x_328.x, x_328.x, x_328.x) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat3;
  let x_337 : vec3<f32> = u_xlat19;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.y, x_337.y, x_337.y));
  let x_340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec3<f32> = u_xlat19;
  let x_344 : vec4<f32> = u_xlat2;
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.x, x_342.x) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec3<f32> = u_xlat19;
  let x_354 : vec3<f32> = u_xlat1;
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_352.z, x_352.z, x_352.z) * x_354) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec3<f32> = u_xlat1;
  let x_360 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_359, x_360);
  let x_364 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_364, 1.17549435e-37f);
  let x_369 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_369);
  let x_372 : vec3<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_372.x, x_372.x, x_372.x) * x_374);
  let x_376 : vec3<f32> = vs_INTERP0;
  let x_383 : vec4<f32> = x_381.x_CascadeShadowSplitSpheres0;
  let x_386 : vec3<f32> = (x_376 + -(vec3<f32>(x_383.x, x_383.y, x_383.z)));
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec3<f32> = vs_INTERP0;
  let x_391 : vec4<f32> = x_381.x_CascadeShadowSplitSpheres1;
  let x_394 : vec3<f32> = (x_389 + -(vec3<f32>(x_391.x, x_391.y, x_391.z)));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec3<f32> = vs_INTERP0;
  let x_399 : vec4<f32> = x_381.x_CascadeShadowSplitSpheres2;
  let x_402 : vec3<f32> = (x_397 + -(vec3<f32>(x_399.x, x_399.y, x_399.z)));
  let x_403 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_406 : vec3<f32> = vs_INTERP0;
  let x_409 : vec4<f32> = x_381.x_CascadeShadowSplitSpheres3;
  u_xlat10 = (x_406 + -(vec3<f32>(x_409.x, x_409.y, x_409.z)));
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_425 : vec4<f32> = u_xlat9;
  let x_427 : vec4<f32> = u_xlat9;
  u_xlat2.z = dot(vec3<f32>(x_425.x, x_425.y, x_425.z), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_431 : vec3<f32> = u_xlat10;
  let x_432 : vec3<f32> = u_xlat10;
  u_xlat2.w = dot(x_431, x_432);
  let x_438 : vec4<f32> = u_xlat2;
  let x_441 : vec4<f32> = x_381.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_438 < x_441);
  let x_444 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_444);
  let x_448 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_448);
  let x_452 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_452);
  let x_456 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_456);
  let x_460 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_460);
  let x_465 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_465);
  let x_469 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_469);
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec4<f32> = u_xlat3;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) + vec3<f32>(x_474.y, x_474.z, x_474.w));
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat2;
  let x_482 : vec3<f32> = max(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_483 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_483.x, x_482.x, x_482.y, x_482.z);
  let x_485 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(x_485, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_492 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_492) + 4.0f);
  let x_498 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_498);
  let x_501 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_501) << bitcast<u32>(2i));
  let x_504 : vec3<f32> = vs_INTERP0;
  let x_506 : i32 = u_xlati0;
  let x_509 : i32 = u_xlati0;
  let x_513 : vec4<f32> = x_381.x_MainLightWorldToShadow[((x_506 + 1i) / 4i)][((x_509 + 1i) % 4i)];
  let x_515 : vec3<f32> = (vec3<f32>(x_504.y, x_504.y, x_504.y) * vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : i32 = u_xlati0;
  let x_520 : i32 = u_xlati0;
  let x_523 : vec4<f32> = x_381.x_MainLightWorldToShadow[(x_518 / 4i)][(x_520 % 4i)];
  let x_525 : vec3<f32> = vs_INTERP0;
  let x_528 : vec4<f32> = u_xlat2;
  let x_530 : vec3<f32> = ((vec3<f32>(x_523.x, x_523.y, x_523.z) * vec3<f32>(x_525.x, x_525.x, x_525.x)) + vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : i32 = u_xlati0;
  let x_536 : i32 = u_xlati0;
  let x_540 : vec4<f32> = x_381.x_MainLightWorldToShadow[((x_533 + 2i) / 4i)][((x_536 + 2i) % 4i)];
  let x_542 : vec3<f32> = vs_INTERP0;
  let x_545 : vec4<f32> = u_xlat2;
  let x_547 : vec3<f32> = ((vec3<f32>(x_540.x, x_540.y, x_540.z) * vec3<f32>(x_542.z, x_542.z, x_542.z)) + vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat2;
  let x_552 : i32 = u_xlati0;
  let x_555 : i32 = u_xlati0;
  let x_559 : vec4<f32> = x_381.x_MainLightWorldToShadow[((x_552 + 3i) / 4i)][((x_555 + 3i) % 4i)];
  let x_561 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_565 : vec4<f32> = u_xlat2;
  let x_566 : vec2<f32> = vec2<f32>(x_565.x, x_565.y);
  let x_568 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_566.x, x_566.y, x_568);
  let x_580 : vec3<f32> = txVec0;
  let x_582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_580.xy, x_580.z);
  u_xlat0.x = x_582;
  let x_586 : f32 = x_381.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_586) + 1.0f);
  let x_590 : f32 = u_xlat0.x;
  let x_592 : f32 = x_381.x_MainLightShadowParams.x;
  let x_594 : f32 = u_xlat34;
  u_xlat0.x = ((x_590 * x_592) + x_594);
  let x_599 : f32 = u_xlat2.z;
  u_xlatb34 = (0.0f >= x_599);
  let x_602 : f32 = u_xlat2.z;
  u_xlatb2.x = (x_602 >= 1.0f);
  let x_605 : bool = u_xlatb34;
  let x_607 : bool = u_xlatb2.x;
  u_xlatb34 = (x_605 | x_607);
  let x_609 : bool = u_xlatb34;
  if (x_609) {
    x_610 = 1.0f;
  } else {
    let x_615 : f32 = u_xlat0.x;
    x_610 = x_615;
  }
  let x_616 : f32 = x_610;
  u_xlat0.x = x_616;
  let x_618 : vec3<f32> = u_xlat1;
  let x_620 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat1.x = dot(x_618, -(vec3<f32>(x_620.x, x_620.y, x_620.z)));
  let x_626 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_626, 0.0f, 1.0f);
  let x_630 : vec3<f32> = u_xlat0;
  let x_633 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_630.x, x_630.x, x_630.x) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec3<f32> = u_xlat12;
  let x_637 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_636 * vec3<f32>(x_637.x, x_637.x, x_637.x));
  let x_640 : vec3<f32> = u_xlat1;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat1 = (x_640 * vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_645 : f32 = x_95.unity_LODFade.x;
  u_xlatb34 = (x_645 < 0.0f);
  let x_648 : f32 = x_95.unity_LODFade.x;
  u_xlat2.x = (x_648 + 1.0f);
  let x_651 : bool = u_xlatb34;
  if (x_651) {
    let x_656 : f32 = u_xlat2.x;
    x_652 = x_656;
  } else {
    let x_659 : f32 = x_95.unity_LODFade.x;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat34 = x_660;
  let x_662 : f32 = u_xlat34;
  u_xlatb2.x = (0.5f >= x_662);
  let x_666 : vec3<f32> = u_xlat4;
  let x_669 : vec4<f32> = x_160.x_ScreenParams;
  u_xlat13 = (abs(x_666) * vec3<f32>(x_669.x, x_669.y, x_669.x));
  let x_675 : vec3<f32> = u_xlat13;
  u_xlatu13 = vec3<u32>(x_675);
  let x_679 : u32 = u_xlatu13.z;
  u_xlatu35 = (x_679 * 1025u);
  let x_683 : u32 = u_xlatu35;
  u_xlatu3 = (x_683 >> 6u);
  let x_687 : u32 = u_xlatu35;
  let x_688 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_687 ^ x_688));
  let x_691 : i32 = u_xlati35;
  u_xlatu35 = (bitcast<u32>(x_691) * 9u);
  let x_695 : u32 = u_xlatu35;
  u_xlatu3 = (x_695 >> 11u);
  let x_698 : u32 = u_xlatu35;
  let x_699 : u32 = u_xlatu3;
  u_xlati35 = bitcast<i32>((x_698 ^ x_699));
  let x_702 : i32 = u_xlati35;
  u_xlati35 = (x_702 * 32769i);
  let x_706 : i32 = u_xlati35;
  let x_709 : u32 = u_xlatu13.y;
  u_xlati24 = bitcast<i32>((bitcast<u32>(x_706) ^ x_709));
  let x_713 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_713) * 1025u);
  let x_716 : u32 = u_xlatu24;
  u_xlatu35 = (x_716 >> 6u);
  let x_718 : u32 = u_xlatu35;
  let x_719 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_718 ^ x_719));
  let x_722 : i32 = u_xlati24;
  u_xlatu24 = (bitcast<u32>(x_722) * 9u);
  let x_725 : u32 = u_xlatu24;
  u_xlatu35 = (x_725 >> 11u);
  let x_727 : u32 = u_xlatu35;
  let x_728 : u32 = u_xlatu24;
  u_xlati24 = bitcast<i32>((x_727 ^ x_728));
  let x_731 : i32 = u_xlati24;
  u_xlati24 = (x_731 * 32769i);
  let x_734 : i32 = u_xlati24;
  let x_737 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((bitcast<u32>(x_734) ^ x_737));
  let x_740 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_740) * 1025u);
  let x_745 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_745 >> 6u);
  let x_747 : u32 = u_xlatu24;
  let x_749 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_747 ^ x_749));
  let x_752 : i32 = u_xlati13;
  u_xlatu13.x = (bitcast<u32>(x_752) * 9u);
  let x_757 : u32 = u_xlatu13.x;
  u_xlatu24 = (x_757 >> 11u);
  let x_759 : u32 = u_xlatu24;
  let x_761 : u32 = u_xlatu13.x;
  u_xlati13 = bitcast<i32>((x_759 ^ x_761));
  let x_764 : i32 = u_xlati13;
  u_xlati13 = (x_764 * 32769i);
  param = 1065353216i;
  let x_770 : i32 = u_xlati13;
  param_1 = x_770;
  param_2 = 0i;
  param_3 = 23i;
  let x_773 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat13.x = bitcast<f32>(x_773);
  let x_777 : f32 = u_xlat13.x;
  u_xlat13.x = (x_777 + -1.0f);
  let x_782 : f32 = u_xlat13.x;
  u_xlat24 = (-(x_782) + 1.0f);
  let x_786 : bool = u_xlatb2.x;
  if (x_786) {
    let x_791 : f32 = u_xlat13.x;
    x_787 = x_791;
  } else {
    let x_793 : f32 = u_xlat24;
    x_787 = x_793;
  }
  let x_794 : f32 = x_787;
  u_xlat2.x = x_794;
  let x_796 : f32 = u_xlat34;
  let x_799 : f32 = u_xlat2.x;
  u_xlat34 = ((x_796 * 2.0f) + -(x_799));
  let x_802 : f32 = u_xlat34;
  let x_804 : f32 = u_xlat6.w;
  u_xlat2.x = (x_802 * x_804);
  let x_809 : f32 = u_xlat2.x;
  u_xlatb13 = (x_809 >= 0.400000006f);
  let x_812 : bool = u_xlatb13;
  if (x_812) {
    let x_817 : f32 = u_xlat2.x;
    x_813 = x_817;
  } else {
    x_813 = 0.0f;
  }
  let x_819 : f32 = x_813;
  u_xlat13.x = x_819;
  let x_822 : f32 = u_xlat6.w;
  let x_823 : f32 = u_xlat34;
  u_xlat34 = ((x_822 * x_823) + -0.400000006f);
  let x_828 : f32 = u_xlat2.x;
  u_xlat24 = dpdxCoarse(x_828);
  let x_831 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_831);
  let x_835 : f32 = u_xlat2.x;
  let x_837 : f32 = u_xlat24;
  u_xlat2.x = (abs(x_835) + abs(x_837));
  let x_842 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_842, 0.0001f);
  let x_846 : f32 = u_xlat34;
  let x_848 : f32 = u_xlat2.x;
  u_xlat34 = (x_846 / x_848);
  let x_850 : f32 = u_xlat34;
  u_xlat34 = (x_850 + 0.5f);
  let x_852 : f32 = u_xlat34;
  u_xlat34 = clamp(x_852, 0.0f, 1.0f);
  let x_855 : f32 = x_160.x_AlphaToMaskAvailable;
  u_xlatb2.x = !((x_855 == 0.0f));
  let x_859 : bool = u_xlatb2.x;
  if (x_859) {
    let x_863 : f32 = u_xlat34;
    x_860 = x_863;
  } else {
    let x_866 : f32 = u_xlat13.x;
    x_860 = x_866;
  }
  let x_867 : f32 = x_860;
  u_xlat34 = x_867;
  let x_868 : f32 = u_xlat34;
  u_xlat13.x = (x_868 + -0.0001f);
  let x_873 : f32 = u_xlat13.x;
  u_xlatb13 = (x_873 < 0.0f);
  let x_875 : bool = u_xlatb13;
  if (((select(0i, 1i, x_875) * -1i) != 0i)) {
    discard;
  }
  let x_883 : vec3<f32> = u_xlat11;
  let x_884 : vec3<f32> = u_xlat19;
  u_xlat11 = (x_883 * vec3<f32>(x_884.y, x_884.y, x_884.y));
  let x_887 : vec3<f32> = u_xlat19;
  let x_889 : vec4<f32> = vs_INTERP2;
  let x_892 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_887.x, x_887.x, x_887.x) * vec3<f32>(x_889.x, x_889.y, x_889.z)) + x_892);
  let x_894 : vec3<f32> = u_xlat19;
  let x_896 : vec3<f32> = vs_INTERP1;
  let x_898 : vec3<f32> = u_xlat11;
  u_xlat11 = ((vec3<f32>(x_894.z, x_894.z, x_894.z) * x_896) + x_898);
  let x_900 : vec3<f32> = u_xlat11;
  let x_901 : vec3<f32> = u_xlat11;
  u_xlat13.x = dot(x_900, x_901);
  let x_905 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_905);
  let x_908 : vec3<f32> = u_xlat11;
  let x_909 : vec3<f32> = u_xlat13;
  let x_911 : vec3<f32> = (x_908 * vec3<f32>(x_909.x, x_909.x, x_909.x));
  let x_912 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  u_xlat3.w = 1.0f;
  let x_917 : vec4<f32> = x_95.unity_SHAr;
  let x_918 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_917, x_918);
  let x_923 : vec4<f32> = x_95.unity_SHAg;
  let x_924 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_923, x_924);
  let x_929 : vec4<f32> = x_95.unity_SHAb;
  let x_930 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_929, x_930);
  let x_933 : vec4<f32> = u_xlat3;
  let x_935 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_933.y, x_933.z, x_933.z, x_933.x) * vec4<f32>(x_935.x, x_935.y, x_935.z, x_935.z));
  let x_940 : vec4<f32> = x_95.unity_SHBr;
  let x_941 : vec4<f32> = u_xlat6;
  u_xlat9.x = dot(x_940, x_941);
  let x_946 : vec4<f32> = x_95.unity_SHBg;
  let x_947 : vec4<f32> = u_xlat6;
  u_xlat9.y = dot(x_946, x_947);
  let x_951 : vec4<f32> = x_95.unity_SHBb;
  let x_952 : vec4<f32> = u_xlat6;
  u_xlat9.z = dot(x_951, x_952);
  let x_956 : f32 = u_xlat3.y;
  let x_958 : f32 = u_xlat3.y;
  u_xlat11.x = (x_956 * x_958);
  let x_962 : f32 = u_xlat3.x;
  let x_964 : f32 = u_xlat3.x;
  let x_967 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_962 * x_964) + -(x_967));
  let x_973 : vec4<f32> = x_95.unity_SHC;
  let x_975 : vec3<f32> = u_xlat11;
  let x_978 : vec4<f32> = u_xlat9;
  u_xlat11 = ((vec3<f32>(x_973.x, x_973.y, x_973.z) * vec3<f32>(x_975.x, x_975.x, x_975.x)) + vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec3<f32> = u_xlat11;
  let x_982 : vec3<f32> = u_xlat4;
  u_xlat11 = (x_981 + x_982);
  let x_984 : vec3<f32> = u_xlat11;
  u_xlat11 = max(x_984, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_988 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_989 : vec2<f32> = vec2<f32>(x_988.x, x_988.y);
  let x_993 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_989.x, x_989.y));
  let x_994 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_993.x, x_993.y, x_994.z);
  let x_996 : vec3<f32> = u_xlat13;
  let x_998 : vec4<f32> = hlslcc_FragCoord;
  let x_1000 : vec2<f32> = (vec2<f32>(x_996.x, x_996.y) * vec2<f32>(x_998.x, x_998.y));
  let x_1001 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_1000.x, x_1000.y, x_1001.z);
  let x_1004 : f32 = u_xlat4.y;
  let x_1007 : f32 = x_160.x_ScaleBiasRt.x;
  let x_1010 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat13.x = ((x_1004 * x_1007) + x_1010);
  let x_1014 : f32 = u_xlat13.x;
  u_xlat4.z = (-(x_1014) + 1.0f);
  let x_1019 : f32 = u_xlat8.x;
  u_xlat8.x = x_1019;
  let x_1022 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_1022, 0.0f, 1.0f);
  let x_1025 : f32 = u_xlat34;
  u_xlat34 = x_1025;
  let x_1026 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1026, 0.0f, 1.0f);
  let x_1028 : vec3<f32> = u_xlat7;
  u_xlat13 = (x_1028 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1034 : f32 = u_xlat8.x;
  u_xlat36 = (-(x_1034) + 1.0f);
  let x_1038 : f32 = u_xlat36;
  let x_1039 : f32 = u_xlat36;
  u_xlat15 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat15;
  u_xlat15 = max(x_1041, 0.0078125f);
  let x_1045 : f32 = u_xlat15;
  let x_1046 : f32 = u_xlat15;
  u_xlat37 = (x_1045 * x_1046);
  let x_1050 : f32 = u_xlat8.x;
  u_xlat38 = (x_1050 + 0.040000021f);
  let x_1053 : f32 = u_xlat38;
  u_xlat38 = min(x_1053, 1.0f);
  let x_1055 : f32 = u_xlat15;
  u_xlat6.x = ((x_1055 * 4.0f) + 2.0f);
  let x_1064 : vec3<f32> = u_xlat4;
  let x_1067 : f32 = x_160.x_GlobalMipBias.x;
  let x_1068 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1064.x, x_1064.z), x_1067);
  u_xlat4.x = x_1068.x;
  let x_1073 : f32 = u_xlat4.x;
  u_xlat26 = (x_1073 + -1.0f);
  let x_1076 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1077 : f32 = u_xlat26;
  u_xlat26 = ((x_1076 * x_1077) + 1.0f);
  let x_1081 : f32 = u_xlat4.x;
  let x_1083 : f32 = vs_INTERP4.w;
  u_xlat4.x = min(x_1081, x_1083);
  let x_1087 : vec3<f32> = vs_INTERP0;
  let x_1089 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1087 + -(x_1089));
  let x_1092 : vec3<f32> = u_xlat17;
  let x_1093 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_1092, x_1093);
  let x_1097 : f32 = u_xlat17.x;
  let x_1099 : f32 = x_381.x_MainLightShadowParams.z;
  let x_1102 : f32 = x_381.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1097 * x_1099) + x_1102);
  let x_1106 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1106, 0.0f, 1.0f);
  let x_1111 : f32 = u_xlat0.x;
  u_xlat28 = (-(x_1111) + 1.0f);
  let x_1115 : f32 = u_xlat17.x;
  let x_1116 : f32 = u_xlat28;
  let x_1119 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1115 * x_1116) + x_1119);
  let x_1122 : f32 = u_xlat26;
  let x_1125 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1122, x_1122, x_1122) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec3<f32> = u_xlat5;
  let x_1130 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1128), vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1135 : f32 = u_xlat7.x;
  let x_1137 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1135 + x_1137);
  let x_1140 : vec4<f32> = u_xlat3;
  let x_1142 : vec3<f32> = u_xlat7;
  let x_1146 : vec3<f32> = u_xlat5;
  u_xlat7 = ((vec3<f32>(x_1140.x, x_1140.y, x_1140.z) * -(vec3<f32>(x_1142.x, x_1142.x, x_1142.x))) + -(x_1146));
  let x_1150 : vec4<f32> = u_xlat3;
  let x_1152 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_1150.x, x_1150.y, x_1150.z), x_1152);
  let x_1154 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1154, 0.0f, 1.0f);
  let x_1156 : f32 = u_xlat40;
  u_xlat40 = (-(x_1156) + 1.0f);
  let x_1159 : f32 = u_xlat40;
  let x_1160 : f32 = u_xlat40;
  u_xlat40 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat40;
  let x_1163 : f32 = u_xlat40;
  u_xlat40 = (x_1162 * x_1163);
  let x_1165 : f32 = u_xlat36;
  u_xlat8.x = ((-(x_1165) * 0.699999988f) + 1.700000048f);
  let x_1172 : f32 = u_xlat36;
  let x_1174 : f32 = u_xlat8.x;
  u_xlat36 = (x_1172 * x_1174);
  let x_1176 : f32 = u_xlat36;
  u_xlat36 = (x_1176 * 6.0f);
  let x_1187 : vec3<f32> = u_xlat7;
  let x_1188 : f32 = u_xlat36;
  let x_1189 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1187, x_1188);
  u_xlat8 = x_1189;
  let x_1191 : f32 = u_xlat8.w;
  u_xlat36 = (x_1191 + -1.0f);
  let x_1194 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1195 : f32 = u_xlat36;
  u_xlat36 = ((x_1194 * x_1195) + 1.0f);
  let x_1198 : f32 = u_xlat36;
  u_xlat36 = max(x_1198, 0.0f);
  let x_1200 : f32 = u_xlat36;
  u_xlat36 = log2(x_1200);
  let x_1202 : f32 = u_xlat36;
  let x_1204 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_1202 * x_1204);
  let x_1206 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1206);
  let x_1208 : f32 = u_xlat36;
  let x_1210 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_1208 * x_1210);
  let x_1212 : vec4<f32> = u_xlat8;
  let x_1214 : f32 = u_xlat36;
  u_xlat7 = (vec3<f32>(x_1212.x, x_1212.y, x_1212.z) * vec3<f32>(x_1214, x_1214, x_1214));
  let x_1217 : f32 = u_xlat15;
  let x_1219 : f32 = u_xlat15;
  let x_1223 : vec2<f32> = ((vec2<f32>(x_1217, x_1217) * vec2<f32>(x_1219, x_1219)) + vec2<f32>(-1.0f, 1.0f));
  let x_1224 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
  let x_1227 : f32 = u_xlat8.y;
  u_xlat36 = (1.0f / x_1227);
  let x_1229 : f32 = u_xlat38;
  u_xlat15 = (x_1229 + -0.039999999f);
  let x_1232 : f32 = u_xlat40;
  let x_1233 : f32 = u_xlat15;
  u_xlat15 = ((x_1232 * x_1233) + 0.039999999f);
  let x_1237 : f32 = u_xlat36;
  let x_1238 : f32 = u_xlat15;
  u_xlat36 = (x_1237 * x_1238);
  let x_1240 : f32 = u_xlat36;
  let x_1242 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1240, x_1240, x_1240) * x_1242);
  let x_1244 : vec3<f32> = u_xlat11;
  let x_1245 : vec3<f32> = u_xlat13;
  let x_1247 : vec3<f32> = u_xlat7;
  u_xlat11 = ((x_1244 * x_1245) + x_1247);
  let x_1250 : f32 = u_xlat0.x;
  let x_1252 : f32 = x_95.unity_LightData.z;
  u_xlat0.x = (x_1250 * x_1252);
  let x_1255 : vec4<f32> = u_xlat3;
  let x_1258 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_1255.x, x_1255.y, x_1255.z), vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1261, 0.0f, 1.0f);
  let x_1264 : f32 = u_xlat0.x;
  let x_1265 : f32 = u_xlat36;
  u_xlat0.x = (x_1264 * x_1265);
  let x_1268 : vec3<f32> = u_xlat0;
  let x_1270 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1268.x, x_1268.x, x_1268.x) * x_1270);
  let x_1272 : vec3<f32> = u_xlat5;
  let x_1274 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat7 = (x_1272 + vec3<f32>(x_1274.x, x_1274.y, x_1274.z));
  let x_1277 : vec3<f32> = u_xlat7;
  let x_1278 : vec3<f32> = u_xlat7;
  u_xlat0.x = dot(x_1277, x_1278);
  let x_1282 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1282, 1.17549435e-37f);
  let x_1286 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1286);
  let x_1289 : vec3<f32> = u_xlat0;
  let x_1291 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1289.x, x_1289.x, x_1289.x) * x_1291);
  let x_1293 : vec4<f32> = u_xlat3;
  let x_1295 : vec3<f32> = u_xlat7;
  u_xlat0.x = dot(vec3<f32>(x_1293.x, x_1293.y, x_1293.z), x_1295);
  let x_1299 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1299, 0.0f, 1.0f);
  let x_1303 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1305 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1303.x, x_1303.y, x_1303.z), x_1305);
  let x_1307 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1307, 0.0f, 1.0f);
  let x_1310 : f32 = u_xlat0.x;
  let x_1312 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1310 * x_1312);
  let x_1316 : f32 = u_xlat0.x;
  let x_1318 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_1316 * x_1318) + 1.000010014f);
  let x_1323 : f32 = u_xlat36;
  let x_1324 : f32 = u_xlat36;
  u_xlat36 = (x_1323 * x_1324);
  let x_1327 : f32 = u_xlat0.x;
  let x_1329 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1327 * x_1329);
  let x_1332 : f32 = u_xlat36;
  u_xlat36 = max(x_1332, 0.100000001f);
  let x_1336 : f32 = u_xlat0.x;
  let x_1337 : f32 = u_xlat36;
  u_xlat0.x = (x_1336 * x_1337);
  let x_1341 : f32 = u_xlat6.x;
  let x_1343 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1341 * x_1343);
  let x_1346 : f32 = u_xlat37;
  let x_1348 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1346 / x_1348);
  let x_1351 : vec3<f32> = u_xlat0;
  let x_1355 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_1351.x, x_1351.x, x_1351.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1355);
  let x_1357 : vec3<f32> = u_xlat17;
  let x_1358 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1357 * x_1358);
  let x_1362 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1364 : f32 = x_95.unity_LightData.y;
  u_xlat0.x = min(x_1362, x_1364);
  let x_1368 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1368));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1380 : u32 = u_xlatu_loop_1;
    let x_1381 : u32 = u_xlatu0;
    if ((x_1380 < x_1381)) {
    } else {
      break;
    }
    let x_1384 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_1384 >> 2u);
    let x_1387 : u32 = u_xlatu_loop_1;
    u_xlati38 = bitcast<i32>((x_1387 & 3u));
    let x_1390 : u32 = u_xlatu15;
    let x_1393 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1390)];
    let x_1403 : i32 = u_xlati38;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1408 : vec4<u32> = indexable[x_1403];
    u_xlat15 = dot(x_1393, bitcast<vec4<f32>>(x_1408));
    let x_1412 : f32 = u_xlat15;
    u_xlati15 = i32(x_1412);
    let x_1414 : vec3<f32> = vs_INTERP0;
    let x_1426 : i32 = u_xlati15;
    let x_1428 : vec4<f32> = x_1425.x_AdditionalLightsPosition[x_1426];
    let x_1431 : i32 = u_xlati15;
    let x_1433 : vec4<f32> = x_1425.x_AdditionalLightsPosition[x_1431];
    u_xlat19 = ((-(x_1414) * vec3<f32>(x_1428.w, x_1428.w, x_1428.w)) + vec3<f32>(x_1433.x, x_1433.y, x_1433.z));
    let x_1436 : vec3<f32> = u_xlat19;
    let x_1437 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(x_1436, x_1437);
    let x_1439 : f32 = u_xlat38;
    u_xlat38 = max(x_1439, 6.10351562e-05f);
    let x_1442 : f32 = u_xlat38;
    u_xlat40 = inverseSqrt(x_1442);
    let x_1444 : f32 = u_xlat40;
    let x_1446 : vec3<f32> = u_xlat19;
    let x_1447 : vec3<f32> = (vec3<f32>(x_1444, x_1444, x_1444) * x_1446);
    let x_1448 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1447.x, x_1447.y, x_1447.z, x_1448.w);
    let x_1451 : f32 = u_xlat38;
    u_xlat42 = (1.0f / x_1451);
    let x_1453 : f32 = u_xlat38;
    let x_1454 : i32 = u_xlati15;
    let x_1456 : f32 = x_1425.x_AdditionalLightsAttenuation[x_1454].x;
    u_xlat38 = (x_1453 * x_1456);
    let x_1458 : f32 = u_xlat38;
    let x_1460 : f32 = u_xlat38;
    u_xlat38 = ((-(x_1458) * x_1460) + 1.0f);
    let x_1463 : f32 = u_xlat38;
    u_xlat38 = max(x_1463, 0.0f);
    let x_1465 : f32 = u_xlat38;
    let x_1466 : f32 = u_xlat38;
    u_xlat38 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat38;
    let x_1469 : f32 = u_xlat42;
    u_xlat38 = (x_1468 * x_1469);
    let x_1471 : i32 = u_xlati15;
    let x_1473 : vec4<f32> = x_1425.x_AdditionalLightsSpotDir[x_1471];
    let x_1475 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1473.x, x_1473.y, x_1473.z), vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
    let x_1478 : f32 = u_xlat42;
    let x_1479 : i32 = u_xlati15;
    let x_1481 : f32 = x_1425.x_AdditionalLightsAttenuation[x_1479].z;
    let x_1483 : i32 = u_xlati15;
    let x_1485 : f32 = x_1425.x_AdditionalLightsAttenuation[x_1483].w;
    u_xlat42 = ((x_1478 * x_1481) + x_1485);
    let x_1487 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1487, 0.0f, 1.0f);
    let x_1489 : f32 = u_xlat42;
    let x_1490 : f32 = u_xlat42;
    u_xlat42 = (x_1489 * x_1490);
    let x_1492 : f32 = u_xlat38;
    let x_1493 : f32 = u_xlat42;
    u_xlat38 = (x_1492 * x_1493);
    let x_1495 : f32 = u_xlat26;
    let x_1497 : i32 = u_xlati15;
    let x_1499 : vec4<f32> = x_1425.x_AdditionalLightsColor[x_1497];
    u_xlat10 = (vec3<f32>(x_1495, x_1495, x_1495) * vec3<f32>(x_1499.x, x_1499.y, x_1499.z));
    let x_1502 : vec4<f32> = u_xlat3;
    let x_1504 : vec4<f32> = u_xlat9;
    u_xlat15 = dot(vec3<f32>(x_1502.x, x_1502.y, x_1502.z), vec3<f32>(x_1504.x, x_1504.y, x_1504.z));
    let x_1507 : f32 = u_xlat15;
    u_xlat15 = clamp(x_1507, 0.0f, 1.0f);
    let x_1509 : f32 = u_xlat15;
    let x_1510 : f32 = u_xlat38;
    u_xlat15 = (x_1509 * x_1510);
    let x_1512 : f32 = u_xlat15;
    let x_1514 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1512, x_1512, x_1512) * x_1514);
    let x_1516 : vec3<f32> = u_xlat19;
    let x_1517 : f32 = u_xlat40;
    let x_1520 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_1516 * vec3<f32>(x_1517, x_1517, x_1517)) + x_1520);
    let x_1522 : vec3<f32> = u_xlat19;
    let x_1523 : vec3<f32> = u_xlat19;
    u_xlat15 = dot(x_1522, x_1523);
    let x_1525 : f32 = u_xlat15;
    u_xlat15 = max(x_1525, 1.17549435e-37f);
    let x_1527 : f32 = u_xlat15;
    u_xlat15 = inverseSqrt(x_1527);
    let x_1529 : f32 = u_xlat15;
    let x_1531 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_1529, x_1529, x_1529) * x_1531);
    let x_1533 : vec4<f32> = u_xlat3;
    let x_1535 : vec3<f32> = u_xlat19;
    u_xlat15 = dot(vec3<f32>(x_1533.x, x_1533.y, x_1533.z), x_1535);
    let x_1537 : f32 = u_xlat15;
    u_xlat15 = clamp(x_1537, 0.0f, 1.0f);
    let x_1539 : vec4<f32> = u_xlat9;
    let x_1541 : vec3<f32> = u_xlat19;
    u_xlat38 = dot(vec3<f32>(x_1539.x, x_1539.y, x_1539.z), x_1541);
    let x_1543 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1543, 0.0f, 1.0f);
    let x_1545 : f32 = u_xlat15;
    let x_1546 : f32 = u_xlat15;
    u_xlat15 = (x_1545 * x_1546);
    let x_1548 : f32 = u_xlat15;
    let x_1550 : f32 = u_xlat8.x;
    u_xlat15 = ((x_1548 * x_1550) + 1.000010014f);
    let x_1553 : f32 = u_xlat38;
    let x_1554 : f32 = u_xlat38;
    u_xlat38 = (x_1553 * x_1554);
    let x_1556 : f32 = u_xlat15;
    let x_1557 : f32 = u_xlat15;
    u_xlat15 = (x_1556 * x_1557);
    let x_1559 : f32 = u_xlat38;
    u_xlat38 = max(x_1559, 0.100000001f);
    let x_1561 : f32 = u_xlat15;
    let x_1562 : f32 = u_xlat38;
    u_xlat15 = (x_1561 * x_1562);
    let x_1565 : f32 = u_xlat6.x;
    let x_1566 : f32 = u_xlat15;
    u_xlat15 = (x_1565 * x_1566);
    let x_1568 : f32 = u_xlat37;
    let x_1569 : f32 = u_xlat15;
    u_xlat15 = (x_1568 / x_1569);
    let x_1571 : f32 = u_xlat15;
    let x_1574 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_1571, x_1571, x_1571) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1574);
    let x_1576 : vec3<f32> = u_xlat19;
    let x_1577 : vec3<f32> = u_xlat10;
    let x_1579 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1576 * x_1577) + x_1579);

    continuing {
      let x_1581 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1581 + bitcast<u32>(1i));
    }
  }
  let x_1583 : vec3<f32> = u_xlat11;
  let x_1584 : vec3<f32> = u_xlat4;
  let x_1587 : vec3<f32> = u_xlat17;
  u_xlat0 = ((x_1583 * vec3<f32>(x_1584.x, x_1584.x, x_1584.x)) + x_1587);
  let x_1589 : vec3<f32> = u_xlat7;
  let x_1590 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1589 + x_1590);
  let x_1594 : vec4<f32> = vs_INTERP4;
  let x_1596 : vec3<f32> = u_xlat1;
  let x_1598 : vec3<f32> = u_xlat0;
  let x_1599 : vec3<f32> = ((vec3<f32>(x_1594.w, x_1594.w, x_1594.w) * x_1596) + x_1598);
  let x_1600 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
  let x_1603 : bool = u_xlatb2.x;
  let x_1604 : f32 = u_xlat34;
  SV_Target0.w = select(1.0f, x_1604, x_1603);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

