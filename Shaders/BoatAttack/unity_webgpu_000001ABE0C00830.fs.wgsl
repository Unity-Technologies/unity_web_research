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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_90 : PGlobals;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_161 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_271 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1070 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1510 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1613 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb42 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat2 : vec3<f32>;
  var x_118 : f32;
  var x_132 : f32;
  var x_145 : f32;
  var u_xlat42 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb6 : vec4<bool>;
  var u_xlatu42 : u32;
  var u_xlati42 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb43 : bool;
  var u_xlatb44 : bool;
  var u_xlat44 : f32;
  var x_533 : f32;
  var u_xlatu1 : vec3<u32>;
  var u_xlatu29 : u32;
  var u_xlatu3 : u32;
  var u_xlati29 : i32;
  var u_xlati15 : i32;
  var u_xlatu15 : u32;
  var u_xlati1 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat15 : f32;
  var x_664 : f32;
  var u_xlatb29 : vec2<bool>;
  var u_xlat29 : vec2<f32>;
  var u_xlatb15 : bool;
  var x_737 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_1153 : f32;
  var x_1164 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1907 : f32;
  var x_1920 : f32;
  var x_1972 : f32;
  var x_1983 : vec3<f32>;
  var x_2121 : f32;
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
  u_xlatb42 = (x_94 == 0.0f);
  let x_99 : vec3<f32> = vs_INTERP0;
  let x_104 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_99) + x_104);
  let x_107 : vec3<f32> = u_xlat1;
  let x_108 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat43;
  let x_114 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_117 : bool = u_xlatb42;
  if (x_117) {
    let x_122 : f32 = u_xlat1.x;
    x_118 = x_122;
  } else {
    let x_128 : f32 = x_90.unity_MatrixV[0i].z;
    x_118 = x_128;
  }
  let x_129 : f32 = x_118;
  u_xlat2.x = x_129;
  let x_131 : bool = u_xlatb42;
  if (x_131) {
    let x_137 : f32 = u_xlat1.y;
    x_132 = x_137;
  } else {
    let x_141 : f32 = x_90.unity_MatrixV[1i].z;
    x_132 = x_141;
  }
  let x_142 : f32 = x_132;
  u_xlat2.y = x_142;
  let x_144 : bool = u_xlatb42;
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
  u_xlat42 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat42;
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
  u_xlat42 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_244);
  let x_247 : f32 = u_xlat42;
  let x_249 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_254 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_254 * 200.0f);
  let x_257 : f32 = u_xlat42;
  u_xlat42 = min(x_257, 1.0f);
  let x_259 : f32 = u_xlat42;
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec3<f32> = (vec3<f32>(x_259, x_259, x_259) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_273 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres0;
  let x_276 : vec3<f32> = (x_266 + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_280 : vec3<f32> = vs_INTERP0;
  let x_282 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres1;
  let x_285 : vec3<f32> = (x_280 + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_289 : vec3<f32> = vs_INTERP0;
  let x_292 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres2;
  let x_295 : vec3<f32> = (x_289 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_299 : vec3<f32> = vs_INTERP0;
  let x_302 : vec4<f32> = x_271.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_299 + -(vec3<f32>(x_302.x, x_302.y, x_302.z)));
  let x_306 : vec4<f32> = u_xlat6;
  let x_308 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_312 : vec4<f32> = u_xlat7;
  let x_314 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_318 : vec4<f32> = u_xlat8;
  let x_320 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec3<f32> = u_xlat9;
  let x_325 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_324, x_325);
  let x_331 : vec4<f32> = u_xlat6;
  let x_334 : vec4<f32> = x_271.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_331 < x_334);
  let x_337 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_337);
  let x_341 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_341);
  let x_345 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_345);
  let x_349 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_349);
  let x_353 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_353);
  let x_358 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_358);
  let x_362 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_362);
  let x_365 : vec4<f32> = u_xlat6;
  let x_367 : vec4<f32> = u_xlat7;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) + vec3<f32>(x_367.y, x_367.z, x_367.w));
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat6;
  let x_375 : vec3<f32> = max(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_376 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_376.x, x_375.x, x_375.y, x_375.z);
  let x_378 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_378, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_383 : f32 = u_xlat42;
  u_xlat42 = (-(x_383) + 4.0f);
  let x_387 : f32 = u_xlat42;
  u_xlatu42 = u32(x_387);
  let x_390 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_390) << bitcast<u32>(2i));
  let x_393 : vec3<f32> = vs_INTERP0;
  let x_395 : i32 = u_xlati42;
  let x_398 : i32 = u_xlati42;
  let x_402 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_395 + 1i) / 4i)][((x_398 + 1i) % 4i)];
  let x_404 : vec3<f32> = (vec3<f32>(x_393.y, x_393.y, x_393.y) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : i32 = u_xlati42;
  let x_409 : i32 = u_xlati42;
  let x_412 : vec4<f32> = x_271.x_MainLightWorldToShadow[(x_407 / 4i)][(x_409 % 4i)];
  let x_414 : vec3<f32> = vs_INTERP0;
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.x, x_414.x, x_414.x)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : i32 = u_xlati42;
  let x_425 : i32 = u_xlati42;
  let x_429 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_422 + 2i) / 4i)][((x_425 + 2i) % 4i)];
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_434 : vec4<f32> = u_xlat6;
  let x_436 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431.z, x_431.z, x_431.z)) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat6;
  let x_441 : i32 = u_xlati42;
  let x_444 : i32 = u_xlati42;
  let x_448 : vec4<f32> = x_271.x_MainLightWorldToShadow[((x_441 + 3i) / 4i)][((x_444 + 3i) % 4i)];
  let x_450 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : vec4<f32> = u_xlat6;
  let x_455 : vec2<f32> = vec2<f32>(x_454.x, x_454.y);
  let x_457 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_455.x, x_455.y, x_457);
  let x_469 : vec3<f32> = txVec0;
  let x_471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_469.xy, x_469.z);
  u_xlat42 = x_471;
  let x_474 : f32 = x_271.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_474) + 1.0f);
  let x_477 : f32 = u_xlat42;
  let x_479 : f32 = x_271.x_MainLightShadowParams.x;
  let x_481 : f32 = u_xlat43;
  u_xlat42 = ((x_477 * x_479) + x_481);
  let x_485 : f32 = u_xlat6.z;
  u_xlatb43 = (0.0f >= x_485);
  let x_489 : f32 = u_xlat6.z;
  u_xlatb44 = (x_489 >= 1.0f);
  let x_491 : bool = u_xlatb43;
  let x_492 : bool = u_xlatb44;
  u_xlatb43 = (x_491 | x_492);
  let x_494 : bool = u_xlatb43;
  let x_495 : f32 = u_xlat42;
  u_xlat42 = select(x_495, 1.0f, x_494);
  let x_497 : vec3<f32> = u_xlat0;
  let x_499 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_497, -(vec3<f32>(x_499.x, x_499.y, x_499.z)));
  let x_505 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_505, 0.0f, 1.0f);
  let x_508 : f32 = u_xlat42;
  let x_511 : vec4<f32> = x_90.x_MainLightColor;
  let x_513 : vec3<f32> = (vec3<f32>(x_508, x_508, x_508) * vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec3<f32> = u_xlat0;
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_516.x, x_516.x, x_516.x) * vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec3<f32> = u_xlat0;
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_521 * vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_526 : f32 = x_161.unity_LODFade.x;
  u_xlatb43 = (x_526 < 0.0f);
  let x_530 : f32 = x_161.unity_LODFade.x;
  u_xlat44 = (x_530 + 1.0f);
  let x_532 : bool = u_xlatb43;
  if (x_532) {
    let x_536 : f32 = u_xlat44;
    x_533 = x_536;
  } else {
    let x_539 : f32 = x_161.unity_LODFade.x;
    x_533 = x_539;
  }
  let x_540 : f32 = x_533;
  u_xlat43 = x_540;
  let x_542 : f32 = u_xlat43;
  u_xlatb44 = (0.5f >= x_542);
  let x_544 : vec3<f32> = u_xlat1;
  let x_547 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_544) * vec3<f32>(x_547.x, x_547.y, x_547.x));
  let x_553 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_553);
  let x_557 : u32 = u_xlatu1.z;
  u_xlatu29 = (x_557 * 1025u);
  let x_561 : u32 = u_xlatu29;
  u_xlatu3 = (x_561 >> 6u);
  let x_565 : u32 = u_xlatu29;
  let x_566 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_565 ^ x_566));
  let x_569 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_569) * 9u);
  let x_573 : u32 = u_xlatu29;
  u_xlatu3 = (x_573 >> 11u);
  let x_576 : u32 = u_xlatu29;
  let x_577 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_576 ^ x_577));
  let x_580 : i32 = u_xlati29;
  u_xlati29 = (x_580 * 32769i);
  let x_584 : i32 = u_xlati29;
  let x_587 : u32 = u_xlatu1.y;
  u_xlati15 = bitcast<i32>((bitcast<u32>(x_584) ^ x_587));
  let x_591 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_591) * 1025u);
  let x_594 : u32 = u_xlatu15;
  u_xlatu29 = (x_594 >> 6u);
  let x_596 : u32 = u_xlatu29;
  let x_597 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_596 ^ x_597));
  let x_600 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_600) * 9u);
  let x_603 : u32 = u_xlatu15;
  u_xlatu29 = (x_603 >> 11u);
  let x_605 : u32 = u_xlatu29;
  let x_606 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_605 ^ x_606));
  let x_609 : i32 = u_xlati15;
  u_xlati15 = (x_609 * 32769i);
  let x_612 : i32 = u_xlati15;
  let x_615 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_612) ^ x_615));
  let x_618 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_618) * 1025u);
  let x_623 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_623 >> 6u);
  let x_625 : u32 = u_xlatu15;
  let x_627 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_625 ^ x_627));
  let x_630 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_630) * 9u);
  let x_635 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_635 >> 11u);
  let x_637 : u32 = u_xlatu15;
  let x_639 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_637 ^ x_639));
  let x_642 : i32 = u_xlati1;
  u_xlati1 = (x_642 * 32769i);
  param = 1065353216i;
  let x_648 : i32 = u_xlati1;
  param_1 = x_648;
  param_2 = 0i;
  param_3 = 23i;
  let x_651 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_651);
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = (x_655 + -1.0f);
  let x_660 : f32 = u_xlat1.x;
  u_xlat15 = (-(x_660) + 1.0f);
  let x_663 : bool = u_xlatb44;
  if (x_663) {
    let x_668 : f32 = u_xlat1.x;
    x_664 = x_668;
  } else {
    let x_670 : f32 = u_xlat15;
    x_664 = x_670;
  }
  let x_671 : f32 = x_664;
  u_xlat1.x = x_671;
  let x_673 : f32 = u_xlat43;
  let x_676 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_673 * 2.0f) + -(x_676));
  let x_681 : f32 = u_xlat1.x;
  let x_683 : f32 = u_xlat3.w;
  u_xlat15 = (x_681 * x_683);
  let x_688 : f32 = u_xlat15;
  u_xlatb29.x = (x_688 >= 0.400000006f);
  let x_695 : bool = u_xlatb29.x;
  let x_696 : f32 = u_xlat15;
  u_xlat29.x = select(0.0f, x_696, x_695);
  let x_700 : f32 = u_xlat3.w;
  let x_702 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_700 * x_702) + -0.400000006f);
  let x_707 : f32 = u_xlat15;
  u_xlat43 = dpdxCoarse(x_707);
  let x_709 : f32 = u_xlat15;
  u_xlat15 = dpdyCoarse(x_709);
  let x_711 : f32 = u_xlat15;
  let x_713 : f32 = u_xlat43;
  u_xlat15 = (abs(x_711) + abs(x_713));
  let x_716 : f32 = u_xlat15;
  u_xlat15 = max(x_716, 0.0001f);
  let x_720 : f32 = u_xlat1.x;
  let x_721 : f32 = u_xlat15;
  u_xlat1.x = (x_720 / x_721);
  let x_725 : f32 = u_xlat1.x;
  u_xlat1.x = (x_725 + 0.5f);
  let x_729 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_729, 0.0f, 1.0f);
  let x_734 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb15 = !((x_734 == 0.0f));
  let x_736 : bool = u_xlatb15;
  if (x_736) {
    let x_741 : f32 = u_xlat1.x;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat29.x;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  u_xlat1.x = x_745;
  let x_748 : f32 = u_xlat1.x;
  u_xlat29.x = (x_748 + -0.0001f);
  let x_753 : f32 = u_xlat29.x;
  u_xlatb29.x = (x_753 < 0.0f);
  let x_757 : bool = u_xlatb29.x;
  if (((select(0i, 1i, x_757) * -1i) != 0i)) {
    discard;
  }
  let x_767 : f32 = vs_INTERP2.w;
  u_xlatb29.x = (0.0f < x_767);
  let x_771 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_771 >= 0.0f);
  let x_775 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_775);
  let x_779 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_779);
  let x_783 : f32 = u_xlat29.y;
  let x_785 : f32 = u_xlat29.x;
  u_xlat29.x = (x_783 * x_785);
  let x_788 : vec3<f32> = vs_INTERP1;
  let x_790 : vec4<f32> = vs_INTERP2;
  let x_792 : vec3<f32> = (vec3<f32>(x_788.z, x_788.x, x_788.y) * vec3<f32>(x_790.y, x_790.z, x_790.x));
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec3<f32> = vs_INTERP1;
  let x_797 : vec4<f32> = vs_INTERP2;
  let x_800 : vec4<f32> = u_xlat3;
  let x_803 : vec3<f32> = ((vec3<f32>(x_795.y, x_795.z, x_795.x) * vec3<f32>(x_797.z, x_797.x, x_797.y)) + -(vec3<f32>(x_800.x, x_800.y, x_800.z)));
  let x_804 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec2<f32> = u_xlat29;
  let x_808 : vec4<f32> = u_xlat3;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.x, x_806.x) * vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat3;
  let x_815 : vec3<f32> = u_xlat19;
  let x_817 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_815.y, x_815.y, x_815.y));
  let x_818 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec3<f32> = u_xlat19;
  let x_822 : vec4<f32> = vs_INTERP2;
  let x_825 : vec4<f32> = u_xlat3;
  let x_827 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.x, x_820.x) * vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec3<f32> = u_xlat19;
  let x_832 : vec3<f32> = vs_INTERP1;
  let x_834 : vec4<f32> = u_xlat3;
  let x_836 : vec3<f32> = ((vec3<f32>(x_830.z, x_830.z, x_830.z) * x_832) + vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat3;
  let x_841 : vec4<f32> = u_xlat3;
  u_xlat29.x = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_846 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_846);
  let x_849 : vec2<f32> = u_xlat29;
  let x_851 : vec4<f32> = u_xlat3;
  let x_853 : vec3<f32> = (vec3<f32>(x_849.x, x_849.x, x_849.x) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  u_xlat3.w = 1.0f;
  let x_859 : vec4<f32> = x_161.unity_SHAr;
  let x_860 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_859, x_860);
  let x_865 : vec4<f32> = x_161.unity_SHAg;
  let x_866 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_865, x_866);
  let x_871 : vec4<f32> = x_161.unity_SHAb;
  let x_872 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_871, x_872);
  let x_875 : vec4<f32> = u_xlat3;
  let x_877 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_875.y, x_875.z, x_875.z, x_875.x) * vec4<f32>(x_877.x, x_877.y, x_877.z, x_877.z));
  let x_882 : vec4<f32> = x_161.unity_SHBr;
  let x_883 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_882, x_883);
  let x_888 : vec4<f32> = x_161.unity_SHBg;
  let x_889 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_888, x_889);
  let x_893 : vec4<f32> = x_161.unity_SHBb;
  let x_894 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_893, x_894);
  let x_898 : f32 = u_xlat3.y;
  let x_900 : f32 = u_xlat3.y;
  u_xlat29.x = (x_898 * x_900);
  let x_904 : f32 = u_xlat3.x;
  let x_906 : f32 = u_xlat3.x;
  let x_909 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_904 * x_906) + -(x_909));
  let x_915 : vec4<f32> = x_161.unity_SHC;
  let x_917 : vec2<f32> = u_xlat29;
  let x_920 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_917.x, x_917.x, x_917.x)) + vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : vec3<f32> = u_xlat19;
  let x_924 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_923 + vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_927, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_931 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_932 : vec2<f32> = vec2<f32>(x_931.x, x_931.y);
  u_xlat29 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_932.x, x_932.y));
  let x_937 : vec2<f32> = u_xlat29;
  let x_938 : vec4<f32> = hlslcc_FragCoord;
  let x_940 : vec2<f32> = (x_937 * vec2<f32>(x_938.x, x_938.y));
  let x_941 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
  let x_944 : f32 = u_xlat6.y;
  let x_947 : f32 = x_90.x_ScaleBiasRt.x;
  let x_950 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat29.x = ((x_944 * x_947) + x_950);
  let x_954 : f32 = u_xlat29.x;
  u_xlat6.z = (-(x_954) + 1.0f);
  let x_959 : f32 = u_xlat5.x;
  u_xlat5.x = x_959;
  let x_962 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_962, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat1.x;
  u_xlat1.x = x_966;
  let x_969 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_969, 0.0f, 1.0f);
  let x_972 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_972 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_977 : f32 = u_xlat5.x;
  u_xlat29.x = (-(x_977) + 1.0f);
  let x_982 : f32 = u_xlat29.x;
  let x_984 : f32 = u_xlat29.x;
  u_xlat43 = (x_982 * x_984);
  let x_986 : f32 = u_xlat43;
  u_xlat43 = max(x_986, 0.0078125f);
  let x_989 : f32 = u_xlat43;
  let x_990 : f32 = u_xlat43;
  u_xlat44 = (x_989 * x_990);
  let x_994 : f32 = u_xlat5.x;
  u_xlat45 = (x_994 + 0.040000021f);
  let x_997 : f32 = u_xlat45;
  u_xlat45 = min(x_997, 1.0f);
  let x_1000 : f32 = u_xlat43;
  u_xlat46 = ((x_1000 * 4.0f) + 2.0f);
  let x_1008 : vec4<f32> = u_xlat6;
  let x_1011 : f32 = x_90.x_GlobalMipBias.x;
  let x_1012 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1008.x, x_1008.z), x_1011);
  u_xlat5.x = x_1012.x;
  let x_1016 : f32 = u_xlat5.x;
  u_xlat6.x = (x_1016 + -1.0f);
  let x_1020 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1022 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1020 * x_1022) + 1.0f);
  let x_1027 : f32 = u_xlat5.x;
  let x_1029 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1027, x_1029);
  let x_1033 : vec3<f32> = vs_INTERP0;
  let x_1035 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_1033 + -(x_1035));
  let x_1038 : vec3<f32> = u_xlat20;
  let x_1039 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_1038, x_1039);
  let x_1043 : f32 = u_xlat20.x;
  let x_1045 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1048 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1043 * x_1045) + x_1048);
  let x_1052 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1052, 0.0f, 1.0f);
  let x_1056 : f32 = u_xlat42;
  u_xlat34 = (-(x_1056) + 1.0f);
  let x_1060 : f32 = u_xlat20.x;
  let x_1061 : f32 = u_xlat34;
  let x_1063 : f32 = u_xlat42;
  u_xlat42 = ((x_1060 * x_1061) + x_1063);
  let x_1072 : f32 = x_1070.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1072 == -1.0f));
  let x_1076 : bool = u_xlatb20.x;
  if (x_1076) {
    let x_1079 : vec3<f32> = vs_INTERP0;
    let x_1082 : vec4<f32> = x_1070.x_MainLightWorldToLight[1i];
    let x_1084 : vec2<f32> = (vec2<f32>(x_1079.y, x_1079.y) * vec2<f32>(x_1082.x, x_1082.y));
    let x_1085 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1084.x, x_1084.y, x_1085.z);
    let x_1088 : vec4<f32> = x_1070.x_MainLightWorldToLight[0i];
    let x_1090 : vec3<f32> = vs_INTERP0;
    let x_1093 : vec3<f32> = u_xlat20;
    let x_1095 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(x_1090.x, x_1090.x)) + vec2<f32>(x_1093.x, x_1093.y));
    let x_1096 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1095.x, x_1095.y, x_1096.z);
    let x_1099 : vec4<f32> = x_1070.x_MainLightWorldToLight[2i];
    let x_1101 : vec3<f32> = vs_INTERP0;
    let x_1104 : vec3<f32> = u_xlat20;
    let x_1106 : vec2<f32> = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1101.z, x_1101.z)) + vec2<f32>(x_1104.x, x_1104.y));
    let x_1107 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1106.x, x_1106.y, x_1107.z);
    let x_1109 : vec3<f32> = u_xlat20;
    let x_1112 : vec4<f32> = x_1070.x_MainLightWorldToLight[3i];
    let x_1114 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) + vec2<f32>(x_1112.x, x_1112.y));
    let x_1115 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1114.x, x_1114.y, x_1115.z);
    let x_1117 : vec3<f32> = u_xlat20;
    let x_1121 : vec2<f32> = ((vec2<f32>(x_1117.x, x_1117.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1122 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1121.x, x_1121.y, x_1122.z);
    let x_1129 : vec3<f32> = u_xlat20;
    let x_1132 : f32 = x_90.x_GlobalMipBias.x;
    let x_1133 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1129.x, x_1129.y), x_1132);
    u_xlat7 = x_1133;
    let x_1135 : f32 = x_1070.x_MainLightCookieTextureFormat;
    let x_1137 : f32 = x_1070.x_MainLightCookieTextureFormat;
    let x_1139 : f32 = x_1070.x_MainLightCookieTextureFormat;
    let x_1141 : f32 = x_1070.x_MainLightCookieTextureFormat;
    let x_1142 : vec4<f32> = vec4<f32>(x_1135, x_1137, x_1139, x_1141);
    let x_1149 : vec4<bool> = (vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1142.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1149.x, x_1149.y);
    let x_1152 : bool = u_xlatb20.y;
    if (x_1152) {
      let x_1157 : f32 = u_xlat7.w;
      x_1153 = x_1157;
    } else {
      let x_1160 : f32 = u_xlat7.x;
      x_1153 = x_1160;
    }
    let x_1161 : f32 = x_1153;
    u_xlat34 = x_1161;
    let x_1163 : bool = u_xlatb20.x;
    if (x_1163) {
      let x_1167 : vec4<f32> = u_xlat7;
      x_1164 = vec3<f32>(x_1167.x, x_1167.y, x_1167.z);
    } else {
      let x_1170 : f32 = u_xlat34;
      x_1164 = vec3<f32>(x_1170, x_1170, x_1170);
    }
    let x_1172 : vec3<f32> = x_1164;
    u_xlat20 = x_1172;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1177 : vec3<f32> = u_xlat20;
  let x_1179 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1177 * vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat6;
  let x_1184 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1182.x, x_1182.x, x_1182.x) * x_1184);
  let x_1186 : vec3<f32> = u_xlat2;
  let x_1188 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1186), vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1193 : f32 = u_xlat7.x;
  let x_1195 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1193 + x_1195);
  let x_1198 : vec4<f32> = u_xlat3;
  let x_1200 : vec4<f32> = u_xlat7;
  let x_1204 : vec3<f32> = u_xlat2;
  let x_1206 : vec3<f32> = ((vec3<f32>(x_1198.x, x_1198.y, x_1198.z) * -(vec3<f32>(x_1200.x, x_1200.x, x_1200.x))) + -(x_1204));
  let x_1207 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1210 : vec4<f32> = u_xlat3;
  let x_1212 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1210.x, x_1210.y, x_1210.z), x_1212);
  let x_1214 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1214, 0.0f, 1.0f);
  let x_1216 : f32 = u_xlat49;
  u_xlat49 = (-(x_1216) + 1.0f);
  let x_1219 : f32 = u_xlat49;
  let x_1220 : f32 = u_xlat49;
  u_xlat49 = (x_1219 * x_1220);
  let x_1222 : f32 = u_xlat49;
  let x_1223 : f32 = u_xlat49;
  u_xlat49 = (x_1222 * x_1223);
  let x_1226 : f32 = u_xlat29.x;
  u_xlat8.x = ((-(x_1226) * 0.699999988f) + 1.700000048f);
  let x_1234 : f32 = u_xlat29.x;
  let x_1236 : f32 = u_xlat8.x;
  u_xlat29.x = (x_1234 * x_1236);
  let x_1240 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1240 * 6.0f);
  let x_1252 : vec4<f32> = u_xlat7;
  let x_1255 : f32 = u_xlat29.x;
  let x_1256 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1252.x, x_1252.y, x_1252.z), x_1255);
  u_xlat8 = x_1256;
  let x_1258 : f32 = u_xlat8.w;
  u_xlat29.x = (x_1258 + -1.0f);
  let x_1262 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1264 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1262 * x_1264) + 1.0f);
  let x_1269 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1269, 0.0f);
  let x_1273 : f32 = u_xlat29.x;
  u_xlat29.x = log2(x_1273);
  let x_1277 : f32 = u_xlat29.x;
  let x_1279 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat29.x = (x_1277 * x_1279);
  let x_1283 : f32 = u_xlat29.x;
  u_xlat29.x = exp2(x_1283);
  let x_1287 : f32 = u_xlat29.x;
  let x_1289 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat29.x = (x_1287 * x_1289);
  let x_1292 : vec4<f32> = u_xlat8;
  let x_1294 : vec2<f32> = u_xlat29;
  let x_1296 : vec3<f32> = (vec3<f32>(x_1292.x, x_1292.y, x_1292.z) * vec3<f32>(x_1294.x, x_1294.x, x_1294.x));
  let x_1297 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : f32 = u_xlat43;
  let x_1301 : f32 = u_xlat43;
  u_xlat29 = ((vec2<f32>(x_1299, x_1299) * vec2<f32>(x_1301, x_1301)) + vec2<f32>(-1.0f, 1.0f));
  let x_1307 : f32 = u_xlat29.y;
  u_xlat43 = (1.0f / x_1307);
  let x_1309 : f32 = u_xlat45;
  u_xlat45 = (x_1309 + -0.039999999f);
  let x_1312 : f32 = u_xlat49;
  let x_1313 : f32 = u_xlat45;
  u_xlat45 = ((x_1312 * x_1313) + 0.039999999f);
  let x_1317 : f32 = u_xlat43;
  let x_1318 : f32 = u_xlat45;
  u_xlat43 = (x_1317 * x_1318);
  let x_1320 : f32 = u_xlat43;
  let x_1322 : vec4<f32> = u_xlat7;
  let x_1324 : vec3<f32> = (vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1327 : vec3<f32> = u_xlat19;
  let x_1328 : vec3<f32> = u_xlat4;
  let x_1330 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1327 * x_1328) + vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : f32 = u_xlat42;
  let x_1335 : f32 = x_161.unity_LightData.z;
  u_xlat42 = (x_1333 * x_1335);
  let x_1337 : vec4<f32> = u_xlat3;
  let x_1340 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1337.x, x_1337.y, x_1337.z), vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
  let x_1343 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1343, 0.0f, 1.0f);
  let x_1345 : f32 = u_xlat42;
  let x_1346 : f32 = u_xlat43;
  u_xlat42 = (x_1345 * x_1346);
  let x_1348 : f32 = u_xlat42;
  let x_1350 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1348, x_1348, x_1348) * x_1350);
  let x_1352 : vec3<f32> = u_xlat2;
  let x_1354 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1356 : vec3<f32> = (x_1352 + vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
  let x_1357 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
  let x_1359 : vec4<f32> = u_xlat7;
  let x_1361 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1359.x, x_1359.y, x_1359.z), vec3<f32>(x_1361.x, x_1361.y, x_1361.z));
  let x_1364 : f32 = u_xlat42;
  u_xlat42 = max(x_1364, 1.17549435e-37f);
  let x_1367 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1367);
  let x_1369 : f32 = u_xlat42;
  let x_1371 : vec4<f32> = u_xlat7;
  let x_1373 : vec3<f32> = (vec3<f32>(x_1369, x_1369, x_1369) * vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1376 : vec4<f32> = u_xlat3;
  let x_1378 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1376.x, x_1376.y, x_1376.z), vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1381 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1381, 0.0f, 1.0f);
  let x_1384 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1386 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1384.x, x_1384.y, x_1384.z), vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
  let x_1389 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1389, 0.0f, 1.0f);
  let x_1391 : f32 = u_xlat42;
  let x_1392 : f32 = u_xlat42;
  u_xlat42 = (x_1391 * x_1392);
  let x_1394 : f32 = u_xlat42;
  let x_1396 : f32 = u_xlat29.x;
  u_xlat42 = ((x_1394 * x_1396) + 1.000010014f);
  let x_1400 : f32 = u_xlat43;
  let x_1401 : f32 = u_xlat43;
  u_xlat43 = (x_1400 * x_1401);
  let x_1403 : f32 = u_xlat42;
  let x_1404 : f32 = u_xlat42;
  u_xlat42 = (x_1403 * x_1404);
  let x_1406 : f32 = u_xlat43;
  u_xlat43 = max(x_1406, 0.100000001f);
  let x_1409 : f32 = u_xlat42;
  let x_1410 : f32 = u_xlat43;
  u_xlat42 = (x_1409 * x_1410);
  let x_1412 : f32 = u_xlat46;
  let x_1413 : f32 = u_xlat42;
  u_xlat42 = (x_1412 * x_1413);
  let x_1415 : f32 = u_xlat44;
  let x_1416 : f32 = u_xlat42;
  u_xlat42 = (x_1415 / x_1416);
  let x_1418 : f32 = u_xlat42;
  let x_1422 : vec3<f32> = u_xlat4;
  let x_1423 : vec3<f32> = ((vec3<f32>(x_1418, x_1418, x_1418) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1422);
  let x_1424 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
  let x_1426 : vec3<f32> = u_xlat20;
  let x_1427 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1426 * vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1432 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1434 : f32 = x_161.unity_LightData.y;
  u_xlat42 = min(x_1432, x_1434);
  let x_1436 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1436));
  let x_1441 : f32 = x_1070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1443 : f32 = x_1070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1445 : f32 = x_1070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1447 : f32 = x_1070.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1448 : vec4<f32> = vec4<f32>(x_1441, x_1443, x_1445, x_1447);
  let x_1454 : vec4<bool> = (vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1448.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1454.x, x_1454.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1465 : u32 = u_xlatu_loop_1;
    let x_1466 : u32 = u_xlatu42;
    if ((x_1465 < x_1466)) {
    } else {
      break;
    }
    let x_1469 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1469 >> 2u);
    let x_1472 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1472 & 3u));
    let x_1475 : u32 = u_xlatu45;
    let x_1478 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1475)];
    let x_1488 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1493 : vec4<u32> = indexable[x_1488];
    u_xlat45 = dot(x_1478, bitcast<vec4<f32>>(x_1493));
    let x_1496 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1496));
    let x_1499 : vec3<f32> = vs_INTERP0;
    let x_1511 : u32 = u_xlatu45;
    let x_1514 : vec4<f32> = x_1510.x_AdditionalLightsPosition[bitcast<i32>(x_1511)];
    let x_1517 : u32 = u_xlatu45;
    let x_1520 : vec4<f32> = x_1510.x_AdditionalLightsPosition[bitcast<i32>(x_1517)];
    u_xlat9 = ((-(x_1499) * vec3<f32>(x_1514.w, x_1514.w, x_1514.w)) + vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
    let x_1524 : vec3<f32> = u_xlat9;
    let x_1525 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1524, x_1525);
    let x_1527 : f32 = u_xlat35;
    u_xlat35 = max(x_1527, 6.10351562e-05f);
    let x_1530 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1530);
    let x_1533 : f32 = u_xlat49;
    let x_1535 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1533, x_1533, x_1533) * x_1535);
    let x_1538 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1538);
    let x_1540 : f32 = u_xlat35;
    let x_1541 : u32 = u_xlatu45;
    let x_1544 : f32 = x_1510.x_AdditionalLightsAttenuation[bitcast<i32>(x_1541)].x;
    u_xlat35 = (x_1540 * x_1544);
    let x_1546 : f32 = u_xlat35;
    let x_1548 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1546) * x_1548) + 1.0f);
    let x_1551 : f32 = u_xlat35;
    u_xlat35 = max(x_1551, 0.0f);
    let x_1553 : f32 = u_xlat35;
    let x_1554 : f32 = u_xlat35;
    u_xlat35 = (x_1553 * x_1554);
    let x_1556 : f32 = u_xlat35;
    let x_1557 : f32 = u_xlat50;
    u_xlat35 = (x_1556 * x_1557);
    let x_1559 : u32 = u_xlatu45;
    let x_1562 : vec4<f32> = x_1510.x_AdditionalLightsSpotDir[bitcast<i32>(x_1559)];
    let x_1564 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1562.x, x_1562.y, x_1562.z), x_1564);
    let x_1566 : f32 = u_xlat50;
    let x_1567 : u32 = u_xlatu45;
    let x_1570 : f32 = x_1510.x_AdditionalLightsAttenuation[bitcast<i32>(x_1567)].z;
    let x_1572 : u32 = u_xlatu45;
    let x_1575 : f32 = x_1510.x_AdditionalLightsAttenuation[bitcast<i32>(x_1572)].w;
    u_xlat50 = ((x_1566 * x_1570) + x_1575);
    let x_1577 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1577, 0.0f, 1.0f);
    let x_1579 : f32 = u_xlat50;
    let x_1580 : f32 = u_xlat50;
    u_xlat50 = (x_1579 * x_1580);
    let x_1582 : f32 = u_xlat35;
    let x_1583 : f32 = u_xlat50;
    u_xlat35 = (x_1582 * x_1583);
    let x_1586 : u32 = u_xlatu45;
    u_xlatu50 = (x_1586 >> 5u);
    let x_1589 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1589) & 31i)));
    let x_1595 : i32 = u_xlati51;
    let x_1597 : u32 = u_xlatu50;
    let x_1600 : f32 = x_1070.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1597)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1595) & bitcast<u32>(x_1600)));
    let x_1604 : i32 = u_xlati50;
    if ((x_1604 != 0i)) {
      let x_1614 : u32 = u_xlatu45;
      let x_1617 : f32 = x_1613.x_AdditionalLightsLightTypes[bitcast<i32>(x_1614)].el;
      u_xlati50 = i32(x_1617);
      let x_1619 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1619 != 0i));
      let x_1623 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1623) << bitcast<u32>(2i));
      let x_1626 : i32 = u_xlati51;
      if ((x_1626 != 0i)) {
        let x_1631 : vec3<f32> = vs_INTERP0;
        let x_1633 : i32 = u_xlati52;
        let x_1636 : i32 = u_xlati52;
        let x_1640 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1633 + 1i) / 4i)][((x_1636 + 1i) % 4i)];
        let x_1642 : vec3<f32> = (vec3<f32>(x_1631.y, x_1631.y, x_1631.y) * vec3<f32>(x_1640.x, x_1640.y, x_1640.w));
        let x_1643 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
        let x_1645 : i32 = u_xlati52;
        let x_1647 : i32 = u_xlati52;
        let x_1650 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[(x_1645 / 4i)][(x_1647 % 4i)];
        let x_1652 : vec3<f32> = vs_INTERP0;
        let x_1655 : vec4<f32> = u_xlat11;
        let x_1657 : vec3<f32> = ((vec3<f32>(x_1650.x, x_1650.y, x_1650.w) * vec3<f32>(x_1652.x, x_1652.x, x_1652.x)) + vec3<f32>(x_1655.x, x_1655.y, x_1655.z));
        let x_1658 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1658.w);
        let x_1660 : i32 = u_xlati52;
        let x_1663 : i32 = u_xlati52;
        let x_1667 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1660 + 2i) / 4i)][((x_1663 + 2i) % 4i)];
        let x_1669 : vec3<f32> = vs_INTERP0;
        let x_1672 : vec4<f32> = u_xlat11;
        let x_1674 : vec3<f32> = ((vec3<f32>(x_1667.x, x_1667.y, x_1667.w) * vec3<f32>(x_1669.z, x_1669.z, x_1669.z)) + vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
        let x_1675 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1674.x, x_1674.y, x_1674.z, x_1675.w);
        let x_1677 : vec4<f32> = u_xlat11;
        let x_1679 : i32 = u_xlati52;
        let x_1682 : i32 = u_xlati52;
        let x_1686 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1679 + 3i) / 4i)][((x_1682 + 3i) % 4i)];
        let x_1688 : vec3<f32> = (vec3<f32>(x_1677.x, x_1677.y, x_1677.z) + vec3<f32>(x_1686.x, x_1686.y, x_1686.w));
        let x_1689 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1689.w);
        let x_1691 : vec4<f32> = u_xlat11;
        let x_1693 : vec4<f32> = u_xlat11;
        let x_1695 : vec2<f32> = (vec2<f32>(x_1691.x, x_1691.y) / vec2<f32>(x_1693.z, x_1693.z));
        let x_1696 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1695.x, x_1695.y, x_1696.z, x_1696.w);
        let x_1698 : vec4<f32> = u_xlat11;
        let x_1701 : vec2<f32> = ((vec2<f32>(x_1698.x, x_1698.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1702 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1701.x, x_1701.y, x_1702.z, x_1702.w);
        let x_1704 : vec4<f32> = u_xlat11;
        let x_1708 : vec2<f32> = clamp(vec2<f32>(x_1704.x, x_1704.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1709 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1708.x, x_1708.y, x_1709.z, x_1709.w);
        let x_1711 : u32 = u_xlatu45;
        let x_1714 : vec4<f32> = x_1613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1711)];
        let x_1716 : vec4<f32> = u_xlat11;
        let x_1719 : u32 = u_xlatu45;
        let x_1722 : vec4<f32> = x_1613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1719)];
        let x_1724 : vec2<f32> = ((vec2<f32>(x_1714.x, x_1714.y) * vec2<f32>(x_1716.x, x_1716.y)) + vec2<f32>(x_1722.z, x_1722.w));
        let x_1725 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1724.x, x_1724.y, x_1725.z, x_1725.w);
      } else {
        let x_1729 : i32 = u_xlati50;
        u_xlatb50 = (x_1729 == 1i);
        let x_1731 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1731);
        let x_1733 : i32 = u_xlati50;
        if ((x_1733 != 0i)) {
          let x_1738 : vec3<f32> = vs_INTERP0;
          let x_1740 : i32 = u_xlati52;
          let x_1743 : i32 = u_xlati52;
          let x_1747 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1740 + 1i) / 4i)][((x_1743 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1738.y, x_1738.y) * vec2<f32>(x_1747.x, x_1747.y));
          let x_1750 : i32 = u_xlati52;
          let x_1752 : i32 = u_xlati52;
          let x_1755 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[(x_1750 / 4i)][(x_1752 % 4i)];
          let x_1757 : vec3<f32> = vs_INTERP0;
          let x_1760 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1755.x, x_1755.y) * vec2<f32>(x_1757.x, x_1757.x)) + x_1760);
          let x_1762 : i32 = u_xlati52;
          let x_1765 : i32 = u_xlati52;
          let x_1769 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1762 + 2i) / 4i)][((x_1765 + 2i) % 4i)];
          let x_1771 : vec3<f32> = vs_INTERP0;
          let x_1774 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1769.x, x_1769.y) * vec2<f32>(x_1771.z, x_1771.z)) + x_1774);
          let x_1776 : vec2<f32> = u_xlat39;
          let x_1777 : i32 = u_xlati52;
          let x_1780 : i32 = u_xlati52;
          let x_1784 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1777 + 3i) / 4i)][((x_1780 + 3i) % 4i)];
          u_xlat39 = (x_1776 + vec2<f32>(x_1784.x, x_1784.y));
          let x_1787 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1787 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1790 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1790);
          let x_1792 : u32 = u_xlatu45;
          let x_1795 : vec4<f32> = x_1613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1792)];
          let x_1797 : vec2<f32> = u_xlat39;
          let x_1799 : u32 = u_xlatu45;
          let x_1802 : vec4<f32> = x_1613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1799)];
          let x_1804 : vec2<f32> = ((vec2<f32>(x_1795.x, x_1795.y) * x_1797) + vec2<f32>(x_1802.z, x_1802.w));
          let x_1805 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1804.x, x_1804.y, x_1805.z, x_1805.w);
        } else {
          let x_1809 : vec3<f32> = vs_INTERP0;
          let x_1811 : i32 = u_xlati52;
          let x_1814 : i32 = u_xlati52;
          let x_1818 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1811 + 1i) / 4i)][((x_1814 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1809.y, x_1809.y, x_1809.y, x_1809.y) * x_1818);
          let x_1820 : i32 = u_xlati52;
          let x_1822 : i32 = u_xlati52;
          let x_1825 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[(x_1820 / 4i)][(x_1822 % 4i)];
          let x_1826 : vec3<f32> = vs_INTERP0;
          let x_1829 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1825 * vec4<f32>(x_1826.x, x_1826.x, x_1826.x, x_1826.x)) + x_1829);
          let x_1831 : i32 = u_xlati52;
          let x_1834 : i32 = u_xlati52;
          let x_1838 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1831 + 2i) / 4i)][((x_1834 + 2i) % 4i)];
          let x_1839 : vec3<f32> = vs_INTERP0;
          let x_1842 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1838 * vec4<f32>(x_1839.z, x_1839.z, x_1839.z, x_1839.z)) + x_1842);
          let x_1844 : vec4<f32> = u_xlat12;
          let x_1845 : i32 = u_xlati52;
          let x_1848 : i32 = u_xlati52;
          let x_1852 : vec4<f32> = x_1613.x_AdditionalLightsWorldToLights[((x_1845 + 3i) / 4i)][((x_1848 + 3i) % 4i)];
          u_xlat12 = (x_1844 + x_1852);
          let x_1854 : vec4<f32> = u_xlat12;
          let x_1856 : vec4<f32> = u_xlat12;
          let x_1858 : vec3<f32> = (vec3<f32>(x_1854.x, x_1854.y, x_1854.z) / vec3<f32>(x_1856.w, x_1856.w, x_1856.w));
          let x_1859 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
          let x_1861 : vec4<f32> = u_xlat12;
          let x_1863 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1861.x, x_1861.y, x_1861.z), vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
          let x_1866 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1866);
          let x_1868 : f32 = u_xlat50;
          let x_1870 : vec4<f32> = u_xlat12;
          let x_1872 : vec3<f32> = (vec3<f32>(x_1868, x_1868, x_1868) * vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
          let x_1873 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
          let x_1875 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1875.x, x_1875.y, x_1875.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1880 : f32 = u_xlat50;
          u_xlat50 = max(x_1880, 0.000001f);
          let x_1883 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1883);
          let x_1886 : f32 = u_xlat50;
          let x_1888 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1886, x_1886, x_1886) * vec3<f32>(x_1888.z, x_1888.x, x_1888.y));
          let x_1892 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1892);
          let x_1896 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1896, 0.0f, 1.0f);
          let x_1900 : vec3<f32> = u_xlat13;
          let x_1903 : vec4<bool> = (vec4<f32>(x_1900.y, x_1900.z, x_1900.y, x_1900.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1903.x, x_1903.y);
          let x_1906 : bool = u_xlatb39.x;
          if (x_1906) {
            let x_1911 : f32 = u_xlat13.x;
            x_1907 = x_1911;
          } else {
            let x_1914 : f32 = u_xlat13.x;
            x_1907 = -(x_1914);
          }
          let x_1916 : f32 = x_1907;
          u_xlat39.x = x_1916;
          let x_1919 : bool = u_xlatb39.y;
          if (x_1919) {
            let x_1924 : f32 = u_xlat13.x;
            x_1920 = x_1924;
          } else {
            let x_1927 : f32 = u_xlat13.x;
            x_1920 = -(x_1927);
          }
          let x_1929 : f32 = x_1920;
          u_xlat39.y = x_1929;
          let x_1931 : vec4<f32> = u_xlat12;
          let x_1933 : f32 = u_xlat50;
          let x_1936 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1931.x, x_1931.y) * vec2<f32>(x_1933, x_1933)) + x_1936);
          let x_1938 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1938 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1941 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1941, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1945 : u32 = u_xlatu45;
          let x_1948 : vec4<f32> = x_1613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1945)];
          let x_1950 : vec2<f32> = u_xlat39;
          let x_1952 : u32 = u_xlatu45;
          let x_1955 : vec4<f32> = x_1613.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1952)];
          let x_1957 : vec2<f32> = ((vec2<f32>(x_1948.x, x_1948.y) * x_1950) + vec2<f32>(x_1955.z, x_1955.w));
          let x_1958 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1957.x, x_1957.y, x_1958.z, x_1958.w);
        }
      }
      let x_1965 : vec4<f32> = u_xlat11;
      let x_1968 : f32 = x_90.x_GlobalMipBias.x;
      let x_1969 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1965.x, x_1965.y), x_1968);
      u_xlat11 = x_1969;
      let x_1971 : bool = u_xlatb7.y;
      if (x_1971) {
        let x_1976 : f32 = u_xlat11.w;
        x_1972 = x_1976;
      } else {
        let x_1979 : f32 = u_xlat11.x;
        x_1972 = x_1979;
      }
      let x_1980 : f32 = x_1972;
      u_xlat50 = x_1980;
      let x_1982 : bool = u_xlatb7.x;
      if (x_1982) {
        let x_1986 : vec4<f32> = u_xlat11;
        x_1983 = vec3<f32>(x_1986.x, x_1986.y, x_1986.z);
      } else {
        let x_1989 : f32 = u_xlat50;
        x_1983 = vec3<f32>(x_1989, x_1989, x_1989);
      }
      let x_1991 : vec3<f32> = x_1983;
      let x_1992 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1998 : vec4<f32> = u_xlat11;
    let x_2000 : u32 = u_xlatu45;
    let x_2003 : vec4<f32> = x_1510.x_AdditionalLightsColor[bitcast<i32>(x_2000)];
    let x_2005 : vec3<f32> = (vec3<f32>(x_1998.x, x_1998.y, x_1998.z) * vec3<f32>(x_2003.x, x_2003.y, x_2003.z));
    let x_2006 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
    let x_2008 : vec4<f32> = u_xlat6;
    let x_2010 : vec4<f32> = u_xlat11;
    let x_2012 : vec3<f32> = (vec3<f32>(x_2008.x, x_2008.x, x_2008.x) * vec3<f32>(x_2010.x, x_2010.y, x_2010.z));
    let x_2013 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2012.x, x_2012.y, x_2012.z, x_2013.w);
    let x_2015 : vec4<f32> = u_xlat3;
    let x_2017 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_2015.x, x_2015.y, x_2015.z), x_2017);
    let x_2019 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2019, 0.0f, 1.0f);
    let x_2021 : f32 = u_xlat45;
    let x_2022 : f32 = u_xlat35;
    u_xlat45 = (x_2021 * x_2022);
    let x_2024 : f32 = u_xlat45;
    let x_2026 : vec4<f32> = u_xlat11;
    let x_2028 : vec3<f32> = (vec3<f32>(x_2024, x_2024, x_2024) * vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
    let x_2029 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
    let x_2031 : vec3<f32> = u_xlat9;
    let x_2032 : f32 = u_xlat49;
    let x_2035 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_2031 * vec3<f32>(x_2032, x_2032, x_2032)) + x_2035);
    let x_2037 : vec3<f32> = u_xlat9;
    let x_2038 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_2037, x_2038);
    let x_2040 : f32 = u_xlat45;
    u_xlat45 = max(x_2040, 1.17549435e-37f);
    let x_2042 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2042);
    let x_2044 : f32 = u_xlat45;
    let x_2046 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2044, x_2044, x_2044) * x_2046);
    let x_2048 : vec4<f32> = u_xlat3;
    let x_2050 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_2048.x, x_2048.y, x_2048.z), x_2050);
    let x_2052 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2052, 0.0f, 1.0f);
    let x_2054 : vec3<f32> = u_xlat10;
    let x_2055 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_2054, x_2055);
    let x_2057 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2057, 0.0f, 1.0f);
    let x_2059 : f32 = u_xlat45;
    let x_2060 : f32 = u_xlat45;
    u_xlat45 = (x_2059 * x_2060);
    let x_2062 : f32 = u_xlat45;
    let x_2064 : f32 = u_xlat29.x;
    u_xlat45 = ((x_2062 * x_2064) + 1.000010014f);
    let x_2067 : f32 = u_xlat35;
    let x_2068 : f32 = u_xlat35;
    u_xlat35 = (x_2067 * x_2068);
    let x_2070 : f32 = u_xlat45;
    let x_2071 : f32 = u_xlat45;
    u_xlat45 = (x_2070 * x_2071);
    let x_2073 : f32 = u_xlat35;
    u_xlat35 = max(x_2073, 0.100000001f);
    let x_2075 : f32 = u_xlat45;
    let x_2076 : f32 = u_xlat35;
    u_xlat45 = (x_2075 * x_2076);
    let x_2078 : f32 = u_xlat46;
    let x_2079 : f32 = u_xlat45;
    u_xlat45 = (x_2078 * x_2079);
    let x_2081 : f32 = u_xlat44;
    let x_2082 : f32 = u_xlat45;
    u_xlat45 = (x_2081 / x_2082);
    let x_2084 : f32 = u_xlat45;
    let x_2087 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2084, x_2084, x_2084) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2087);
    let x_2089 : vec3<f32> = u_xlat9;
    let x_2090 : vec4<f32> = u_xlat11;
    let x_2093 : vec4<f32> = u_xlat8;
    let x_2095 : vec3<f32> = ((x_2089 * vec3<f32>(x_2090.x, x_2090.y, x_2090.z)) + vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
    let x_2096 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);

    continuing {
      let x_2098 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2098 + bitcast<u32>(1i));
    }
  }
  let x_2100 : vec3<f32> = u_xlat19;
  let x_2101 : vec4<f32> = u_xlat5;
  let x_2104 : vec3<f32> = u_xlat20;
  u_xlat2 = ((x_2100 * vec3<f32>(x_2101.x, x_2101.x, x_2101.x)) + x_2104);
  let x_2106 : vec4<f32> = u_xlat8;
  let x_2108 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2106.x, x_2106.y, x_2106.z) + x_2108);
  let x_2112 : vec4<f32> = vs_INTERP4;
  let x_2114 : vec3<f32> = u_xlat0;
  let x_2116 : vec3<f32> = u_xlat2;
  let x_2117 : vec3<f32> = ((vec3<f32>(x_2112.w, x_2112.w, x_2112.w) * x_2114) + x_2116);
  let x_2118 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2117.x, x_2117.y, x_2117.z, x_2118.w);
  let x_2120 : bool = u_xlatb15;
  if (x_2120) {
    let x_2125 : f32 = u_xlat1.x;
    x_2121 = x_2125;
  } else {
    x_2121 = 1.0f;
  }
  let x_2127 : f32 = x_2121;
  SV_Target0.w = x_2127;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}

