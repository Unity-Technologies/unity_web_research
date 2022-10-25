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

@group(0) @binding(4) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_279 : UnityPerMaterial;

@group(0) @binding(5) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_381 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1380 : AdditionalLights;

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
  var u_xlat14 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat25 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
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
  u_xlat11 = (x_908 * vec3<f32>(x_909.x, x_909.x, x_909.x));
  let x_919 : vec2<f32> = vs_INTERP5;
  let x_921 : f32 = x_160.x_GlobalMipBias.x;
  let x_922 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_919, x_921);
  u_xlat13 = vec3<f32>(x_922.x, x_922.y, x_922.z);
  let x_926 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
  let x_931 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_927.x, x_927.y));
  let x_932 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat3;
  let x_936 : vec4<f32> = hlslcc_FragCoord;
  let x_938 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) * vec2<f32>(x_936.x, x_936.y));
  let x_939 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
  let x_943 : f32 = u_xlat3.y;
  let x_946 : f32 = x_160.x_ScaleBiasRt.x;
  let x_949 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_943 * x_946) + x_949);
  let x_953 : f32 = u_xlat14.x;
  u_xlat3.z = (-(x_953) + 1.0f);
  let x_958 : f32 = u_xlat8.x;
  u_xlat8.x = x_958;
  let x_961 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_961, 0.0f, 1.0f);
  let x_964 : f32 = u_xlat34;
  u_xlat34 = x_964;
  let x_965 : f32 = u_xlat34;
  u_xlat34 = clamp(x_965, 0.0f, 1.0f);
  let x_967 : vec3<f32> = u_xlat7;
  u_xlat4 = (x_967 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_972 : f32 = u_xlat8.x;
  u_xlat14.x = (-(x_972) + 1.0f);
  let x_978 : f32 = u_xlat14.x;
  let x_980 : f32 = u_xlat14.x;
  u_xlat36 = (x_978 * x_980);
  let x_982 : f32 = u_xlat36;
  u_xlat36 = max(x_982, 0.0078125f);
  let x_986 : f32 = u_xlat36;
  let x_987 : f32 = u_xlat36;
  u_xlat37 = (x_986 * x_987);
  let x_991 : f32 = u_xlat8.x;
  u_xlat38 = (x_991 + 0.040000021f);
  let x_994 : f32 = u_xlat38;
  u_xlat38 = min(x_994, 1.0f);
  let x_996 : f32 = u_xlat36;
  u_xlat6.x = ((x_996 * 4.0f) + 2.0f);
  let x_1005 : vec4<f32> = u_xlat3;
  let x_1008 : f32 = x_160.x_GlobalMipBias.x;
  let x_1009 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1005.x, x_1005.z), x_1008);
  u_xlat3.x = x_1009.x;
  let x_1014 : f32 = u_xlat3.x;
  u_xlat25 = (x_1014 + -1.0f);
  let x_1017 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1018 : f32 = u_xlat25;
  u_xlat25 = ((x_1017 * x_1018) + 1.0f);
  let x_1022 : f32 = u_xlat3.x;
  let x_1024 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_1022, x_1024);
  let x_1028 : vec3<f32> = vs_INTERP0;
  let x_1030 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1028 + -(x_1030));
  let x_1033 : vec3<f32> = u_xlat17;
  let x_1034 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_1033, x_1034);
  let x_1038 : f32 = u_xlat17.x;
  let x_1040 : f32 = x_381.x_MainLightShadowParams.z;
  let x_1043 : f32 = x_381.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1038 * x_1040) + x_1043);
  let x_1047 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1047, 0.0f, 1.0f);
  let x_1052 : f32 = u_xlat0.x;
  u_xlat28 = (-(x_1052) + 1.0f);
  let x_1056 : f32 = u_xlat17.x;
  let x_1057 : f32 = u_xlat28;
  let x_1060 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1056 * x_1057) + x_1060);
  let x_1063 : f32 = u_xlat25;
  let x_1066 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1063, x_1063, x_1063) * vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec3<f32> = u_xlat5;
  let x_1071 : vec3<f32> = u_xlat11;
  u_xlat7.x = dot(-(x_1069), x_1071);
  let x_1075 : f32 = u_xlat7.x;
  let x_1077 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1075 + x_1077);
  let x_1080 : vec3<f32> = u_xlat11;
  let x_1081 : vec3<f32> = u_xlat7;
  let x_1085 : vec3<f32> = u_xlat5;
  u_xlat7 = ((x_1080 * -(vec3<f32>(x_1081.x, x_1081.x, x_1081.x))) + -(x_1085));
  let x_1089 : vec3<f32> = u_xlat11;
  let x_1090 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_1089, x_1090);
  let x_1092 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1092, 0.0f, 1.0f);
  let x_1094 : f32 = u_xlat40;
  u_xlat40 = (-(x_1094) + 1.0f);
  let x_1097 : f32 = u_xlat40;
  let x_1098 : f32 = u_xlat40;
  u_xlat40 = (x_1097 * x_1098);
  let x_1100 : f32 = u_xlat40;
  let x_1101 : f32 = u_xlat40;
  u_xlat40 = (x_1100 * x_1101);
  let x_1104 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_1104) * 0.699999988f) + 1.700000048f);
  let x_1112 : f32 = u_xlat14.x;
  let x_1114 : f32 = u_xlat8.x;
  u_xlat14.x = (x_1112 * x_1114);
  let x_1118 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1118 * 6.0f);
  let x_1130 : vec3<f32> = u_xlat7;
  let x_1132 : f32 = u_xlat14.x;
  let x_1133 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1130, x_1132);
  u_xlat8 = x_1133;
  let x_1135 : f32 = u_xlat8.w;
  u_xlat14.x = (x_1135 + -1.0f);
  let x_1139 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1141 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_1139 * x_1141) + 1.0f);
  let x_1146 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1146, 0.0f);
  let x_1150 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_1150);
  let x_1154 : f32 = u_xlat14.x;
  let x_1156 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_1154 * x_1156);
  let x_1160 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1160);
  let x_1164 : f32 = u_xlat14.x;
  let x_1166 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_1164 * x_1166);
  let x_1169 : vec4<f32> = u_xlat8;
  let x_1171 : vec3<f32> = u_xlat14;
  u_xlat7 = (vec3<f32>(x_1169.x, x_1169.y, x_1169.z) * vec3<f32>(x_1171.x, x_1171.x, x_1171.x));
  let x_1174 : f32 = u_xlat36;
  let x_1176 : f32 = u_xlat36;
  let x_1180 : vec2<f32> = ((vec2<f32>(x_1174, x_1174) * vec2<f32>(x_1176, x_1176)) + vec2<f32>(-1.0f, 1.0f));
  let x_1181 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1180.x, x_1181.y, x_1180.y);
  let x_1184 : f32 = u_xlat14.z;
  u_xlat36 = (1.0f / x_1184);
  let x_1186 : f32 = u_xlat38;
  u_xlat38 = (x_1186 + -0.039999999f);
  let x_1189 : f32 = u_xlat40;
  let x_1190 : f32 = u_xlat38;
  u_xlat38 = ((x_1189 * x_1190) + 0.039999999f);
  let x_1194 : f32 = u_xlat36;
  let x_1195 : f32 = u_xlat38;
  u_xlat36 = (x_1194 * x_1195);
  let x_1197 : f32 = u_xlat36;
  let x_1199 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1197, x_1197, x_1197) * x_1199);
  let x_1201 : vec3<f32> = u_xlat13;
  let x_1202 : vec3<f32> = u_xlat4;
  let x_1204 : vec3<f32> = u_xlat7;
  u_xlat13 = ((x_1201 * x_1202) + x_1204);
  let x_1207 : f32 = u_xlat0.x;
  let x_1209 : f32 = x_95.unity_LightData.z;
  u_xlat0.x = (x_1207 * x_1209);
  let x_1212 : vec3<f32> = u_xlat11;
  let x_1214 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat36 = dot(x_1212, vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
  let x_1217 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1217, 0.0f, 1.0f);
  let x_1220 : f32 = u_xlat0.x;
  let x_1221 : f32 = u_xlat36;
  u_xlat0.x = (x_1220 * x_1221);
  let x_1224 : vec3<f32> = u_xlat0;
  let x_1226 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1224.x, x_1224.x, x_1224.x) * x_1226);
  let x_1228 : vec3<f32> = u_xlat5;
  let x_1230 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat7 = (x_1228 + vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1233 : vec3<f32> = u_xlat7;
  let x_1234 : vec3<f32> = u_xlat7;
  u_xlat0.x = dot(x_1233, x_1234);
  let x_1238 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1238, 1.17549435e-37f);
  let x_1242 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1242);
  let x_1245 : vec3<f32> = u_xlat0;
  let x_1247 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1245.x, x_1245.x, x_1245.x) * x_1247);
  let x_1249 : vec3<f32> = u_xlat11;
  let x_1250 : vec3<f32> = u_xlat7;
  u_xlat0.x = dot(x_1249, x_1250);
  let x_1254 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1254, 0.0f, 1.0f);
  let x_1258 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1260 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1258.x, x_1258.y, x_1258.z), x_1260);
  let x_1262 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1262, 0.0f, 1.0f);
  let x_1265 : f32 = u_xlat0.x;
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1265 * x_1267);
  let x_1271 : f32 = u_xlat0.x;
  let x_1273 : f32 = u_xlat14.x;
  u_xlat0.x = ((x_1271 * x_1273) + 1.000010014f);
  let x_1278 : f32 = u_xlat36;
  let x_1279 : f32 = u_xlat36;
  u_xlat36 = (x_1278 * x_1279);
  let x_1282 : f32 = u_xlat0.x;
  let x_1284 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1282 * x_1284);
  let x_1287 : f32 = u_xlat36;
  u_xlat36 = max(x_1287, 0.100000001f);
  let x_1291 : f32 = u_xlat0.x;
  let x_1292 : f32 = u_xlat36;
  u_xlat0.x = (x_1291 * x_1292);
  let x_1296 : f32 = u_xlat6.x;
  let x_1298 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1296 * x_1298);
  let x_1301 : f32 = u_xlat37;
  let x_1303 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1301 / x_1303);
  let x_1306 : vec3<f32> = u_xlat0;
  let x_1310 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1306.x, x_1306.x, x_1306.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1310);
  let x_1312 : vec3<f32> = u_xlat17;
  let x_1313 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1312 * x_1313);
  let x_1317 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1319 : f32 = x_95.unity_LightData.y;
  u_xlat0.x = min(x_1317, x_1319);
  let x_1323 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1323));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1335 : u32 = u_xlatu_loop_1;
    let x_1336 : u32 = u_xlatu0;
    if ((x_1335 < x_1336)) {
    } else {
      break;
    }
    let x_1339 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1339 >> 2u);
    let x_1342 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1342 & 3u));
    let x_1345 : u32 = u_xlatu38;
    let x_1348 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1345)];
    let x_1358 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1363 : vec4<u32> = indexable[x_1358];
    u_xlat38 = dot(x_1348, bitcast<vec4<f32>>(x_1363));
    let x_1367 : f32 = u_xlat38;
    u_xlati38 = i32(x_1367);
    let x_1369 : vec3<f32> = vs_INTERP0;
    let x_1381 : i32 = u_xlati38;
    let x_1383 : vec4<f32> = x_1380.x_AdditionalLightsPosition[x_1381];
    let x_1386 : i32 = u_xlati38;
    let x_1388 : vec4<f32> = x_1380.x_AdditionalLightsPosition[x_1386];
    let x_1390 : vec3<f32> = ((-(x_1369) * vec3<f32>(x_1383.w, x_1383.w, x_1383.w)) + vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
    let x_1391 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
    let x_1393 : vec4<f32> = u_xlat8;
    let x_1395 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1393.x, x_1393.y, x_1393.z), vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
    let x_1398 : f32 = u_xlat40;
    u_xlat40 = max(x_1398, 6.10351562e-05f);
    let x_1402 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1402);
    let x_1404 : f32 = u_xlat41;
    let x_1406 : vec4<f32> = u_xlat8;
    let x_1408 : vec3<f32> = (vec3<f32>(x_1404, x_1404, x_1404) * vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
    let x_1409 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
    let x_1412 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1412);
    let x_1414 : f32 = u_xlat40;
    let x_1415 : i32 = u_xlati38;
    let x_1417 : f32 = x_1380.x_AdditionalLightsAttenuation[x_1415].x;
    u_xlat40 = (x_1414 * x_1417);
    let x_1419 : f32 = u_xlat40;
    let x_1421 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1419) * x_1421) + 1.0f);
    let x_1424 : f32 = u_xlat40;
    u_xlat40 = max(x_1424, 0.0f);
    let x_1426 : f32 = u_xlat40;
    let x_1427 : f32 = u_xlat40;
    u_xlat40 = (x_1426 * x_1427);
    let x_1429 : f32 = u_xlat40;
    let x_1430 : f32 = u_xlat42;
    u_xlat40 = (x_1429 * x_1430);
    let x_1432 : i32 = u_xlati38;
    let x_1434 : vec4<f32> = x_1380.x_AdditionalLightsSpotDir[x_1432];
    let x_1436 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1434.x, x_1434.y, x_1434.z), vec3<f32>(x_1436.x, x_1436.y, x_1436.z));
    let x_1439 : f32 = u_xlat42;
    let x_1440 : i32 = u_xlati38;
    let x_1442 : f32 = x_1380.x_AdditionalLightsAttenuation[x_1440].z;
    let x_1444 : i32 = u_xlati38;
    let x_1446 : f32 = x_1380.x_AdditionalLightsAttenuation[x_1444].w;
    u_xlat42 = ((x_1439 * x_1442) + x_1446);
    let x_1448 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1448, 0.0f, 1.0f);
    let x_1450 : f32 = u_xlat42;
    let x_1451 : f32 = u_xlat42;
    u_xlat42 = (x_1450 * x_1451);
    let x_1453 : f32 = u_xlat40;
    let x_1454 : f32 = u_xlat42;
    u_xlat40 = (x_1453 * x_1454);
    let x_1456 : f32 = u_xlat25;
    let x_1458 : i32 = u_xlati38;
    let x_1460 : vec4<f32> = x_1380.x_AdditionalLightsColor[x_1458];
    u_xlat10 = (vec3<f32>(x_1456, x_1456, x_1456) * vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
    let x_1463 : vec3<f32> = u_xlat11;
    let x_1464 : vec4<f32> = u_xlat9;
    u_xlat38 = dot(x_1463, vec3<f32>(x_1464.x, x_1464.y, x_1464.z));
    let x_1467 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1467, 0.0f, 1.0f);
    let x_1469 : f32 = u_xlat38;
    let x_1470 : f32 = u_xlat40;
    u_xlat38 = (x_1469 * x_1470);
    let x_1472 : f32 = u_xlat38;
    let x_1474 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1472, x_1472, x_1472) * x_1474);
    let x_1476 : vec4<f32> = u_xlat8;
    let x_1478 : f32 = u_xlat41;
    let x_1481 : vec3<f32> = u_xlat5;
    let x_1482 : vec3<f32> = ((vec3<f32>(x_1476.x, x_1476.y, x_1476.z) * vec3<f32>(x_1478, x_1478, x_1478)) + x_1481);
    let x_1483 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1483.w);
    let x_1485 : vec4<f32> = u_xlat8;
    let x_1487 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1485.x, x_1485.y, x_1485.z), vec3<f32>(x_1487.x, x_1487.y, x_1487.z));
    let x_1490 : f32 = u_xlat38;
    u_xlat38 = max(x_1490, 1.17549435e-37f);
    let x_1492 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1492);
    let x_1494 : f32 = u_xlat38;
    let x_1496 : vec4<f32> = u_xlat8;
    let x_1498 : vec3<f32> = (vec3<f32>(x_1494, x_1494, x_1494) * vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
    let x_1499 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
    let x_1501 : vec3<f32> = u_xlat11;
    let x_1502 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1501, vec3<f32>(x_1502.x, x_1502.y, x_1502.z));
    let x_1505 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1505, 0.0f, 1.0f);
    let x_1507 : vec4<f32> = u_xlat9;
    let x_1509 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1507.x, x_1507.y, x_1507.z), vec3<f32>(x_1509.x, x_1509.y, x_1509.z));
    let x_1512 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1512, 0.0f, 1.0f);
    let x_1514 : f32 = u_xlat38;
    let x_1515 : f32 = u_xlat38;
    u_xlat38 = (x_1514 * x_1515);
    let x_1517 : f32 = u_xlat38;
    let x_1519 : f32 = u_xlat14.x;
    u_xlat38 = ((x_1517 * x_1519) + 1.000010014f);
    let x_1522 : f32 = u_xlat40;
    let x_1523 : f32 = u_xlat40;
    u_xlat40 = (x_1522 * x_1523);
    let x_1525 : f32 = u_xlat38;
    let x_1526 : f32 = u_xlat38;
    u_xlat38 = (x_1525 * x_1526);
    let x_1528 : f32 = u_xlat40;
    u_xlat40 = max(x_1528, 0.100000001f);
    let x_1530 : f32 = u_xlat38;
    let x_1531 : f32 = u_xlat40;
    u_xlat38 = (x_1530 * x_1531);
    let x_1534 : f32 = u_xlat6.x;
    let x_1535 : f32 = u_xlat38;
    u_xlat38 = (x_1534 * x_1535);
    let x_1537 : f32 = u_xlat37;
    let x_1538 : f32 = u_xlat38;
    u_xlat38 = (x_1537 / x_1538);
    let x_1540 : f32 = u_xlat38;
    let x_1543 : vec3<f32> = u_xlat4;
    let x_1544 : vec3<f32> = ((vec3<f32>(x_1540, x_1540, x_1540) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1543);
    let x_1545 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1544.x, x_1544.y, x_1544.z, x_1545.w);
    let x_1547 : vec4<f32> = u_xlat8;
    let x_1549 : vec3<f32> = u_xlat10;
    let x_1551 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1547.x, x_1547.y, x_1547.z) * x_1549) + x_1551);

    continuing {
      let x_1553 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1553 + bitcast<u32>(1i));
    }
  }
  let x_1555 : vec3<f32> = u_xlat13;
  let x_1556 : vec4<f32> = u_xlat3;
  let x_1559 : vec3<f32> = u_xlat17;
  u_xlat0 = ((x_1555 * vec3<f32>(x_1556.x, x_1556.x, x_1556.x)) + x_1559);
  let x_1561 : vec3<f32> = u_xlat7;
  let x_1562 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1561 + x_1562);
  let x_1566 : vec4<f32> = vs_INTERP4;
  let x_1568 : vec3<f32> = u_xlat1;
  let x_1570 : vec3<f32> = u_xlat0;
  let x_1571 : vec3<f32> = ((vec3<f32>(x_1566.w, x_1566.w, x_1566.w) * x_1568) + x_1570);
  let x_1572 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1575 : bool = u_xlatb2.x;
  let x_1576 : f32 = u_xlat34;
  SV_Target0.w = select(1.0f, x_1576, x_1575);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0);
}

