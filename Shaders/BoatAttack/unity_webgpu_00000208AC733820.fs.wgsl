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

@group(0) @binding(6) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_215 : UnityPerMaterial;

@group(0) @binding(7) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_271 : MainLightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1009 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1449 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1552 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1092 : f32;
  var x_1103 : vec3<f32>;
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
  var x_1846 : f32;
  var x_1859 : f32;
  var x_1911 : f32;
  var x_1922 : vec3<f32>;
  var x_2060 : f32;
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
  let x_863 : vec2<f32> = vs_INTERP5;
  let x_865 : f32 = x_90.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_863, x_865);
  u_xlat19 = vec3<f32>(x_866.x, x_866.y, x_866.z);
  let x_870 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_871 : vec2<f32> = vec2<f32>(x_870.x, x_870.y);
  u_xlat29 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_871.x, x_871.y));
  let x_876 : vec2<f32> = u_xlat29;
  let x_877 : vec4<f32> = hlslcc_FragCoord;
  let x_879 : vec2<f32> = (x_876 * vec2<f32>(x_877.x, x_877.y));
  let x_880 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
  let x_883 : f32 = u_xlat6.y;
  let x_886 : f32 = x_90.x_ScaleBiasRt.x;
  let x_889 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat29.x = ((x_883 * x_886) + x_889);
  let x_893 : f32 = u_xlat29.x;
  u_xlat6.z = (-(x_893) + 1.0f);
  let x_898 : f32 = u_xlat5.x;
  u_xlat5.x = x_898;
  let x_901 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_901, 0.0f, 1.0f);
  let x_905 : f32 = u_xlat1.x;
  u_xlat1.x = x_905;
  let x_908 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_908, 0.0f, 1.0f);
  let x_911 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_911 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_916 : f32 = u_xlat5.x;
  u_xlat29.x = (-(x_916) + 1.0f);
  let x_921 : f32 = u_xlat29.x;
  let x_923 : f32 = u_xlat29.x;
  u_xlat43 = (x_921 * x_923);
  let x_925 : f32 = u_xlat43;
  u_xlat43 = max(x_925, 0.0078125f);
  let x_928 : f32 = u_xlat43;
  let x_929 : f32 = u_xlat43;
  u_xlat44 = (x_928 * x_929);
  let x_933 : f32 = u_xlat5.x;
  u_xlat45 = (x_933 + 0.040000021f);
  let x_936 : f32 = u_xlat45;
  u_xlat45 = min(x_936, 1.0f);
  let x_939 : f32 = u_xlat43;
  u_xlat46 = ((x_939 * 4.0f) + 2.0f);
  let x_947 : vec4<f32> = u_xlat6;
  let x_950 : f32 = x_90.x_GlobalMipBias.x;
  let x_951 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_947.x, x_947.z), x_950);
  u_xlat5.x = x_951.x;
  let x_955 : f32 = u_xlat5.x;
  u_xlat6.x = (x_955 + -1.0f);
  let x_959 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_961 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_959 * x_961) + 1.0f);
  let x_966 : f32 = u_xlat5.x;
  let x_968 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_966, x_968);
  let x_972 : vec3<f32> = vs_INTERP0;
  let x_974 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_972 + -(x_974));
  let x_977 : vec3<f32> = u_xlat20;
  let x_978 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_977, x_978);
  let x_982 : f32 = u_xlat20.x;
  let x_984 : f32 = x_271.x_MainLightShadowParams.z;
  let x_987 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_982 * x_984) + x_987);
  let x_991 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_991, 0.0f, 1.0f);
  let x_995 : f32 = u_xlat42;
  u_xlat34 = (-(x_995) + 1.0f);
  let x_999 : f32 = u_xlat20.x;
  let x_1000 : f32 = u_xlat34;
  let x_1002 : f32 = u_xlat42;
  u_xlat42 = ((x_999 * x_1000) + x_1002);
  let x_1011 : f32 = x_1009.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1011 == -1.0f));
  let x_1015 : bool = u_xlatb20.x;
  if (x_1015) {
    let x_1018 : vec3<f32> = vs_INTERP0;
    let x_1021 : vec4<f32> = x_1009.x_MainLightWorldToLight[1i];
    let x_1023 : vec2<f32> = (vec2<f32>(x_1018.y, x_1018.y) * vec2<f32>(x_1021.x, x_1021.y));
    let x_1024 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1023.x, x_1023.y, x_1024.z);
    let x_1027 : vec4<f32> = x_1009.x_MainLightWorldToLight[0i];
    let x_1029 : vec3<f32> = vs_INTERP0;
    let x_1032 : vec3<f32> = u_xlat20;
    let x_1034 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1029.x, x_1029.x)) + vec2<f32>(x_1032.x, x_1032.y));
    let x_1035 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1034.x, x_1034.y, x_1035.z);
    let x_1038 : vec4<f32> = x_1009.x_MainLightWorldToLight[2i];
    let x_1040 : vec3<f32> = vs_INTERP0;
    let x_1043 : vec3<f32> = u_xlat20;
    let x_1045 : vec2<f32> = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1040.z, x_1040.z)) + vec2<f32>(x_1043.x, x_1043.y));
    let x_1046 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1045.x, x_1045.y, x_1046.z);
    let x_1048 : vec3<f32> = u_xlat20;
    let x_1051 : vec4<f32> = x_1009.x_MainLightWorldToLight[3i];
    let x_1053 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.y) + vec2<f32>(x_1051.x, x_1051.y));
    let x_1054 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1053.x, x_1053.y, x_1054.z);
    let x_1056 : vec3<f32> = u_xlat20;
    let x_1060 : vec2<f32> = ((vec2<f32>(x_1056.x, x_1056.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1061 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1060.x, x_1060.y, x_1061.z);
    let x_1068 : vec3<f32> = u_xlat20;
    let x_1071 : f32 = x_90.x_GlobalMipBias.x;
    let x_1072 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1068.x, x_1068.y), x_1071);
    u_xlat7 = x_1072;
    let x_1074 : f32 = x_1009.x_MainLightCookieTextureFormat;
    let x_1076 : f32 = x_1009.x_MainLightCookieTextureFormat;
    let x_1078 : f32 = x_1009.x_MainLightCookieTextureFormat;
    let x_1080 : f32 = x_1009.x_MainLightCookieTextureFormat;
    let x_1081 : vec4<f32> = vec4<f32>(x_1074, x_1076, x_1078, x_1080);
    let x_1088 : vec4<bool> = (vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1081.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1088.x, x_1088.y);
    let x_1091 : bool = u_xlatb20.y;
    if (x_1091) {
      let x_1096 : f32 = u_xlat7.w;
      x_1092 = x_1096;
    } else {
      let x_1099 : f32 = u_xlat7.x;
      x_1092 = x_1099;
    }
    let x_1100 : f32 = x_1092;
    u_xlat34 = x_1100;
    let x_1102 : bool = u_xlatb20.x;
    if (x_1102) {
      let x_1106 : vec4<f32> = u_xlat7;
      x_1103 = vec3<f32>(x_1106.x, x_1106.y, x_1106.z);
    } else {
      let x_1109 : f32 = u_xlat34;
      x_1103 = vec3<f32>(x_1109, x_1109, x_1109);
    }
    let x_1111 : vec3<f32> = x_1103;
    u_xlat20 = x_1111;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1116 : vec3<f32> = u_xlat20;
  let x_1118 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1116 * vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = u_xlat6;
  let x_1123 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1121.x, x_1121.x, x_1121.x) * x_1123);
  let x_1125 : vec3<f32> = u_xlat2;
  let x_1127 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1125), vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1132 : f32 = u_xlat7.x;
  let x_1134 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1132 + x_1134);
  let x_1137 : vec4<f32> = u_xlat3;
  let x_1139 : vec4<f32> = u_xlat7;
  let x_1143 : vec3<f32> = u_xlat2;
  let x_1145 : vec3<f32> = ((vec3<f32>(x_1137.x, x_1137.y, x_1137.z) * -(vec3<f32>(x_1139.x, x_1139.x, x_1139.x))) + -(x_1143));
  let x_1146 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1149 : vec4<f32> = u_xlat3;
  let x_1151 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1149.x, x_1149.y, x_1149.z), x_1151);
  let x_1153 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1153, 0.0f, 1.0f);
  let x_1155 : f32 = u_xlat49;
  u_xlat49 = (-(x_1155) + 1.0f);
  let x_1158 : f32 = u_xlat49;
  let x_1159 : f32 = u_xlat49;
  u_xlat49 = (x_1158 * x_1159);
  let x_1161 : f32 = u_xlat49;
  let x_1162 : f32 = u_xlat49;
  u_xlat49 = (x_1161 * x_1162);
  let x_1165 : f32 = u_xlat29.x;
  u_xlat8.x = ((-(x_1165) * 0.699999988f) + 1.700000048f);
  let x_1173 : f32 = u_xlat29.x;
  let x_1175 : f32 = u_xlat8.x;
  u_xlat29.x = (x_1173 * x_1175);
  let x_1179 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1179 * 6.0f);
  let x_1191 : vec4<f32> = u_xlat7;
  let x_1194 : f32 = u_xlat29.x;
  let x_1195 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1191.x, x_1191.y, x_1191.z), x_1194);
  u_xlat8 = x_1195;
  let x_1197 : f32 = u_xlat8.w;
  u_xlat29.x = (x_1197 + -1.0f);
  let x_1201 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1203 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1201 * x_1203) + 1.0f);
  let x_1208 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1208, 0.0f);
  let x_1212 : f32 = u_xlat29.x;
  u_xlat29.x = log2(x_1212);
  let x_1216 : f32 = u_xlat29.x;
  let x_1218 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat29.x = (x_1216 * x_1218);
  let x_1222 : f32 = u_xlat29.x;
  u_xlat29.x = exp2(x_1222);
  let x_1226 : f32 = u_xlat29.x;
  let x_1228 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat29.x = (x_1226 * x_1228);
  let x_1231 : vec4<f32> = u_xlat8;
  let x_1233 : vec2<f32> = u_xlat29;
  let x_1235 : vec3<f32> = (vec3<f32>(x_1231.x, x_1231.y, x_1231.z) * vec3<f32>(x_1233.x, x_1233.x, x_1233.x));
  let x_1236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : f32 = u_xlat43;
  let x_1240 : f32 = u_xlat43;
  u_xlat29 = ((vec2<f32>(x_1238, x_1238) * vec2<f32>(x_1240, x_1240)) + vec2<f32>(-1.0f, 1.0f));
  let x_1246 : f32 = u_xlat29.y;
  u_xlat43 = (1.0f / x_1246);
  let x_1248 : f32 = u_xlat45;
  u_xlat45 = (x_1248 + -0.039999999f);
  let x_1251 : f32 = u_xlat49;
  let x_1252 : f32 = u_xlat45;
  u_xlat45 = ((x_1251 * x_1252) + 0.039999999f);
  let x_1256 : f32 = u_xlat43;
  let x_1257 : f32 = u_xlat45;
  u_xlat43 = (x_1256 * x_1257);
  let x_1259 : f32 = u_xlat43;
  let x_1261 : vec4<f32> = u_xlat7;
  let x_1263 : vec3<f32> = (vec3<f32>(x_1259, x_1259, x_1259) * vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec3<f32> = u_xlat19;
  let x_1267 : vec3<f32> = u_xlat4;
  let x_1269 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1266 * x_1267) + vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
  let x_1272 : f32 = u_xlat42;
  let x_1274 : f32 = x_161.unity_LightData.z;
  u_xlat42 = (x_1272 * x_1274);
  let x_1276 : vec4<f32> = u_xlat3;
  let x_1279 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1276.x, x_1276.y, x_1276.z), vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1282 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1282, 0.0f, 1.0f);
  let x_1284 : f32 = u_xlat42;
  let x_1285 : f32 = u_xlat43;
  u_xlat42 = (x_1284 * x_1285);
  let x_1287 : f32 = u_xlat42;
  let x_1289 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1287, x_1287, x_1287) * x_1289);
  let x_1291 : vec3<f32> = u_xlat2;
  let x_1293 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1295 : vec3<f32> = (x_1291 + vec3<f32>(x_1293.x, x_1293.y, x_1293.z));
  let x_1296 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : vec4<f32> = u_xlat7;
  let x_1300 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1298.x, x_1298.y, x_1298.z), vec3<f32>(x_1300.x, x_1300.y, x_1300.z));
  let x_1303 : f32 = u_xlat42;
  u_xlat42 = max(x_1303, 1.17549435e-37f);
  let x_1306 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1306);
  let x_1308 : f32 = u_xlat42;
  let x_1310 : vec4<f32> = u_xlat7;
  let x_1312 : vec3<f32> = (vec3<f32>(x_1308, x_1308, x_1308) * vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
  let x_1313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec4<f32> = u_xlat3;
  let x_1317 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1315.x, x_1315.y, x_1315.z), vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1320 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1320, 0.0f, 1.0f);
  let x_1323 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1325 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1323.x, x_1323.y, x_1323.z), vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1328, 0.0f, 1.0f);
  let x_1330 : f32 = u_xlat42;
  let x_1331 : f32 = u_xlat42;
  u_xlat42 = (x_1330 * x_1331);
  let x_1333 : f32 = u_xlat42;
  let x_1335 : f32 = u_xlat29.x;
  u_xlat42 = ((x_1333 * x_1335) + 1.000010014f);
  let x_1339 : f32 = u_xlat43;
  let x_1340 : f32 = u_xlat43;
  u_xlat43 = (x_1339 * x_1340);
  let x_1342 : f32 = u_xlat42;
  let x_1343 : f32 = u_xlat42;
  u_xlat42 = (x_1342 * x_1343);
  let x_1345 : f32 = u_xlat43;
  u_xlat43 = max(x_1345, 0.100000001f);
  let x_1348 : f32 = u_xlat42;
  let x_1349 : f32 = u_xlat43;
  u_xlat42 = (x_1348 * x_1349);
  let x_1351 : f32 = u_xlat46;
  let x_1352 : f32 = u_xlat42;
  u_xlat42 = (x_1351 * x_1352);
  let x_1354 : f32 = u_xlat44;
  let x_1355 : f32 = u_xlat42;
  u_xlat42 = (x_1354 / x_1355);
  let x_1357 : f32 = u_xlat42;
  let x_1361 : vec3<f32> = u_xlat4;
  let x_1362 : vec3<f32> = ((vec3<f32>(x_1357, x_1357, x_1357) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1361);
  let x_1363 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
  let x_1365 : vec3<f32> = u_xlat20;
  let x_1366 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1365 * vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
  let x_1371 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1373 : f32 = x_161.unity_LightData.y;
  u_xlat42 = min(x_1371, x_1373);
  let x_1375 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1375));
  let x_1380 : f32 = x_1009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1382 : f32 = x_1009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1384 : f32 = x_1009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1386 : f32 = x_1009.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1387 : vec4<f32> = vec4<f32>(x_1380, x_1382, x_1384, x_1386);
  let x_1393 : vec4<bool> = (vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1387.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1393.x, x_1393.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1404 : u32 = u_xlatu_loop_1;
    let x_1405 : u32 = u_xlatu42;
    if ((x_1404 < x_1405)) {
    } else {
      break;
    }
    let x_1408 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1408 >> 2u);
    let x_1411 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1411 & 3u));
    let x_1414 : u32 = u_xlatu45;
    let x_1417 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1414)];
    let x_1427 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1432 : vec4<u32> = indexable[x_1427];
    u_xlat45 = dot(x_1417, bitcast<vec4<f32>>(x_1432));
    let x_1435 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1435));
    let x_1438 : vec3<f32> = vs_INTERP0;
    let x_1450 : u32 = u_xlatu45;
    let x_1453 : vec4<f32> = x_1449.x_AdditionalLightsPosition[bitcast<i32>(x_1450)];
    let x_1456 : u32 = u_xlatu45;
    let x_1459 : vec4<f32> = x_1449.x_AdditionalLightsPosition[bitcast<i32>(x_1456)];
    u_xlat9 = ((-(x_1438) * vec3<f32>(x_1453.w, x_1453.w, x_1453.w)) + vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
    let x_1463 : vec3<f32> = u_xlat9;
    let x_1464 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1463, x_1464);
    let x_1466 : f32 = u_xlat35;
    u_xlat35 = max(x_1466, 6.10351562e-05f);
    let x_1469 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1469);
    let x_1472 : f32 = u_xlat49;
    let x_1474 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1472, x_1472, x_1472) * x_1474);
    let x_1477 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1477);
    let x_1479 : f32 = u_xlat35;
    let x_1480 : u32 = u_xlatu45;
    let x_1483 : f32 = x_1449.x_AdditionalLightsAttenuation[bitcast<i32>(x_1480)].x;
    u_xlat35 = (x_1479 * x_1483);
    let x_1485 : f32 = u_xlat35;
    let x_1487 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1485) * x_1487) + 1.0f);
    let x_1490 : f32 = u_xlat35;
    u_xlat35 = max(x_1490, 0.0f);
    let x_1492 : f32 = u_xlat35;
    let x_1493 : f32 = u_xlat35;
    u_xlat35 = (x_1492 * x_1493);
    let x_1495 : f32 = u_xlat35;
    let x_1496 : f32 = u_xlat50;
    u_xlat35 = (x_1495 * x_1496);
    let x_1498 : u32 = u_xlatu45;
    let x_1501 : vec4<f32> = x_1449.x_AdditionalLightsSpotDir[bitcast<i32>(x_1498)];
    let x_1503 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1501.x, x_1501.y, x_1501.z), x_1503);
    let x_1505 : f32 = u_xlat50;
    let x_1506 : u32 = u_xlatu45;
    let x_1509 : f32 = x_1449.x_AdditionalLightsAttenuation[bitcast<i32>(x_1506)].z;
    let x_1511 : u32 = u_xlatu45;
    let x_1514 : f32 = x_1449.x_AdditionalLightsAttenuation[bitcast<i32>(x_1511)].w;
    u_xlat50 = ((x_1505 * x_1509) + x_1514);
    let x_1516 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1516, 0.0f, 1.0f);
    let x_1518 : f32 = u_xlat50;
    let x_1519 : f32 = u_xlat50;
    u_xlat50 = (x_1518 * x_1519);
    let x_1521 : f32 = u_xlat35;
    let x_1522 : f32 = u_xlat50;
    u_xlat35 = (x_1521 * x_1522);
    let x_1525 : u32 = u_xlatu45;
    u_xlatu50 = (x_1525 >> 5u);
    let x_1528 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1528) & 31i)));
    let x_1534 : i32 = u_xlati51;
    let x_1536 : u32 = u_xlatu50;
    let x_1539 : f32 = x_1009.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1536)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1534) & bitcast<u32>(x_1539)));
    let x_1543 : i32 = u_xlati50;
    if ((x_1543 != 0i)) {
      let x_1553 : u32 = u_xlatu45;
      let x_1556 : f32 = x_1552.x_AdditionalLightsLightTypes[bitcast<i32>(x_1553)].el;
      u_xlati50 = i32(x_1556);
      let x_1558 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1558 != 0i));
      let x_1562 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1562) << bitcast<u32>(2i));
      let x_1565 : i32 = u_xlati51;
      if ((x_1565 != 0i)) {
        let x_1570 : vec3<f32> = vs_INTERP0;
        let x_1572 : i32 = u_xlati52;
        let x_1575 : i32 = u_xlati52;
        let x_1579 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1572 + 1i) / 4i)][((x_1575 + 1i) % 4i)];
        let x_1581 : vec3<f32> = (vec3<f32>(x_1570.y, x_1570.y, x_1570.y) * vec3<f32>(x_1579.x, x_1579.y, x_1579.w));
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
        let x_1584 : i32 = u_xlati52;
        let x_1586 : i32 = u_xlati52;
        let x_1589 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[(x_1584 / 4i)][(x_1586 % 4i)];
        let x_1591 : vec3<f32> = vs_INTERP0;
        let x_1594 : vec4<f32> = u_xlat11;
        let x_1596 : vec3<f32> = ((vec3<f32>(x_1589.x, x_1589.y, x_1589.w) * vec3<f32>(x_1591.x, x_1591.x, x_1591.x)) + vec3<f32>(x_1594.x, x_1594.y, x_1594.z));
        let x_1597 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
        let x_1599 : i32 = u_xlati52;
        let x_1602 : i32 = u_xlati52;
        let x_1606 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1599 + 2i) / 4i)][((x_1602 + 2i) % 4i)];
        let x_1608 : vec3<f32> = vs_INTERP0;
        let x_1611 : vec4<f32> = u_xlat11;
        let x_1613 : vec3<f32> = ((vec3<f32>(x_1606.x, x_1606.y, x_1606.w) * vec3<f32>(x_1608.z, x_1608.z, x_1608.z)) + vec3<f32>(x_1611.x, x_1611.y, x_1611.z));
        let x_1614 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1613.x, x_1613.y, x_1613.z, x_1614.w);
        let x_1616 : vec4<f32> = u_xlat11;
        let x_1618 : i32 = u_xlati52;
        let x_1621 : i32 = u_xlati52;
        let x_1625 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1618 + 3i) / 4i)][((x_1621 + 3i) % 4i)];
        let x_1627 : vec3<f32> = (vec3<f32>(x_1616.x, x_1616.y, x_1616.z) + vec3<f32>(x_1625.x, x_1625.y, x_1625.w));
        let x_1628 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
        let x_1630 : vec4<f32> = u_xlat11;
        let x_1632 : vec4<f32> = u_xlat11;
        let x_1634 : vec2<f32> = (vec2<f32>(x_1630.x, x_1630.y) / vec2<f32>(x_1632.z, x_1632.z));
        let x_1635 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1634.x, x_1634.y, x_1635.z, x_1635.w);
        let x_1637 : vec4<f32> = u_xlat11;
        let x_1640 : vec2<f32> = ((vec2<f32>(x_1637.x, x_1637.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1641 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1640.x, x_1640.y, x_1641.z, x_1641.w);
        let x_1643 : vec4<f32> = u_xlat11;
        let x_1647 : vec2<f32> = clamp(vec2<f32>(x_1643.x, x_1643.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1647.x, x_1647.y, x_1648.z, x_1648.w);
        let x_1650 : u32 = u_xlatu45;
        let x_1653 : vec4<f32> = x_1552.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1650)];
        let x_1655 : vec4<f32> = u_xlat11;
        let x_1658 : u32 = u_xlatu45;
        let x_1661 : vec4<f32> = x_1552.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1658)];
        let x_1663 : vec2<f32> = ((vec2<f32>(x_1653.x, x_1653.y) * vec2<f32>(x_1655.x, x_1655.y)) + vec2<f32>(x_1661.z, x_1661.w));
        let x_1664 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1663.x, x_1663.y, x_1664.z, x_1664.w);
      } else {
        let x_1668 : i32 = u_xlati50;
        u_xlatb50 = (x_1668 == 1i);
        let x_1670 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1670);
        let x_1672 : i32 = u_xlati50;
        if ((x_1672 != 0i)) {
          let x_1677 : vec3<f32> = vs_INTERP0;
          let x_1679 : i32 = u_xlati52;
          let x_1682 : i32 = u_xlati52;
          let x_1686 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1679 + 1i) / 4i)][((x_1682 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1677.y, x_1677.y) * vec2<f32>(x_1686.x, x_1686.y));
          let x_1689 : i32 = u_xlati52;
          let x_1691 : i32 = u_xlati52;
          let x_1694 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[(x_1689 / 4i)][(x_1691 % 4i)];
          let x_1696 : vec3<f32> = vs_INTERP0;
          let x_1699 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1696.x, x_1696.x)) + x_1699);
          let x_1701 : i32 = u_xlati52;
          let x_1704 : i32 = u_xlati52;
          let x_1708 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1701 + 2i) / 4i)][((x_1704 + 2i) % 4i)];
          let x_1710 : vec3<f32> = vs_INTERP0;
          let x_1713 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1708.x, x_1708.y) * vec2<f32>(x_1710.z, x_1710.z)) + x_1713);
          let x_1715 : vec2<f32> = u_xlat39;
          let x_1716 : i32 = u_xlati52;
          let x_1719 : i32 = u_xlati52;
          let x_1723 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1716 + 3i) / 4i)][((x_1719 + 3i) % 4i)];
          u_xlat39 = (x_1715 + vec2<f32>(x_1723.x, x_1723.y));
          let x_1726 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1726 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1729 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1729);
          let x_1731 : u32 = u_xlatu45;
          let x_1734 : vec4<f32> = x_1552.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1731)];
          let x_1736 : vec2<f32> = u_xlat39;
          let x_1738 : u32 = u_xlatu45;
          let x_1741 : vec4<f32> = x_1552.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1738)];
          let x_1743 : vec2<f32> = ((vec2<f32>(x_1734.x, x_1734.y) * x_1736) + vec2<f32>(x_1741.z, x_1741.w));
          let x_1744 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        } else {
          let x_1748 : vec3<f32> = vs_INTERP0;
          let x_1750 : i32 = u_xlati52;
          let x_1753 : i32 = u_xlati52;
          let x_1757 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1750 + 1i) / 4i)][((x_1753 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1748.y, x_1748.y, x_1748.y, x_1748.y) * x_1757);
          let x_1759 : i32 = u_xlati52;
          let x_1761 : i32 = u_xlati52;
          let x_1764 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[(x_1759 / 4i)][(x_1761 % 4i)];
          let x_1765 : vec3<f32> = vs_INTERP0;
          let x_1768 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1764 * vec4<f32>(x_1765.x, x_1765.x, x_1765.x, x_1765.x)) + x_1768);
          let x_1770 : i32 = u_xlati52;
          let x_1773 : i32 = u_xlati52;
          let x_1777 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1770 + 2i) / 4i)][((x_1773 + 2i) % 4i)];
          let x_1778 : vec3<f32> = vs_INTERP0;
          let x_1781 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1777 * vec4<f32>(x_1778.z, x_1778.z, x_1778.z, x_1778.z)) + x_1781);
          let x_1783 : vec4<f32> = u_xlat12;
          let x_1784 : i32 = u_xlati52;
          let x_1787 : i32 = u_xlati52;
          let x_1791 : vec4<f32> = x_1552.x_AdditionalLightsWorldToLights[((x_1784 + 3i) / 4i)][((x_1787 + 3i) % 4i)];
          u_xlat12 = (x_1783 + x_1791);
          let x_1793 : vec4<f32> = u_xlat12;
          let x_1795 : vec4<f32> = u_xlat12;
          let x_1797 : vec3<f32> = (vec3<f32>(x_1793.x, x_1793.y, x_1793.z) / vec3<f32>(x_1795.w, x_1795.w, x_1795.w));
          let x_1798 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1797.x, x_1797.y, x_1797.z, x_1798.w);
          let x_1800 : vec4<f32> = u_xlat12;
          let x_1802 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1800.x, x_1800.y, x_1800.z), vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
          let x_1805 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1805);
          let x_1807 : f32 = u_xlat50;
          let x_1809 : vec4<f32> = u_xlat12;
          let x_1811 : vec3<f32> = (vec3<f32>(x_1807, x_1807, x_1807) * vec3<f32>(x_1809.x, x_1809.y, x_1809.z));
          let x_1812 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1811.x, x_1811.y, x_1811.z, x_1812.w);
          let x_1814 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1814.x, x_1814.y, x_1814.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1819 : f32 = u_xlat50;
          u_xlat50 = max(x_1819, 0.000001f);
          let x_1822 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1822);
          let x_1825 : f32 = u_xlat50;
          let x_1827 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1825, x_1825, x_1825) * vec3<f32>(x_1827.z, x_1827.x, x_1827.y));
          let x_1831 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1831);
          let x_1835 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1835, 0.0f, 1.0f);
          let x_1839 : vec3<f32> = u_xlat13;
          let x_1842 : vec4<bool> = (vec4<f32>(x_1839.y, x_1839.z, x_1839.y, x_1839.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1842.x, x_1842.y);
          let x_1845 : bool = u_xlatb39.x;
          if (x_1845) {
            let x_1850 : f32 = u_xlat13.x;
            x_1846 = x_1850;
          } else {
            let x_1853 : f32 = u_xlat13.x;
            x_1846 = -(x_1853);
          }
          let x_1855 : f32 = x_1846;
          u_xlat39.x = x_1855;
          let x_1858 : bool = u_xlatb39.y;
          if (x_1858) {
            let x_1863 : f32 = u_xlat13.x;
            x_1859 = x_1863;
          } else {
            let x_1866 : f32 = u_xlat13.x;
            x_1859 = -(x_1866);
          }
          let x_1868 : f32 = x_1859;
          u_xlat39.y = x_1868;
          let x_1870 : vec4<f32> = u_xlat12;
          let x_1872 : f32 = u_xlat50;
          let x_1875 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1870.x, x_1870.y) * vec2<f32>(x_1872, x_1872)) + x_1875);
          let x_1877 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1877 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1880 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1880, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1884 : u32 = u_xlatu45;
          let x_1887 : vec4<f32> = x_1552.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1884)];
          let x_1889 : vec2<f32> = u_xlat39;
          let x_1891 : u32 = u_xlatu45;
          let x_1894 : vec4<f32> = x_1552.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1891)];
          let x_1896 : vec2<f32> = ((vec2<f32>(x_1887.x, x_1887.y) * x_1889) + vec2<f32>(x_1894.z, x_1894.w));
          let x_1897 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1896.x, x_1896.y, x_1897.z, x_1897.w);
        }
      }
      let x_1904 : vec4<f32> = u_xlat11;
      let x_1907 : f32 = x_90.x_GlobalMipBias.x;
      let x_1908 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1904.x, x_1904.y), x_1907);
      u_xlat11 = x_1908;
      let x_1910 : bool = u_xlatb7.y;
      if (x_1910) {
        let x_1915 : f32 = u_xlat11.w;
        x_1911 = x_1915;
      } else {
        let x_1918 : f32 = u_xlat11.x;
        x_1911 = x_1918;
      }
      let x_1919 : f32 = x_1911;
      u_xlat50 = x_1919;
      let x_1921 : bool = u_xlatb7.x;
      if (x_1921) {
        let x_1925 : vec4<f32> = u_xlat11;
        x_1922 = vec3<f32>(x_1925.x, x_1925.y, x_1925.z);
      } else {
        let x_1928 : f32 = u_xlat50;
        x_1922 = vec3<f32>(x_1928, x_1928, x_1928);
      }
      let x_1930 : vec3<f32> = x_1922;
      let x_1931 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1937 : vec4<f32> = u_xlat11;
    let x_1939 : u32 = u_xlatu45;
    let x_1942 : vec4<f32> = x_1449.x_AdditionalLightsColor[bitcast<i32>(x_1939)];
    let x_1944 : vec3<f32> = (vec3<f32>(x_1937.x, x_1937.y, x_1937.z) * vec3<f32>(x_1942.x, x_1942.y, x_1942.z));
    let x_1945 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1944.x, x_1944.y, x_1944.z, x_1945.w);
    let x_1947 : vec4<f32> = u_xlat6;
    let x_1949 : vec4<f32> = u_xlat11;
    let x_1951 : vec3<f32> = (vec3<f32>(x_1947.x, x_1947.x, x_1947.x) * vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
    let x_1952 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
    let x_1954 : vec4<f32> = u_xlat3;
    let x_1956 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1954.x, x_1954.y, x_1954.z), x_1956);
    let x_1958 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1958, 0.0f, 1.0f);
    let x_1960 : f32 = u_xlat45;
    let x_1961 : f32 = u_xlat35;
    u_xlat45 = (x_1960 * x_1961);
    let x_1963 : f32 = u_xlat45;
    let x_1965 : vec4<f32> = u_xlat11;
    let x_1967 : vec3<f32> = (vec3<f32>(x_1963, x_1963, x_1963) * vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
    let x_1968 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
    let x_1970 : vec3<f32> = u_xlat9;
    let x_1971 : f32 = u_xlat49;
    let x_1974 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_1970 * vec3<f32>(x_1971, x_1971, x_1971)) + x_1974);
    let x_1976 : vec3<f32> = u_xlat9;
    let x_1977 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1976, x_1977);
    let x_1979 : f32 = u_xlat45;
    u_xlat45 = max(x_1979, 1.17549435e-37f);
    let x_1981 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1981);
    let x_1983 : f32 = u_xlat45;
    let x_1985 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1983, x_1983, x_1983) * x_1985);
    let x_1987 : vec4<f32> = u_xlat3;
    let x_1989 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1987.x, x_1987.y, x_1987.z), x_1989);
    let x_1991 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1991, 0.0f, 1.0f);
    let x_1993 : vec3<f32> = u_xlat10;
    let x_1994 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1993, x_1994);
    let x_1996 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1996, 0.0f, 1.0f);
    let x_1998 : f32 = u_xlat45;
    let x_1999 : f32 = u_xlat45;
    u_xlat45 = (x_1998 * x_1999);
    let x_2001 : f32 = u_xlat45;
    let x_2003 : f32 = u_xlat29.x;
    u_xlat45 = ((x_2001 * x_2003) + 1.000010014f);
    let x_2006 : f32 = u_xlat35;
    let x_2007 : f32 = u_xlat35;
    u_xlat35 = (x_2006 * x_2007);
    let x_2009 : f32 = u_xlat45;
    let x_2010 : f32 = u_xlat45;
    u_xlat45 = (x_2009 * x_2010);
    let x_2012 : f32 = u_xlat35;
    u_xlat35 = max(x_2012, 0.100000001f);
    let x_2014 : f32 = u_xlat45;
    let x_2015 : f32 = u_xlat35;
    u_xlat45 = (x_2014 * x_2015);
    let x_2017 : f32 = u_xlat46;
    let x_2018 : f32 = u_xlat45;
    u_xlat45 = (x_2017 * x_2018);
    let x_2020 : f32 = u_xlat44;
    let x_2021 : f32 = u_xlat45;
    u_xlat45 = (x_2020 / x_2021);
    let x_2023 : f32 = u_xlat45;
    let x_2026 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2023, x_2023, x_2023) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2026);
    let x_2028 : vec3<f32> = u_xlat9;
    let x_2029 : vec4<f32> = u_xlat11;
    let x_2032 : vec4<f32> = u_xlat8;
    let x_2034 : vec3<f32> = ((x_2028 * vec3<f32>(x_2029.x, x_2029.y, x_2029.z)) + vec3<f32>(x_2032.x, x_2032.y, x_2032.z));
    let x_2035 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2034.x, x_2034.y, x_2034.z, x_2035.w);

    continuing {
      let x_2037 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2037 + bitcast<u32>(1i));
    }
  }
  let x_2039 : vec3<f32> = u_xlat19;
  let x_2040 : vec4<f32> = u_xlat5;
  let x_2043 : vec3<f32> = u_xlat20;
  u_xlat2 = ((x_2039 * vec3<f32>(x_2040.x, x_2040.x, x_2040.x)) + x_2043);
  let x_2045 : vec4<f32> = u_xlat8;
  let x_2047 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2045.x, x_2045.y, x_2045.z) + x_2047);
  let x_2051 : vec4<f32> = vs_INTERP4;
  let x_2053 : vec3<f32> = u_xlat0;
  let x_2055 : vec3<f32> = u_xlat2;
  let x_2056 : vec3<f32> = ((vec3<f32>(x_2051.w, x_2051.w, x_2051.w) * x_2053) + x_2055);
  let x_2057 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  let x_2059 : bool = u_xlatb15;
  if (x_2059) {
    let x_2064 : f32 = u_xlat1.x;
    x_2060 = x_2064;
  } else {
    x_2060 = 1.0f;
  }
  let x_2066 : f32 = x_2060;
  SV_Target0.w = x_2066;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(4) vs_INTERP4_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(5) vs_INTERP5_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP5 = vs_INTERP5_param;
  main_1();
  return main_out(SV_Target0);
}

