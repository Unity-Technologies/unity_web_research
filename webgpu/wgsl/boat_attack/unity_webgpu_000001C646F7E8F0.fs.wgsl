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

@group(1) @binding(4) var<uniform> x_1071 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1511 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1614 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_665 : f32;
  var u_xlatb29 : vec2<bool>;
  var u_xlat29 : vec2<f32>;
  var u_xlatb15 : bool;
  var x_738 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlatb20 : vec2<bool>;
  var x_1154 : f32;
  var x_1165 : vec3<f32>;
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
  var x_1908 : f32;
  var x_1921 : f32;
  var x_1973 : f32;
  var x_1984 : vec3<f32>;
  var x_2122 : f32;
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
  let x_548 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat1 = (abs(x_544) * vec3<f32>(x_548.x, x_548.y, x_548.x));
  let x_554 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_554);
  let x_558 : u32 = u_xlatu1.z;
  u_xlatu29 = (x_558 * 1025u);
  let x_562 : u32 = u_xlatu29;
  u_xlatu3 = (x_562 >> 6u);
  let x_566 : u32 = u_xlatu29;
  let x_567 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_566 ^ x_567));
  let x_570 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_570) * 9u);
  let x_574 : u32 = u_xlatu29;
  u_xlatu3 = (x_574 >> 11u);
  let x_577 : u32 = u_xlatu29;
  let x_578 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_577 ^ x_578));
  let x_581 : i32 = u_xlati29;
  u_xlati29 = (x_581 * 32769i);
  let x_585 : i32 = u_xlati29;
  let x_588 : u32 = u_xlatu1.y;
  u_xlati15 = bitcast<i32>((bitcast<u32>(x_585) ^ x_588));
  let x_592 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_592) * 1025u);
  let x_595 : u32 = u_xlatu15;
  u_xlatu29 = (x_595 >> 6u);
  let x_597 : u32 = u_xlatu29;
  let x_598 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_597 ^ x_598));
  let x_601 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_601) * 9u);
  let x_604 : u32 = u_xlatu15;
  u_xlatu29 = (x_604 >> 11u);
  let x_606 : u32 = u_xlatu29;
  let x_607 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_606 ^ x_607));
  let x_610 : i32 = u_xlati15;
  u_xlati15 = (x_610 * 32769i);
  let x_613 : i32 = u_xlati15;
  let x_616 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_613) ^ x_616));
  let x_619 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_619) * 1025u);
  let x_624 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_624 >> 6u);
  let x_626 : u32 = u_xlatu15;
  let x_628 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_626 ^ x_628));
  let x_631 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_631) * 9u);
  let x_636 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_636 >> 11u);
  let x_638 : u32 = u_xlatu15;
  let x_640 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_638 ^ x_640));
  let x_643 : i32 = u_xlati1;
  u_xlati1 = (x_643 * 32769i);
  param = 1065353216i;
  let x_649 : i32 = u_xlati1;
  param_1 = x_649;
  param_2 = 0i;
  param_3 = 23i;
  let x_652 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_652);
  let x_656 : f32 = u_xlat1.x;
  u_xlat1.x = (x_656 + -1.0f);
  let x_661 : f32 = u_xlat1.x;
  u_xlat15 = (-(x_661) + 1.0f);
  let x_664 : bool = u_xlatb44;
  if (x_664) {
    let x_669 : f32 = u_xlat1.x;
    x_665 = x_669;
  } else {
    let x_671 : f32 = u_xlat15;
    x_665 = x_671;
  }
  let x_672 : f32 = x_665;
  u_xlat1.x = x_672;
  let x_674 : f32 = u_xlat43;
  let x_677 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_674 * 2.0f) + -(x_677));
  let x_682 : f32 = u_xlat1.x;
  let x_684 : f32 = u_xlat3.w;
  u_xlat15 = (x_682 * x_684);
  let x_689 : f32 = u_xlat15;
  u_xlatb29.x = (x_689 >= 0.400000006f);
  let x_696 : bool = u_xlatb29.x;
  let x_697 : f32 = u_xlat15;
  u_xlat29.x = select(0.0f, x_697, x_696);
  let x_701 : f32 = u_xlat3.w;
  let x_703 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_701 * x_703) + -0.400000006f);
  let x_708 : f32 = u_xlat15;
  u_xlat43 = dpdxCoarse(x_708);
  let x_710 : f32 = u_xlat15;
  u_xlat15 = dpdyCoarse(x_710);
  let x_712 : f32 = u_xlat15;
  let x_714 : f32 = u_xlat43;
  u_xlat15 = (abs(x_712) + abs(x_714));
  let x_717 : f32 = u_xlat15;
  u_xlat15 = max(x_717, 0.0001f);
  let x_721 : f32 = u_xlat1.x;
  let x_722 : f32 = u_xlat15;
  u_xlat1.x = (x_721 / x_722);
  let x_726 : f32 = u_xlat1.x;
  u_xlat1.x = (x_726 + 0.5f);
  let x_730 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_730, 0.0f, 1.0f);
  let x_735 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb15 = !((x_735 == 0.0f));
  let x_737 : bool = u_xlatb15;
  if (x_737) {
    let x_742 : f32 = u_xlat1.x;
    x_738 = x_742;
  } else {
    let x_745 : f32 = u_xlat29.x;
    x_738 = x_745;
  }
  let x_746 : f32 = x_738;
  u_xlat1.x = x_746;
  let x_749 : f32 = u_xlat1.x;
  u_xlat29.x = (x_749 + -0.0001f);
  let x_754 : f32 = u_xlat29.x;
  u_xlatb29.x = (x_754 < 0.0f);
  let x_758 : bool = u_xlatb29.x;
  if (((select(0i, 1i, x_758) * -1i) != 0i)) {
    discard;
  }
  let x_768 : f32 = vs_INTERP2.w;
  u_xlatb29.x = (0.0f < x_768);
  let x_772 : f32 = x_161.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_772 >= 0.0f);
  let x_776 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_776);
  let x_780 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_780);
  let x_784 : f32 = u_xlat29.y;
  let x_786 : f32 = u_xlat29.x;
  u_xlat29.x = (x_784 * x_786);
  let x_789 : vec3<f32> = vs_INTERP1;
  let x_791 : vec4<f32> = vs_INTERP2;
  let x_793 : vec3<f32> = (vec3<f32>(x_789.z, x_789.x, x_789.y) * vec3<f32>(x_791.y, x_791.z, x_791.x));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = vs_INTERP1;
  let x_798 : vec4<f32> = vs_INTERP2;
  let x_801 : vec4<f32> = u_xlat3;
  let x_804 : vec3<f32> = ((vec3<f32>(x_796.y, x_796.z, x_796.x) * vec3<f32>(x_798.z, x_798.x, x_798.y)) + -(vec3<f32>(x_801.x, x_801.y, x_801.z)));
  let x_805 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec2<f32> = u_xlat29;
  let x_809 : vec4<f32> = u_xlat3;
  let x_811 : vec3<f32> = (vec3<f32>(x_807.x, x_807.x, x_807.x) * vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat3;
  let x_816 : vec3<f32> = u_xlat19;
  let x_818 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816.y, x_816.y, x_816.y));
  let x_819 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec3<f32> = u_xlat19;
  let x_823 : vec4<f32> = vs_INTERP2;
  let x_826 : vec4<f32> = u_xlat3;
  let x_828 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.x, x_821.x) * vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec3<f32> = u_xlat19;
  let x_833 : vec3<f32> = vs_INTERP1;
  let x_835 : vec4<f32> = u_xlat3;
  let x_837 : vec3<f32> = ((vec3<f32>(x_831.z, x_831.z, x_831.z) * x_833) + vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat3;
  let x_842 : vec4<f32> = u_xlat3;
  u_xlat29.x = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_847 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_847);
  let x_850 : vec2<f32> = u_xlat29;
  let x_852 : vec4<f32> = u_xlat3;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.x, x_850.x) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  u_xlat3.w = 1.0f;
  let x_860 : vec4<f32> = x_161.unity_SHAr;
  let x_861 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_860, x_861);
  let x_866 : vec4<f32> = x_161.unity_SHAg;
  let x_867 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_866, x_867);
  let x_872 : vec4<f32> = x_161.unity_SHAb;
  let x_873 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_872, x_873);
  let x_876 : vec4<f32> = u_xlat3;
  let x_878 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_876.y, x_876.z, x_876.z, x_876.x) * vec4<f32>(x_878.x, x_878.y, x_878.z, x_878.z));
  let x_883 : vec4<f32> = x_161.unity_SHBr;
  let x_884 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_883, x_884);
  let x_889 : vec4<f32> = x_161.unity_SHBg;
  let x_890 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_889, x_890);
  let x_894 : vec4<f32> = x_161.unity_SHBb;
  let x_895 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_894, x_895);
  let x_899 : f32 = u_xlat3.y;
  let x_901 : f32 = u_xlat3.y;
  u_xlat29.x = (x_899 * x_901);
  let x_905 : f32 = u_xlat3.x;
  let x_907 : f32 = u_xlat3.x;
  let x_910 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_905 * x_907) + -(x_910));
  let x_916 : vec4<f32> = x_161.unity_SHC;
  let x_918 : vec2<f32> = u_xlat29;
  let x_921 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918.x, x_918.x, x_918.x)) + vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec3<f32> = u_xlat19;
  let x_925 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_924 + vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_928, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_932 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_933 : vec2<f32> = vec2<f32>(x_932.x, x_932.y);
  u_xlat29 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_933.x, x_933.y));
  let x_938 : vec2<f32> = u_xlat29;
  let x_939 : vec4<f32> = hlslcc_FragCoord;
  let x_941 : vec2<f32> = (x_938 * vec2<f32>(x_939.x, x_939.y));
  let x_942 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
  let x_945 : f32 = u_xlat6.y;
  let x_948 : f32 = x_90.x_ScaleBiasRt.x;
  let x_951 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat29.x = ((x_945 * x_948) + x_951);
  let x_955 : f32 = u_xlat29.x;
  u_xlat6.z = (-(x_955) + 1.0f);
  let x_960 : f32 = u_xlat5.x;
  u_xlat5.x = x_960;
  let x_963 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_963, 0.0f, 1.0f);
  let x_967 : f32 = u_xlat1.x;
  u_xlat1.x = x_967;
  let x_970 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_970, 0.0f, 1.0f);
  let x_973 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_973 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_978 : f32 = u_xlat5.x;
  u_xlat29.x = (-(x_978) + 1.0f);
  let x_983 : f32 = u_xlat29.x;
  let x_985 : f32 = u_xlat29.x;
  u_xlat43 = (x_983 * x_985);
  let x_987 : f32 = u_xlat43;
  u_xlat43 = max(x_987, 0.0078125f);
  let x_990 : f32 = u_xlat43;
  let x_991 : f32 = u_xlat43;
  u_xlat44 = (x_990 * x_991);
  let x_995 : f32 = u_xlat5.x;
  u_xlat45 = (x_995 + 0.040000021f);
  let x_998 : f32 = u_xlat45;
  u_xlat45 = min(x_998, 1.0f);
  let x_1001 : f32 = u_xlat43;
  u_xlat46 = ((x_1001 * 4.0f) + 2.0f);
  let x_1009 : vec4<f32> = u_xlat6;
  let x_1012 : f32 = x_90.x_GlobalMipBias.x;
  let x_1013 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1009.x, x_1009.z), x_1012);
  u_xlat5.x = x_1013.x;
  let x_1017 : f32 = u_xlat5.x;
  u_xlat6.x = (x_1017 + -1.0f);
  let x_1021 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1023 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1021 * x_1023) + 1.0f);
  let x_1028 : f32 = u_xlat5.x;
  let x_1030 : f32 = vs_INTERP4.w;
  u_xlat5.x = min(x_1028, x_1030);
  let x_1034 : vec3<f32> = vs_INTERP0;
  let x_1036 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  u_xlat20 = (x_1034 + -(x_1036));
  let x_1039 : vec3<f32> = u_xlat20;
  let x_1040 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_1039, x_1040);
  let x_1044 : f32 = u_xlat20.x;
  let x_1046 : f32 = x_271.x_MainLightShadowParams.z;
  let x_1049 : f32 = x_271.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1044 * x_1046) + x_1049);
  let x_1053 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1053, 0.0f, 1.0f);
  let x_1057 : f32 = u_xlat42;
  u_xlat34 = (-(x_1057) + 1.0f);
  let x_1061 : f32 = u_xlat20.x;
  let x_1062 : f32 = u_xlat34;
  let x_1064 : f32 = u_xlat42;
  u_xlat42 = ((x_1061 * x_1062) + x_1064);
  let x_1073 : f32 = x_1071.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1073 == -1.0f));
  let x_1077 : bool = u_xlatb20.x;
  if (x_1077) {
    let x_1080 : vec3<f32> = vs_INTERP0;
    let x_1083 : vec4<f32> = x_1071.x_MainLightWorldToLight[1i];
    let x_1085 : vec2<f32> = (vec2<f32>(x_1080.y, x_1080.y) * vec2<f32>(x_1083.x, x_1083.y));
    let x_1086 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1085.x, x_1085.y, x_1086.z);
    let x_1089 : vec4<f32> = x_1071.x_MainLightWorldToLight[0i];
    let x_1091 : vec3<f32> = vs_INTERP0;
    let x_1094 : vec3<f32> = u_xlat20;
    let x_1096 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1091.x, x_1091.x)) + vec2<f32>(x_1094.x, x_1094.y));
    let x_1097 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1096.x, x_1096.y, x_1097.z);
    let x_1100 : vec4<f32> = x_1071.x_MainLightWorldToLight[2i];
    let x_1102 : vec3<f32> = vs_INTERP0;
    let x_1105 : vec3<f32> = u_xlat20;
    let x_1107 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1102.z, x_1102.z)) + vec2<f32>(x_1105.x, x_1105.y));
    let x_1108 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1107.x, x_1107.y, x_1108.z);
    let x_1110 : vec3<f32> = u_xlat20;
    let x_1113 : vec4<f32> = x_1071.x_MainLightWorldToLight[3i];
    let x_1115 : vec2<f32> = (vec2<f32>(x_1110.x, x_1110.y) + vec2<f32>(x_1113.x, x_1113.y));
    let x_1116 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1115.x, x_1115.y, x_1116.z);
    let x_1118 : vec3<f32> = u_xlat20;
    let x_1122 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1123 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1122.x, x_1122.y, x_1123.z);
    let x_1130 : vec3<f32> = u_xlat20;
    let x_1133 : f32 = x_90.x_GlobalMipBias.x;
    let x_1134 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1130.x, x_1130.y), x_1133);
    u_xlat7 = x_1134;
    let x_1136 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1138 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1140 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1142 : f32 = x_1071.x_MainLightCookieTextureFormat;
    let x_1143 : vec4<f32> = vec4<f32>(x_1136, x_1138, x_1140, x_1142);
    let x_1150 : vec4<bool> = (vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1143.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1150.x, x_1150.y);
    let x_1153 : bool = u_xlatb20.y;
    if (x_1153) {
      let x_1158 : f32 = u_xlat7.w;
      x_1154 = x_1158;
    } else {
      let x_1161 : f32 = u_xlat7.x;
      x_1154 = x_1161;
    }
    let x_1162 : f32 = x_1154;
    u_xlat34 = x_1162;
    let x_1164 : bool = u_xlatb20.x;
    if (x_1164) {
      let x_1168 : vec4<f32> = u_xlat7;
      x_1165 = vec3<f32>(x_1168.x, x_1168.y, x_1168.z);
    } else {
      let x_1171 : f32 = u_xlat34;
      x_1165 = vec3<f32>(x_1171, x_1171, x_1171);
    }
    let x_1173 : vec3<f32> = x_1165;
    u_xlat20 = x_1173;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1178 : vec3<f32> = u_xlat20;
  let x_1180 : vec4<f32> = x_90.x_MainLightColor;
  u_xlat20 = (x_1178 * vec3<f32>(x_1180.x, x_1180.y, x_1180.z));
  let x_1183 : vec4<f32> = u_xlat6;
  let x_1185 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1183.x, x_1183.x, x_1183.x) * x_1185);
  let x_1187 : vec3<f32> = u_xlat2;
  let x_1189 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1187), vec3<f32>(x_1189.x, x_1189.y, x_1189.z));
  let x_1194 : f32 = u_xlat7.x;
  let x_1196 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1194 + x_1196);
  let x_1199 : vec4<f32> = u_xlat3;
  let x_1201 : vec4<f32> = u_xlat7;
  let x_1205 : vec3<f32> = u_xlat2;
  let x_1207 : vec3<f32> = ((vec3<f32>(x_1199.x, x_1199.y, x_1199.z) * -(vec3<f32>(x_1201.x, x_1201.x, x_1201.x))) + -(x_1205));
  let x_1208 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1211 : vec4<f32> = u_xlat3;
  let x_1213 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), x_1213);
  let x_1215 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1215, 0.0f, 1.0f);
  let x_1217 : f32 = u_xlat49;
  u_xlat49 = (-(x_1217) + 1.0f);
  let x_1220 : f32 = u_xlat49;
  let x_1221 : f32 = u_xlat49;
  u_xlat49 = (x_1220 * x_1221);
  let x_1223 : f32 = u_xlat49;
  let x_1224 : f32 = u_xlat49;
  u_xlat49 = (x_1223 * x_1224);
  let x_1227 : f32 = u_xlat29.x;
  u_xlat8.x = ((-(x_1227) * 0.699999988f) + 1.700000048f);
  let x_1235 : f32 = u_xlat29.x;
  let x_1237 : f32 = u_xlat8.x;
  u_xlat29.x = (x_1235 * x_1237);
  let x_1241 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1241 * 6.0f);
  let x_1253 : vec4<f32> = u_xlat7;
  let x_1256 : f32 = u_xlat29.x;
  let x_1257 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1253.x, x_1253.y, x_1253.z), x_1256);
  u_xlat8 = x_1257;
  let x_1259 : f32 = u_xlat8.w;
  u_xlat29.x = (x_1259 + -1.0f);
  let x_1263 : f32 = x_161.unity_SpecCube0_HDR.w;
  let x_1265 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1263 * x_1265) + 1.0f);
  let x_1270 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1270, 0.0f);
  let x_1274 : f32 = u_xlat29.x;
  u_xlat29.x = log2(x_1274);
  let x_1278 : f32 = u_xlat29.x;
  let x_1280 : f32 = x_161.unity_SpecCube0_HDR.y;
  u_xlat29.x = (x_1278 * x_1280);
  let x_1284 : f32 = u_xlat29.x;
  u_xlat29.x = exp2(x_1284);
  let x_1288 : f32 = u_xlat29.x;
  let x_1290 : f32 = x_161.unity_SpecCube0_HDR.x;
  u_xlat29.x = (x_1288 * x_1290);
  let x_1293 : vec4<f32> = u_xlat8;
  let x_1295 : vec2<f32> = u_xlat29;
  let x_1297 : vec3<f32> = (vec3<f32>(x_1293.x, x_1293.y, x_1293.z) * vec3<f32>(x_1295.x, x_1295.x, x_1295.x));
  let x_1298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1300 : f32 = u_xlat43;
  let x_1302 : f32 = u_xlat43;
  u_xlat29 = ((vec2<f32>(x_1300, x_1300) * vec2<f32>(x_1302, x_1302)) + vec2<f32>(-1.0f, 1.0f));
  let x_1308 : f32 = u_xlat29.y;
  u_xlat43 = (1.0f / x_1308);
  let x_1310 : f32 = u_xlat45;
  u_xlat45 = (x_1310 + -0.039999999f);
  let x_1313 : f32 = u_xlat49;
  let x_1314 : f32 = u_xlat45;
  u_xlat45 = ((x_1313 * x_1314) + 0.039999999f);
  let x_1318 : f32 = u_xlat43;
  let x_1319 : f32 = u_xlat45;
  u_xlat43 = (x_1318 * x_1319);
  let x_1321 : f32 = u_xlat43;
  let x_1323 : vec4<f32> = u_xlat7;
  let x_1325 : vec3<f32> = (vec3<f32>(x_1321, x_1321, x_1321) * vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec3<f32> = u_xlat19;
  let x_1329 : vec3<f32> = u_xlat4;
  let x_1331 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1328 * x_1329) + vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : f32 = u_xlat42;
  let x_1336 : f32 = x_161.unity_LightData.z;
  u_xlat42 = (x_1334 * x_1336);
  let x_1338 : vec4<f32> = u_xlat3;
  let x_1341 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1338.x, x_1338.y, x_1338.z), vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1344, 0.0f, 1.0f);
  let x_1346 : f32 = u_xlat42;
  let x_1347 : f32 = u_xlat43;
  u_xlat42 = (x_1346 * x_1347);
  let x_1349 : f32 = u_xlat42;
  let x_1351 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1349, x_1349, x_1349) * x_1351);
  let x_1353 : vec3<f32> = u_xlat2;
  let x_1355 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1357 : vec3<f32> = (x_1353 + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
  let x_1358 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
  let x_1360 : vec4<f32> = u_xlat7;
  let x_1362 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1360.x, x_1360.y, x_1360.z), vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
  let x_1365 : f32 = u_xlat42;
  u_xlat42 = max(x_1365, 1.17549435e-37f);
  let x_1368 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1368);
  let x_1370 : f32 = u_xlat42;
  let x_1372 : vec4<f32> = u_xlat7;
  let x_1374 : vec3<f32> = (vec3<f32>(x_1370, x_1370, x_1370) * vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1374.x, x_1374.y, x_1374.z, x_1375.w);
  let x_1377 : vec4<f32> = u_xlat3;
  let x_1379 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1377.x, x_1377.y, x_1377.z), vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
  let x_1382 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1382, 0.0f, 1.0f);
  let x_1385 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1387 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1385.x, x_1385.y, x_1385.z), vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
  let x_1390 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1390, 0.0f, 1.0f);
  let x_1392 : f32 = u_xlat42;
  let x_1393 : f32 = u_xlat42;
  u_xlat42 = (x_1392 * x_1393);
  let x_1395 : f32 = u_xlat42;
  let x_1397 : f32 = u_xlat29.x;
  u_xlat42 = ((x_1395 * x_1397) + 1.000010014f);
  let x_1401 : f32 = u_xlat43;
  let x_1402 : f32 = u_xlat43;
  u_xlat43 = (x_1401 * x_1402);
  let x_1404 : f32 = u_xlat42;
  let x_1405 : f32 = u_xlat42;
  u_xlat42 = (x_1404 * x_1405);
  let x_1407 : f32 = u_xlat43;
  u_xlat43 = max(x_1407, 0.100000001f);
  let x_1410 : f32 = u_xlat42;
  let x_1411 : f32 = u_xlat43;
  u_xlat42 = (x_1410 * x_1411);
  let x_1413 : f32 = u_xlat46;
  let x_1414 : f32 = u_xlat42;
  u_xlat42 = (x_1413 * x_1414);
  let x_1416 : f32 = u_xlat44;
  let x_1417 : f32 = u_xlat42;
  u_xlat42 = (x_1416 / x_1417);
  let x_1419 : f32 = u_xlat42;
  let x_1423 : vec3<f32> = u_xlat4;
  let x_1424 : vec3<f32> = ((vec3<f32>(x_1419, x_1419, x_1419) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1423);
  let x_1425 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1427 : vec3<f32> = u_xlat20;
  let x_1428 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1427 * vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
  let x_1433 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1435 : f32 = x_161.unity_LightData.y;
  u_xlat42 = min(x_1433, x_1435);
  let x_1437 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1437));
  let x_1442 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1444 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1446 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1448 : f32 = x_1071.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1449 : vec4<f32> = vec4<f32>(x_1442, x_1444, x_1446, x_1448);
  let x_1455 : vec4<bool> = (vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1449.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1455.x, x_1455.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1466 : u32 = u_xlatu_loop_1;
    let x_1467 : u32 = u_xlatu42;
    if ((x_1466 < x_1467)) {
    } else {
      break;
    }
    let x_1470 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1470 >> 2u);
    let x_1473 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1473 & 3u));
    let x_1476 : u32 = u_xlatu45;
    let x_1479 : vec4<f32> = x_161.unity_LightIndices[bitcast<i32>(x_1476)];
    let x_1489 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1494 : vec4<u32> = indexable[x_1489];
    u_xlat45 = dot(x_1479, bitcast<vec4<f32>>(x_1494));
    let x_1497 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1497));
    let x_1500 : vec3<f32> = vs_INTERP0;
    let x_1512 : u32 = u_xlatu45;
    let x_1515 : vec4<f32> = x_1511.x_AdditionalLightsPosition[bitcast<i32>(x_1512)];
    let x_1518 : u32 = u_xlatu45;
    let x_1521 : vec4<f32> = x_1511.x_AdditionalLightsPosition[bitcast<i32>(x_1518)];
    u_xlat9 = ((-(x_1500) * vec3<f32>(x_1515.w, x_1515.w, x_1515.w)) + vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
    let x_1525 : vec3<f32> = u_xlat9;
    let x_1526 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1525, x_1526);
    let x_1528 : f32 = u_xlat35;
    u_xlat35 = max(x_1528, 6.10351562e-05f);
    let x_1531 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1531);
    let x_1534 : f32 = u_xlat49;
    let x_1536 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1534, x_1534, x_1534) * x_1536);
    let x_1539 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1539);
    let x_1541 : f32 = u_xlat35;
    let x_1542 : u32 = u_xlatu45;
    let x_1545 : f32 = x_1511.x_AdditionalLightsAttenuation[bitcast<i32>(x_1542)].x;
    u_xlat35 = (x_1541 * x_1545);
    let x_1547 : f32 = u_xlat35;
    let x_1549 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1547) * x_1549) + 1.0f);
    let x_1552 : f32 = u_xlat35;
    u_xlat35 = max(x_1552, 0.0f);
    let x_1554 : f32 = u_xlat35;
    let x_1555 : f32 = u_xlat35;
    u_xlat35 = (x_1554 * x_1555);
    let x_1557 : f32 = u_xlat35;
    let x_1558 : f32 = u_xlat50;
    u_xlat35 = (x_1557 * x_1558);
    let x_1560 : u32 = u_xlatu45;
    let x_1563 : vec4<f32> = x_1511.x_AdditionalLightsSpotDir[bitcast<i32>(x_1560)];
    let x_1565 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1563.x, x_1563.y, x_1563.z), x_1565);
    let x_1567 : f32 = u_xlat50;
    let x_1568 : u32 = u_xlatu45;
    let x_1571 : f32 = x_1511.x_AdditionalLightsAttenuation[bitcast<i32>(x_1568)].z;
    let x_1573 : u32 = u_xlatu45;
    let x_1576 : f32 = x_1511.x_AdditionalLightsAttenuation[bitcast<i32>(x_1573)].w;
    u_xlat50 = ((x_1567 * x_1571) + x_1576);
    let x_1578 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1578, 0.0f, 1.0f);
    let x_1580 : f32 = u_xlat50;
    let x_1581 : f32 = u_xlat50;
    u_xlat50 = (x_1580 * x_1581);
    let x_1583 : f32 = u_xlat35;
    let x_1584 : f32 = u_xlat50;
    u_xlat35 = (x_1583 * x_1584);
    let x_1587 : u32 = u_xlatu45;
    u_xlatu50 = (x_1587 >> 5u);
    let x_1590 : u32 = u_xlatu45;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1590) & 31i)));
    let x_1596 : i32 = u_xlati51;
    let x_1598 : u32 = u_xlatu50;
    let x_1601 : f32 = x_1071.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1598)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1596) & bitcast<u32>(x_1601)));
    let x_1605 : i32 = u_xlati50;
    if ((x_1605 != 0i)) {
      let x_1615 : u32 = u_xlatu45;
      let x_1618 : f32 = x_1614.x_AdditionalLightsLightTypes[bitcast<i32>(x_1615)].el;
      u_xlati50 = i32(x_1618);
      let x_1620 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1620 != 0i));
      let x_1624 : u32 = u_xlatu45;
      u_xlati52 = (bitcast<i32>(x_1624) << bitcast<u32>(2i));
      let x_1627 : i32 = u_xlati51;
      if ((x_1627 != 0i)) {
        let x_1632 : vec3<f32> = vs_INTERP0;
        let x_1634 : i32 = u_xlati52;
        let x_1637 : i32 = u_xlati52;
        let x_1641 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1634 + 1i) / 4i)][((x_1637 + 1i) % 4i)];
        let x_1643 : vec3<f32> = (vec3<f32>(x_1632.y, x_1632.y, x_1632.y) * vec3<f32>(x_1641.x, x_1641.y, x_1641.w));
        let x_1644 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
        let x_1646 : i32 = u_xlati52;
        let x_1648 : i32 = u_xlati52;
        let x_1651 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[(x_1646 / 4i)][(x_1648 % 4i)];
        let x_1653 : vec3<f32> = vs_INTERP0;
        let x_1656 : vec4<f32> = u_xlat11;
        let x_1658 : vec3<f32> = ((vec3<f32>(x_1651.x, x_1651.y, x_1651.w) * vec3<f32>(x_1653.x, x_1653.x, x_1653.x)) + vec3<f32>(x_1656.x, x_1656.y, x_1656.z));
        let x_1659 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
        let x_1661 : i32 = u_xlati52;
        let x_1664 : i32 = u_xlati52;
        let x_1668 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1661 + 2i) / 4i)][((x_1664 + 2i) % 4i)];
        let x_1670 : vec3<f32> = vs_INTERP0;
        let x_1673 : vec4<f32> = u_xlat11;
        let x_1675 : vec3<f32> = ((vec3<f32>(x_1668.x, x_1668.y, x_1668.w) * vec3<f32>(x_1670.z, x_1670.z, x_1670.z)) + vec3<f32>(x_1673.x, x_1673.y, x_1673.z));
        let x_1676 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
        let x_1678 : vec4<f32> = u_xlat11;
        let x_1680 : i32 = u_xlati52;
        let x_1683 : i32 = u_xlati52;
        let x_1687 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1680 + 3i) / 4i)][((x_1683 + 3i) % 4i)];
        let x_1689 : vec3<f32> = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) + vec3<f32>(x_1687.x, x_1687.y, x_1687.w));
        let x_1690 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
        let x_1692 : vec4<f32> = u_xlat11;
        let x_1694 : vec4<f32> = u_xlat11;
        let x_1696 : vec2<f32> = (vec2<f32>(x_1692.x, x_1692.y) / vec2<f32>(x_1694.z, x_1694.z));
        let x_1697 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1696.x, x_1696.y, x_1697.z, x_1697.w);
        let x_1699 : vec4<f32> = u_xlat11;
        let x_1702 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1703 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1702.x, x_1702.y, x_1703.z, x_1703.w);
        let x_1705 : vec4<f32> = u_xlat11;
        let x_1709 : vec2<f32> = clamp(vec2<f32>(x_1705.x, x_1705.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1710 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1709.x, x_1709.y, x_1710.z, x_1710.w);
        let x_1712 : u32 = u_xlatu45;
        let x_1715 : vec4<f32> = x_1614.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1712)];
        let x_1717 : vec4<f32> = u_xlat11;
        let x_1720 : u32 = u_xlatu45;
        let x_1723 : vec4<f32> = x_1614.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1720)];
        let x_1725 : vec2<f32> = ((vec2<f32>(x_1715.x, x_1715.y) * vec2<f32>(x_1717.x, x_1717.y)) + vec2<f32>(x_1723.z, x_1723.w));
        let x_1726 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
      } else {
        let x_1730 : i32 = u_xlati50;
        u_xlatb50 = (x_1730 == 1i);
        let x_1732 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1732);
        let x_1734 : i32 = u_xlati50;
        if ((x_1734 != 0i)) {
          let x_1739 : vec3<f32> = vs_INTERP0;
          let x_1741 : i32 = u_xlati52;
          let x_1744 : i32 = u_xlati52;
          let x_1748 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1741 + 1i) / 4i)][((x_1744 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1739.y, x_1739.y) * vec2<f32>(x_1748.x, x_1748.y));
          let x_1751 : i32 = u_xlati52;
          let x_1753 : i32 = u_xlati52;
          let x_1756 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[(x_1751 / 4i)][(x_1753 % 4i)];
          let x_1758 : vec3<f32> = vs_INTERP0;
          let x_1761 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1756.x, x_1756.y) * vec2<f32>(x_1758.x, x_1758.x)) + x_1761);
          let x_1763 : i32 = u_xlati52;
          let x_1766 : i32 = u_xlati52;
          let x_1770 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1763 + 2i) / 4i)][((x_1766 + 2i) % 4i)];
          let x_1772 : vec3<f32> = vs_INTERP0;
          let x_1775 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1770.x, x_1770.y) * vec2<f32>(x_1772.z, x_1772.z)) + x_1775);
          let x_1777 : vec2<f32> = u_xlat39;
          let x_1778 : i32 = u_xlati52;
          let x_1781 : i32 = u_xlati52;
          let x_1785 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1778 + 3i) / 4i)][((x_1781 + 3i) % 4i)];
          u_xlat39 = (x_1777 + vec2<f32>(x_1785.x, x_1785.y));
          let x_1788 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1788 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1791 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1791);
          let x_1793 : u32 = u_xlatu45;
          let x_1796 : vec4<f32> = x_1614.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1793)];
          let x_1798 : vec2<f32> = u_xlat39;
          let x_1800 : u32 = u_xlatu45;
          let x_1803 : vec4<f32> = x_1614.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1800)];
          let x_1805 : vec2<f32> = ((vec2<f32>(x_1796.x, x_1796.y) * x_1798) + vec2<f32>(x_1803.z, x_1803.w));
          let x_1806 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
        } else {
          let x_1810 : vec3<f32> = vs_INTERP0;
          let x_1812 : i32 = u_xlati52;
          let x_1815 : i32 = u_xlati52;
          let x_1819 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1812 + 1i) / 4i)][((x_1815 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1810.y, x_1810.y, x_1810.y, x_1810.y) * x_1819);
          let x_1821 : i32 = u_xlati52;
          let x_1823 : i32 = u_xlati52;
          let x_1826 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[(x_1821 / 4i)][(x_1823 % 4i)];
          let x_1827 : vec3<f32> = vs_INTERP0;
          let x_1830 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1826 * vec4<f32>(x_1827.x, x_1827.x, x_1827.x, x_1827.x)) + x_1830);
          let x_1832 : i32 = u_xlati52;
          let x_1835 : i32 = u_xlati52;
          let x_1839 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1832 + 2i) / 4i)][((x_1835 + 2i) % 4i)];
          let x_1840 : vec3<f32> = vs_INTERP0;
          let x_1843 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1839 * vec4<f32>(x_1840.z, x_1840.z, x_1840.z, x_1840.z)) + x_1843);
          let x_1845 : vec4<f32> = u_xlat12;
          let x_1846 : i32 = u_xlati52;
          let x_1849 : i32 = u_xlati52;
          let x_1853 : vec4<f32> = x_1614.x_AdditionalLightsWorldToLights[((x_1846 + 3i) / 4i)][((x_1849 + 3i) % 4i)];
          u_xlat12 = (x_1845 + x_1853);
          let x_1855 : vec4<f32> = u_xlat12;
          let x_1857 : vec4<f32> = u_xlat12;
          let x_1859 : vec3<f32> = (vec3<f32>(x_1855.x, x_1855.y, x_1855.z) / vec3<f32>(x_1857.w, x_1857.w, x_1857.w));
          let x_1860 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
          let x_1862 : vec4<f32> = u_xlat12;
          let x_1864 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1862.x, x_1862.y, x_1862.z), vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
          let x_1867 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1867);
          let x_1869 : f32 = u_xlat50;
          let x_1871 : vec4<f32> = u_xlat12;
          let x_1873 : vec3<f32> = (vec3<f32>(x_1869, x_1869, x_1869) * vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
          let x_1874 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
          let x_1876 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1876.x, x_1876.y, x_1876.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1881 : f32 = u_xlat50;
          u_xlat50 = max(x_1881, 0.000001f);
          let x_1884 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1884);
          let x_1887 : f32 = u_xlat50;
          let x_1889 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1887, x_1887, x_1887) * vec3<f32>(x_1889.z, x_1889.x, x_1889.y));
          let x_1893 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1893);
          let x_1897 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1897, 0.0f, 1.0f);
          let x_1901 : vec3<f32> = u_xlat13;
          let x_1904 : vec4<bool> = (vec4<f32>(x_1901.y, x_1901.z, x_1901.y, x_1901.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1904.x, x_1904.y);
          let x_1907 : bool = u_xlatb39.x;
          if (x_1907) {
            let x_1912 : f32 = u_xlat13.x;
            x_1908 = x_1912;
          } else {
            let x_1915 : f32 = u_xlat13.x;
            x_1908 = -(x_1915);
          }
          let x_1917 : f32 = x_1908;
          u_xlat39.x = x_1917;
          let x_1920 : bool = u_xlatb39.y;
          if (x_1920) {
            let x_1925 : f32 = u_xlat13.x;
            x_1921 = x_1925;
          } else {
            let x_1928 : f32 = u_xlat13.x;
            x_1921 = -(x_1928);
          }
          let x_1930 : f32 = x_1921;
          u_xlat39.y = x_1930;
          let x_1932 : vec4<f32> = u_xlat12;
          let x_1934 : f32 = u_xlat50;
          let x_1937 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1932.x, x_1932.y) * vec2<f32>(x_1934, x_1934)) + x_1937);
          let x_1939 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1939 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1942 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1942, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1946 : u32 = u_xlatu45;
          let x_1949 : vec4<f32> = x_1614.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1946)];
          let x_1951 : vec2<f32> = u_xlat39;
          let x_1953 : u32 = u_xlatu45;
          let x_1956 : vec4<f32> = x_1614.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1953)];
          let x_1958 : vec2<f32> = ((vec2<f32>(x_1949.x, x_1949.y) * x_1951) + vec2<f32>(x_1956.z, x_1956.w));
          let x_1959 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1958.x, x_1958.y, x_1959.z, x_1959.w);
        }
      }
      let x_1966 : vec4<f32> = u_xlat11;
      let x_1969 : f32 = x_90.x_GlobalMipBias.x;
      let x_1970 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1966.x, x_1966.y), x_1969);
      u_xlat11 = x_1970;
      let x_1972 : bool = u_xlatb7.y;
      if (x_1972) {
        let x_1977 : f32 = u_xlat11.w;
        x_1973 = x_1977;
      } else {
        let x_1980 : f32 = u_xlat11.x;
        x_1973 = x_1980;
      }
      let x_1981 : f32 = x_1973;
      u_xlat50 = x_1981;
      let x_1983 : bool = u_xlatb7.x;
      if (x_1983) {
        let x_1987 : vec4<f32> = u_xlat11;
        x_1984 = vec3<f32>(x_1987.x, x_1987.y, x_1987.z);
      } else {
        let x_1990 : f32 = u_xlat50;
        x_1984 = vec3<f32>(x_1990, x_1990, x_1990);
      }
      let x_1992 : vec3<f32> = x_1984;
      let x_1993 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1999 : vec4<f32> = u_xlat11;
    let x_2001 : u32 = u_xlatu45;
    let x_2004 : vec4<f32> = x_1511.x_AdditionalLightsColor[bitcast<i32>(x_2001)];
    let x_2006 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.y, x_1999.z) * vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
    let x_2007 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2006.x, x_2006.y, x_2006.z, x_2007.w);
    let x_2009 : vec4<f32> = u_xlat6;
    let x_2011 : vec4<f32> = u_xlat11;
    let x_2013 : vec3<f32> = (vec3<f32>(x_2009.x, x_2009.x, x_2009.x) * vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
    let x_2014 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
    let x_2016 : vec4<f32> = u_xlat3;
    let x_2018 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_2016.x, x_2016.y, x_2016.z), x_2018);
    let x_2020 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2020, 0.0f, 1.0f);
    let x_2022 : f32 = u_xlat45;
    let x_2023 : f32 = u_xlat35;
    u_xlat45 = (x_2022 * x_2023);
    let x_2025 : f32 = u_xlat45;
    let x_2027 : vec4<f32> = u_xlat11;
    let x_2029 : vec3<f32> = (vec3<f32>(x_2025, x_2025, x_2025) * vec3<f32>(x_2027.x, x_2027.y, x_2027.z));
    let x_2030 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2029.x, x_2029.y, x_2029.z, x_2030.w);
    let x_2032 : vec3<f32> = u_xlat9;
    let x_2033 : f32 = u_xlat49;
    let x_2036 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_2032 * vec3<f32>(x_2033, x_2033, x_2033)) + x_2036);
    let x_2038 : vec3<f32> = u_xlat9;
    let x_2039 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_2038, x_2039);
    let x_2041 : f32 = u_xlat45;
    u_xlat45 = max(x_2041, 1.17549435e-37f);
    let x_2043 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_2043);
    let x_2045 : f32 = u_xlat45;
    let x_2047 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2045, x_2045, x_2045) * x_2047);
    let x_2049 : vec4<f32> = u_xlat3;
    let x_2051 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_2049.x, x_2049.y, x_2049.z), x_2051);
    let x_2053 : f32 = u_xlat45;
    u_xlat45 = clamp(x_2053, 0.0f, 1.0f);
    let x_2055 : vec3<f32> = u_xlat10;
    let x_2056 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_2055, x_2056);
    let x_2058 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2058, 0.0f, 1.0f);
    let x_2060 : f32 = u_xlat45;
    let x_2061 : f32 = u_xlat45;
    u_xlat45 = (x_2060 * x_2061);
    let x_2063 : f32 = u_xlat45;
    let x_2065 : f32 = u_xlat29.x;
    u_xlat45 = ((x_2063 * x_2065) + 1.000010014f);
    let x_2068 : f32 = u_xlat35;
    let x_2069 : f32 = u_xlat35;
    u_xlat35 = (x_2068 * x_2069);
    let x_2071 : f32 = u_xlat45;
    let x_2072 : f32 = u_xlat45;
    u_xlat45 = (x_2071 * x_2072);
    let x_2074 : f32 = u_xlat35;
    u_xlat35 = max(x_2074, 0.100000001f);
    let x_2076 : f32 = u_xlat45;
    let x_2077 : f32 = u_xlat35;
    u_xlat45 = (x_2076 * x_2077);
    let x_2079 : f32 = u_xlat46;
    let x_2080 : f32 = u_xlat45;
    u_xlat45 = (x_2079 * x_2080);
    let x_2082 : f32 = u_xlat44;
    let x_2083 : f32 = u_xlat45;
    u_xlat45 = (x_2082 / x_2083);
    let x_2085 : f32 = u_xlat45;
    let x_2088 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2085, x_2085, x_2085) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2088);
    let x_2090 : vec3<f32> = u_xlat9;
    let x_2091 : vec4<f32> = u_xlat11;
    let x_2094 : vec4<f32> = u_xlat8;
    let x_2096 : vec3<f32> = ((x_2090 * vec3<f32>(x_2091.x, x_2091.y, x_2091.z)) + vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
    let x_2097 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);

    continuing {
      let x_2099 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2099 + bitcast<u32>(1i));
    }
  }
  let x_2101 : vec3<f32> = u_xlat19;
  let x_2102 : vec4<f32> = u_xlat5;
  let x_2105 : vec3<f32> = u_xlat20;
  u_xlat2 = ((x_2101 * vec3<f32>(x_2102.x, x_2102.x, x_2102.x)) + x_2105);
  let x_2107 : vec4<f32> = u_xlat8;
  let x_2109 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2107.x, x_2107.y, x_2107.z) + x_2109);
  let x_2113 : vec4<f32> = vs_INTERP4;
  let x_2115 : vec3<f32> = u_xlat0;
  let x_2117 : vec3<f32> = u_xlat2;
  let x_2118 : vec3<f32> = ((vec3<f32>(x_2113.w, x_2113.w, x_2113.w) * x_2115) + x_2117);
  let x_2119 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
  let x_2121 : bool = u_xlatb15;
  if (x_2121) {
    let x_2126 : f32 = u_xlat1.x;
    x_2122 = x_2126;
  } else {
    x_2122 = 1.0f;
  }
  let x_2128 : f32 = x_2122;
  SV_Target0.w = x_2128;
  let x_2135 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_2137 : f32 = x_161.unity_RenderingLayer.x;
  u_xlatu0 = (x_2135 & bitcast<u32>(x_2137));
  let x_2140 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2140);
  let x_2145 : f32 = u_xlat0.x;
  let x_2147 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2145 * x_2147);
  let x_2151 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2151, 0.0f, 1.0f);
  let x_2154 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2154.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
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
  return main_out(SV_Target0, SV_Target1);
}

