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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_279 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_381 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1416 : AdditionalLights;

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
  let x_922 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_919, x_921);
  u_xlat3 = x_922;
  let x_927 : vec2<f32> = vs_INTERP5;
  let x_929 : f32 = x_160.x_GlobalMipBias.x;
  let x_930 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_927, x_929);
  u_xlat13 = vec3<f32>(x_930.x, x_930.y, x_930.z);
  let x_932 : vec4<f32> = u_xlat3;
  let x_936 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec3<f32> = u_xlat11;
  let x_940 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_939, vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_945 : f32 = u_xlat3.x;
  u_xlat3.x = (x_945 + 0.5f);
  let x_948 : vec3<f32> = u_xlat13;
  let x_949 : vec4<f32> = u_xlat3;
  u_xlat13 = (x_948 * vec3<f32>(x_949.x, x_949.x, x_949.x));
  let x_953 : f32 = u_xlat3.w;
  u_xlat3.x = max(x_953, 0.0001f);
  let x_956 : vec3<f32> = u_xlat13;
  let x_957 : vec4<f32> = u_xlat3;
  u_xlat13 = (x_956 / vec3<f32>(x_957.x, x_957.x, x_957.x));
  let x_962 : vec4<f32> = x_160.x_ScaledScreenParams;
  let x_963 : vec2<f32> = vec2<f32>(x_962.x, x_962.y);
  let x_967 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_963.x, x_963.y));
  let x_968 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat3;
  let x_972 : vec4<f32> = hlslcc_FragCoord;
  let x_974 : vec2<f32> = (vec2<f32>(x_970.x, x_970.y) * vec2<f32>(x_972.x, x_972.y));
  let x_975 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_974.x, x_974.y, x_975.z, x_975.w);
  let x_979 : f32 = u_xlat3.y;
  let x_982 : f32 = x_160.x_ScaleBiasRt.x;
  let x_985 : f32 = x_160.x_ScaleBiasRt.y;
  u_xlat14.x = ((x_979 * x_982) + x_985);
  let x_989 : f32 = u_xlat14.x;
  u_xlat3.z = (-(x_989) + 1.0f);
  let x_994 : f32 = u_xlat8.x;
  u_xlat8.x = x_994;
  let x_997 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_997, 0.0f, 1.0f);
  let x_1000 : f32 = u_xlat34;
  u_xlat34 = x_1000;
  let x_1001 : f32 = u_xlat34;
  u_xlat34 = clamp(x_1001, 0.0f, 1.0f);
  let x_1003 : vec3<f32> = u_xlat7;
  u_xlat4 = (x_1003 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1008 : f32 = u_xlat8.x;
  u_xlat14.x = (-(x_1008) + 1.0f);
  let x_1014 : f32 = u_xlat14.x;
  let x_1016 : f32 = u_xlat14.x;
  u_xlat36 = (x_1014 * x_1016);
  let x_1018 : f32 = u_xlat36;
  u_xlat36 = max(x_1018, 0.0078125f);
  let x_1022 : f32 = u_xlat36;
  let x_1023 : f32 = u_xlat36;
  u_xlat37 = (x_1022 * x_1023);
  let x_1027 : f32 = u_xlat8.x;
  u_xlat38 = (x_1027 + 0.040000021f);
  let x_1030 : f32 = u_xlat38;
  u_xlat38 = min(x_1030, 1.0f);
  let x_1032 : f32 = u_xlat36;
  u_xlat6.x = ((x_1032 * 4.0f) + 2.0f);
  let x_1041 : vec4<f32> = u_xlat3;
  let x_1044 : f32 = x_160.x_GlobalMipBias.x;
  let x_1045 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1041.x, x_1041.z), x_1044);
  u_xlat3.x = x_1045.x;
  let x_1050 : f32 = u_xlat3.x;
  u_xlat25 = (x_1050 + -1.0f);
  let x_1053 : f32 = x_160.x_AmbientOcclusionParam.w;
  let x_1054 : f32 = u_xlat25;
  u_xlat25 = ((x_1053 * x_1054) + 1.0f);
  let x_1058 : f32 = u_xlat3.x;
  let x_1060 : f32 = vs_INTERP4.w;
  u_xlat3.x = min(x_1058, x_1060);
  let x_1064 : vec3<f32> = vs_INTERP0;
  let x_1066 : vec3<f32> = x_160.x_WorldSpaceCameraPos;
  u_xlat17 = (x_1064 + -(x_1066));
  let x_1069 : vec3<f32> = u_xlat17;
  let x_1070 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_1069, x_1070);
  let x_1074 : f32 = u_xlat17.x;
  let x_1076 : f32 = x_381.x_MainLightShadowParams.z;
  let x_1079 : f32 = x_381.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_1074 * x_1076) + x_1079);
  let x_1083 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1083, 0.0f, 1.0f);
  let x_1088 : f32 = u_xlat0.x;
  u_xlat28 = (-(x_1088) + 1.0f);
  let x_1092 : f32 = u_xlat17.x;
  let x_1093 : f32 = u_xlat28;
  let x_1096 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1092 * x_1093) + x_1096);
  let x_1099 : f32 = u_xlat25;
  let x_1102 : vec4<f32> = x_160.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_1099, x_1099, x_1099) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
  let x_1105 : vec3<f32> = u_xlat5;
  let x_1107 : vec3<f32> = u_xlat11;
  u_xlat7.x = dot(-(x_1105), x_1107);
  let x_1111 : f32 = u_xlat7.x;
  let x_1113 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1111 + x_1113);
  let x_1116 : vec3<f32> = u_xlat11;
  let x_1117 : vec3<f32> = u_xlat7;
  let x_1121 : vec3<f32> = u_xlat5;
  u_xlat7 = ((x_1116 * -(vec3<f32>(x_1117.x, x_1117.x, x_1117.x))) + -(x_1121));
  let x_1125 : vec3<f32> = u_xlat11;
  let x_1126 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(x_1125, x_1126);
  let x_1128 : f32 = u_xlat40;
  u_xlat40 = clamp(x_1128, 0.0f, 1.0f);
  let x_1130 : f32 = u_xlat40;
  u_xlat40 = (-(x_1130) + 1.0f);
  let x_1133 : f32 = u_xlat40;
  let x_1134 : f32 = u_xlat40;
  u_xlat40 = (x_1133 * x_1134);
  let x_1136 : f32 = u_xlat40;
  let x_1137 : f32 = u_xlat40;
  u_xlat40 = (x_1136 * x_1137);
  let x_1140 : f32 = u_xlat14.x;
  u_xlat8.x = ((-(x_1140) * 0.699999988f) + 1.700000048f);
  let x_1148 : f32 = u_xlat14.x;
  let x_1150 : f32 = u_xlat8.x;
  u_xlat14.x = (x_1148 * x_1150);
  let x_1154 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1154 * 6.0f);
  let x_1166 : vec3<f32> = u_xlat7;
  let x_1168 : f32 = u_xlat14.x;
  let x_1169 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1166, x_1168);
  u_xlat8 = x_1169;
  let x_1171 : f32 = u_xlat8.w;
  u_xlat14.x = (x_1171 + -1.0f);
  let x_1175 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1177 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_1175 * x_1177) + 1.0f);
  let x_1182 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1182, 0.0f);
  let x_1186 : f32 = u_xlat14.x;
  u_xlat14.x = log2(x_1186);
  let x_1190 : f32 = u_xlat14.x;
  let x_1192 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat14.x = (x_1190 * x_1192);
  let x_1196 : f32 = u_xlat14.x;
  u_xlat14.x = exp2(x_1196);
  let x_1200 : f32 = u_xlat14.x;
  let x_1202 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat14.x = (x_1200 * x_1202);
  let x_1205 : vec4<f32> = u_xlat8;
  let x_1207 : vec3<f32> = u_xlat14;
  u_xlat7 = (vec3<f32>(x_1205.x, x_1205.y, x_1205.z) * vec3<f32>(x_1207.x, x_1207.x, x_1207.x));
  let x_1210 : f32 = u_xlat36;
  let x_1212 : f32 = u_xlat36;
  let x_1216 : vec2<f32> = ((vec2<f32>(x_1210, x_1210) * vec2<f32>(x_1212, x_1212)) + vec2<f32>(-1.0f, 1.0f));
  let x_1217 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_1216.x, x_1217.y, x_1216.y);
  let x_1220 : f32 = u_xlat14.z;
  u_xlat36 = (1.0f / x_1220);
  let x_1222 : f32 = u_xlat38;
  u_xlat38 = (x_1222 + -0.039999999f);
  let x_1225 : f32 = u_xlat40;
  let x_1226 : f32 = u_xlat38;
  u_xlat38 = ((x_1225 * x_1226) + 0.039999999f);
  let x_1230 : f32 = u_xlat36;
  let x_1231 : f32 = u_xlat38;
  u_xlat36 = (x_1230 * x_1231);
  let x_1233 : f32 = u_xlat36;
  let x_1235 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1233, x_1233, x_1233) * x_1235);
  let x_1237 : vec3<f32> = u_xlat13;
  let x_1238 : vec3<f32> = u_xlat4;
  let x_1240 : vec3<f32> = u_xlat7;
  u_xlat13 = ((x_1237 * x_1238) + x_1240);
  let x_1243 : f32 = u_xlat0.x;
  let x_1245 : f32 = x_95.unity_LightData.z;
  u_xlat0.x = (x_1243 * x_1245);
  let x_1248 : vec3<f32> = u_xlat11;
  let x_1250 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat36 = dot(x_1248, vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1253, 0.0f, 1.0f);
  let x_1256 : f32 = u_xlat0.x;
  let x_1257 : f32 = u_xlat36;
  u_xlat0.x = (x_1256 * x_1257);
  let x_1260 : vec3<f32> = u_xlat0;
  let x_1262 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_1260.x, x_1260.x, x_1260.x) * x_1262);
  let x_1264 : vec3<f32> = u_xlat5;
  let x_1266 : vec4<f32> = x_160.x_MainLightPosition;
  u_xlat7 = (x_1264 + vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : vec3<f32> = u_xlat7;
  let x_1270 : vec3<f32> = u_xlat7;
  u_xlat0.x = dot(x_1269, x_1270);
  let x_1274 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1274, 1.17549435e-37f);
  let x_1278 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_1278);
  let x_1281 : vec3<f32> = u_xlat0;
  let x_1283 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1281.x, x_1281.x, x_1281.x) * x_1283);
  let x_1285 : vec3<f32> = u_xlat11;
  let x_1286 : vec3<f32> = u_xlat7;
  u_xlat0.x = dot(x_1285, x_1286);
  let x_1290 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1290, 0.0f, 1.0f);
  let x_1294 : vec4<f32> = x_160.x_MainLightPosition;
  let x_1296 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1294.x, x_1294.y, x_1294.z), x_1296);
  let x_1298 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1298, 0.0f, 1.0f);
  let x_1301 : f32 = u_xlat0.x;
  let x_1303 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1301 * x_1303);
  let x_1307 : f32 = u_xlat0.x;
  let x_1309 : f32 = u_xlat14.x;
  u_xlat0.x = ((x_1307 * x_1309) + 1.000010014f);
  let x_1314 : f32 = u_xlat36;
  let x_1315 : f32 = u_xlat36;
  u_xlat36 = (x_1314 * x_1315);
  let x_1318 : f32 = u_xlat0.x;
  let x_1320 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1318 * x_1320);
  let x_1323 : f32 = u_xlat36;
  u_xlat36 = max(x_1323, 0.100000001f);
  let x_1327 : f32 = u_xlat0.x;
  let x_1328 : f32 = u_xlat36;
  u_xlat0.x = (x_1327 * x_1328);
  let x_1332 : f32 = u_xlat6.x;
  let x_1334 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1332 * x_1334);
  let x_1337 : f32 = u_xlat37;
  let x_1339 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1337 / x_1339);
  let x_1342 : vec3<f32> = u_xlat0;
  let x_1346 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1342.x, x_1342.x, x_1342.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1346);
  let x_1348 : vec3<f32> = u_xlat17;
  let x_1349 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_1348 * x_1349);
  let x_1353 : f32 = x_160.x_AdditionalLightsCount.x;
  let x_1355 : f32 = x_95.unity_LightData.y;
  u_xlat0.x = min(x_1353, x_1355);
  let x_1359 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1359));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1371 : u32 = u_xlatu_loop_1;
    let x_1372 : u32 = u_xlatu0;
    if ((x_1371 < x_1372)) {
    } else {
      break;
    }
    let x_1375 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1375 >> 2u);
    let x_1378 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1378 & 3u));
    let x_1381 : u32 = u_xlatu38;
    let x_1384 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1381)];
    let x_1394 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1399 : vec4<u32> = indexable[x_1394];
    u_xlat38 = dot(x_1384, bitcast<vec4<f32>>(x_1399));
    let x_1403 : f32 = u_xlat38;
    u_xlati38 = i32(x_1403);
    let x_1405 : vec3<f32> = vs_INTERP0;
    let x_1417 : i32 = u_xlati38;
    let x_1419 : vec4<f32> = x_1416.x_AdditionalLightsPosition[x_1417];
    let x_1422 : i32 = u_xlati38;
    let x_1424 : vec4<f32> = x_1416.x_AdditionalLightsPosition[x_1422];
    let x_1426 : vec3<f32> = ((-(x_1405) * vec3<f32>(x_1419.w, x_1419.w, x_1419.w)) + vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
    let x_1427 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1427.w);
    let x_1429 : vec4<f32> = u_xlat8;
    let x_1431 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1429.x, x_1429.y, x_1429.z), vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
    let x_1434 : f32 = u_xlat40;
    u_xlat40 = max(x_1434, 6.10351562e-05f);
    let x_1438 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1438);
    let x_1440 : f32 = u_xlat41;
    let x_1442 : vec4<f32> = u_xlat8;
    let x_1444 : vec3<f32> = (vec3<f32>(x_1440, x_1440, x_1440) * vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
    let x_1445 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
    let x_1448 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1448);
    let x_1450 : f32 = u_xlat40;
    let x_1451 : i32 = u_xlati38;
    let x_1453 : f32 = x_1416.x_AdditionalLightsAttenuation[x_1451].x;
    u_xlat40 = (x_1450 * x_1453);
    let x_1455 : f32 = u_xlat40;
    let x_1457 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1455) * x_1457) + 1.0f);
    let x_1460 : f32 = u_xlat40;
    u_xlat40 = max(x_1460, 0.0f);
    let x_1462 : f32 = u_xlat40;
    let x_1463 : f32 = u_xlat40;
    u_xlat40 = (x_1462 * x_1463);
    let x_1465 : f32 = u_xlat40;
    let x_1466 : f32 = u_xlat42;
    u_xlat40 = (x_1465 * x_1466);
    let x_1468 : i32 = u_xlati38;
    let x_1470 : vec4<f32> = x_1416.x_AdditionalLightsSpotDir[x_1468];
    let x_1472 : vec4<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1470.x, x_1470.y, x_1470.z), vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
    let x_1475 : f32 = u_xlat42;
    let x_1476 : i32 = u_xlati38;
    let x_1478 : f32 = x_1416.x_AdditionalLightsAttenuation[x_1476].z;
    let x_1480 : i32 = u_xlati38;
    let x_1482 : f32 = x_1416.x_AdditionalLightsAttenuation[x_1480].w;
    u_xlat42 = ((x_1475 * x_1478) + x_1482);
    let x_1484 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1484, 0.0f, 1.0f);
    let x_1486 : f32 = u_xlat42;
    let x_1487 : f32 = u_xlat42;
    u_xlat42 = (x_1486 * x_1487);
    let x_1489 : f32 = u_xlat40;
    let x_1490 : f32 = u_xlat42;
    u_xlat40 = (x_1489 * x_1490);
    let x_1492 : f32 = u_xlat25;
    let x_1494 : i32 = u_xlati38;
    let x_1496 : vec4<f32> = x_1416.x_AdditionalLightsColor[x_1494];
    u_xlat10 = (vec3<f32>(x_1492, x_1492, x_1492) * vec3<f32>(x_1496.x, x_1496.y, x_1496.z));
    let x_1499 : vec3<f32> = u_xlat11;
    let x_1500 : vec4<f32> = u_xlat9;
    u_xlat38 = dot(x_1499, vec3<f32>(x_1500.x, x_1500.y, x_1500.z));
    let x_1503 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1503, 0.0f, 1.0f);
    let x_1505 : f32 = u_xlat38;
    let x_1506 : f32 = u_xlat40;
    u_xlat38 = (x_1505 * x_1506);
    let x_1508 : f32 = u_xlat38;
    let x_1510 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1508, x_1508, x_1508) * x_1510);
    let x_1512 : vec4<f32> = u_xlat8;
    let x_1514 : f32 = u_xlat41;
    let x_1517 : vec3<f32> = u_xlat5;
    let x_1518 : vec3<f32> = ((vec3<f32>(x_1512.x, x_1512.y, x_1512.z) * vec3<f32>(x_1514, x_1514, x_1514)) + x_1517);
    let x_1519 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1519.w);
    let x_1521 : vec4<f32> = u_xlat8;
    let x_1523 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1521.x, x_1521.y, x_1521.z), vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : f32 = u_xlat38;
    u_xlat38 = max(x_1526, 1.17549435e-37f);
    let x_1528 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1528);
    let x_1530 : f32 = u_xlat38;
    let x_1532 : vec4<f32> = u_xlat8;
    let x_1534 : vec3<f32> = (vec3<f32>(x_1530, x_1530, x_1530) * vec3<f32>(x_1532.x, x_1532.y, x_1532.z));
    let x_1535 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1534.x, x_1534.y, x_1534.z, x_1535.w);
    let x_1537 : vec3<f32> = u_xlat11;
    let x_1538 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1537, vec3<f32>(x_1538.x, x_1538.y, x_1538.z));
    let x_1541 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1541, 0.0f, 1.0f);
    let x_1543 : vec4<f32> = u_xlat9;
    let x_1545 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1543.x, x_1543.y, x_1543.z), vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
    let x_1548 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1548, 0.0f, 1.0f);
    let x_1550 : f32 = u_xlat38;
    let x_1551 : f32 = u_xlat38;
    u_xlat38 = (x_1550 * x_1551);
    let x_1553 : f32 = u_xlat38;
    let x_1555 : f32 = u_xlat14.x;
    u_xlat38 = ((x_1553 * x_1555) + 1.000010014f);
    let x_1558 : f32 = u_xlat40;
    let x_1559 : f32 = u_xlat40;
    u_xlat40 = (x_1558 * x_1559);
    let x_1561 : f32 = u_xlat38;
    let x_1562 : f32 = u_xlat38;
    u_xlat38 = (x_1561 * x_1562);
    let x_1564 : f32 = u_xlat40;
    u_xlat40 = max(x_1564, 0.100000001f);
    let x_1566 : f32 = u_xlat38;
    let x_1567 : f32 = u_xlat40;
    u_xlat38 = (x_1566 * x_1567);
    let x_1570 : f32 = u_xlat6.x;
    let x_1571 : f32 = u_xlat38;
    u_xlat38 = (x_1570 * x_1571);
    let x_1573 : f32 = u_xlat37;
    let x_1574 : f32 = u_xlat38;
    u_xlat38 = (x_1573 / x_1574);
    let x_1576 : f32 = u_xlat38;
    let x_1579 : vec3<f32> = u_xlat4;
    let x_1580 : vec3<f32> = ((vec3<f32>(x_1576, x_1576, x_1576) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1579);
    let x_1581 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
    let x_1583 : vec4<f32> = u_xlat8;
    let x_1585 : vec3<f32> = u_xlat10;
    let x_1587 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1583.x, x_1583.y, x_1583.z) * x_1585) + x_1587);

    continuing {
      let x_1589 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1589 + bitcast<u32>(1i));
    }
  }
  let x_1591 : vec3<f32> = u_xlat13;
  let x_1592 : vec4<f32> = u_xlat3;
  let x_1595 : vec3<f32> = u_xlat17;
  u_xlat0 = ((x_1591 * vec3<f32>(x_1592.x, x_1592.x, x_1592.x)) + x_1595);
  let x_1597 : vec3<f32> = u_xlat7;
  let x_1598 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1597 + x_1598);
  let x_1602 : vec4<f32> = vs_INTERP4;
  let x_1604 : vec3<f32> = u_xlat1;
  let x_1606 : vec3<f32> = u_xlat0;
  let x_1607 : vec3<f32> = ((vec3<f32>(x_1602.w, x_1602.w, x_1602.w) * x_1604) + x_1606);
  let x_1608 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1607.x, x_1607.y, x_1607.z, x_1608.w);
  let x_1611 : bool = u_xlatb2.x;
  let x_1612 : f32 = u_xlat34;
  SV_Target0.w = select(1.0f, x_1612, x_1611);
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

