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
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_145 : UnityPerDraw;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_255 : MainLightShadows;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1096 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1544 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1648 : AdditionalLightsCookies;

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
  var x_133 : vec3<f32>;
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
  var x_517 : f32;
  var u_xlatu2 : vec3<u32>;
  var u_xlatu30 : u32;
  var u_xlatu3 : u32;
  var u_xlati30 : i32;
  var u_xlati16 : i32;
  var u_xlatu16 : u32;
  var u_xlati2 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlat16 : vec3<f32>;
  var x_650 : f32;
  var u_xlatb16 : vec2<bool>;
  var x_681 : f32;
  var u_xlat30 : vec2<f32>;
  var u_xlatb2 : bool;
  var x_731 : f32;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat20 : f32;
  var u_xlat34 : vec2<f32>;
  var u_xlat48 : f32;
  var u_xlatb34 : vec2<bool>;
  var x_1164 : f32;
  var x_1175 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu46 : u32;
  var u_xlati49 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlatu51 : u32;
  var u_xlati52 : i32;
  var u_xlati51 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb51 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1951 : f32;
  var x_1964 : f32;
  var x_2026 : f32;
  var x_2037 : vec3<f32>;
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
  let x_121 : f32 = x_90.unity_MatrixV[0i].z;
  u_xlat2.x = x_121;
  let x_125 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat2.y = x_125;
  let x_130 : f32 = x_90.unity_MatrixV[2i].z;
  u_xlat2.z = x_130;
  let x_132 : bool = u_xlatb42;
  if (x_132) {
    let x_136 : vec3<f32> = u_xlat1;
    x_133 = x_136;
  } else {
    let x_138 : vec3<f32> = u_xlat2;
    x_133 = x_138;
  }
  let x_139 : vec3<f32> = x_133;
  u_xlat1 = x_139;
  let x_140 : vec3<f32> = u_xlat1;
  let x_148 : vec4<f32> = x_145.unity_WorldToObject[1i];
  u_xlat2 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = x_145.unity_WorldToObject[0i];
  let x_154 : vec3<f32> = u_xlat1;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + x_157);
  let x_160 : vec4<f32> = x_145.unity_WorldToObject[2i];
  let x_162 : vec3<f32> = u_xlat1;
  let x_165 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + x_165);
  let x_168 : vec3<f32> = u_xlat2;
  let x_169 : vec3<f32> = u_xlat2;
  u_xlat42 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat42;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_173, x_173, x_173) * x_175);
  let x_189 : vec4<f32> = vs_INTERP3;
  let x_192 : f32 = x_90.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_189.x, x_189.y), x_192);
  u_xlat3 = x_193;
  let x_195 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_199.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_210 : vec4<f32> = vs_INTERP3;
  let x_213 : f32 = x_90.x_GlobalMipBias.x;
  let x_214 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_210.x, x_210.y), x_213);
  u_xlat5 = vec4<f32>(x_214.w, x_214.x, x_214.y, x_214.z);
  let x_217 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_217.y, x_217.z, x_217.w, x_217.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_225 : vec4<f32> = u_xlat6;
  let x_226 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_225, x_226);
  let x_228 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_228);
  let x_231 : f32 = u_xlat42;
  let x_233 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_231, x_231, x_231) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_238 * 200.0f);
  let x_241 : f32 = u_xlat42;
  u_xlat42 = min(x_241, 1.0f);
  let x_243 : f32 = u_xlat42;
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec3<f32> = (vec3<f32>(x_243, x_243, x_243) * vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec3<f32> = vs_INTERP0;
  let x_257 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres0;
  let x_260 : vec3<f32> = (x_250 + -(vec3<f32>(x_257.x, x_257.y, x_257.z)));
  let x_261 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_264 : vec3<f32> = vs_INTERP0;
  let x_266 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres1;
  let x_269 : vec3<f32> = (x_264 + -(vec3<f32>(x_266.x, x_266.y, x_266.z)));
  let x_270 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec3<f32> = vs_INTERP0;
  let x_276 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres2;
  let x_279 : vec3<f32> = (x_273 + -(vec3<f32>(x_276.x, x_276.y, x_276.z)));
  let x_280 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_283 : vec3<f32> = vs_INTERP0;
  let x_286 : vec4<f32> = x_255.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_283 + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
  let x_290 : vec4<f32> = u_xlat6;
  let x_292 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_296 : vec4<f32> = u_xlat7;
  let x_298 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : vec4<f32> = u_xlat8;
  let x_304 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_308 : vec3<f32> = u_xlat9;
  let x_309 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_308, x_309);
  let x_315 : vec4<f32> = u_xlat6;
  let x_318 : vec4<f32> = x_255.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_315 < x_318);
  let x_321 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_325);
  let x_329 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_337);
  let x_342 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_342);
  let x_346 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_346);
  let x_349 : vec4<f32> = u_xlat6;
  let x_351 : vec4<f32> = u_xlat7;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_351.y, x_351.z, x_351.w));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat6;
  let x_359 : vec3<f32> = max(vec3<f32>(x_356.x, x_356.y, x_356.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_360 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_360.x, x_359.x, x_359.y, x_359.z);
  let x_362 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_362, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_367 : f32 = u_xlat42;
  u_xlat42 = (-(x_367) + 4.0f);
  let x_371 : f32 = u_xlat42;
  u_xlatu42 = u32(x_371);
  let x_374 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_374) << bitcast<u32>(2i));
  let x_377 : vec3<f32> = vs_INTERP0;
  let x_379 : i32 = u_xlati42;
  let x_382 : i32 = u_xlati42;
  let x_386 : vec4<f32> = x_255.x_MainLightWorldToShadow[((x_379 + 1i) / 4i)][((x_382 + 1i) % 4i)];
  let x_388 : vec3<f32> = (vec3<f32>(x_377.y, x_377.y, x_377.y) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : i32 = u_xlati42;
  let x_393 : i32 = u_xlati42;
  let x_396 : vec4<f32> = x_255.x_MainLightWorldToShadow[(x_391 / 4i)][(x_393 % 4i)];
  let x_398 : vec3<f32> = vs_INTERP0;
  let x_401 : vec4<f32> = u_xlat6;
  let x_403 : vec3<f32> = ((vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_398.x, x_398.x, x_398.x)) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : i32 = u_xlati42;
  let x_409 : i32 = u_xlati42;
  let x_413 : vec4<f32> = x_255.x_MainLightWorldToShadow[((x_406 + 2i) / 4i)][((x_409 + 2i) % 4i)];
  let x_415 : vec3<f32> = vs_INTERP0;
  let x_418 : vec4<f32> = u_xlat6;
  let x_420 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_415.z, x_415.z, x_415.z)) + vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat6;
  let x_425 : i32 = u_xlati42;
  let x_428 : i32 = u_xlati42;
  let x_432 : vec4<f32> = x_255.x_MainLightWorldToShadow[((x_425 + 3i) / 4i)][((x_428 + 3i) % 4i)];
  let x_434 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : vec4<f32> = u_xlat6;
  let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
  let x_441 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
  let x_453 : vec3<f32> = txVec0;
  let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_453.xy, x_453.z);
  u_xlat42 = x_455;
  let x_458 : f32 = x_255.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_458) + 1.0f);
  let x_461 : f32 = u_xlat42;
  let x_463 : f32 = x_255.x_MainLightShadowParams.x;
  let x_465 : f32 = u_xlat43;
  u_xlat42 = ((x_461 * x_463) + x_465);
  let x_469 : f32 = u_xlat6.z;
  u_xlatb43 = (0.0f >= x_469);
  let x_473 : f32 = u_xlat6.z;
  u_xlatb44 = (x_473 >= 1.0f);
  let x_475 : bool = u_xlatb43;
  let x_476 : bool = u_xlatb44;
  u_xlatb43 = (x_475 | x_476);
  let x_478 : bool = u_xlatb43;
  let x_479 : f32 = u_xlat42;
  u_xlat42 = select(x_479, 1.0f, x_478);
  let x_481 : vec3<f32> = u_xlat0;
  let x_483 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_481, -(vec3<f32>(x_483.x, x_483.y, x_483.z)));
  let x_489 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_489, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat42;
  let x_495 : vec4<f32> = x_90.x_MainLightColor;
  let x_497 : vec3<f32> = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec3<f32> = u_xlat0;
  let x_502 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec3<f32> = u_xlat0;
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_505 * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_510 : f32 = x_145.unity_LODFade.x;
  u_xlatb43 = (x_510 < 0.0f);
  let x_514 : f32 = x_145.unity_LODFade.x;
  u_xlat44 = (x_514 + 1.0f);
  let x_516 : bool = u_xlatb43;
  if (x_516) {
    let x_520 : f32 = u_xlat44;
    x_517 = x_520;
  } else {
    let x_523 : f32 = x_145.unity_LODFade.x;
    x_517 = x_523;
  }
  let x_524 : f32 = x_517;
  u_xlat43 = x_524;
  let x_526 : f32 = u_xlat43;
  u_xlatb44 = (0.5f >= x_526);
  let x_528 : vec3<f32> = u_xlat2;
  let x_532 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_528) * vec3<f32>(x_532.x, x_532.y, x_532.x));
  let x_538 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_538);
  let x_542 : u32 = u_xlatu2.z;
  u_xlatu30 = (x_542 * 1025u);
  let x_546 : u32 = u_xlatu30;
  u_xlatu3 = (x_546 >> 6u);
  let x_550 : u32 = u_xlatu30;
  let x_551 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_550 ^ x_551));
  let x_554 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_554) * 9u);
  let x_558 : u32 = u_xlatu30;
  u_xlatu3 = (x_558 >> 11u);
  let x_561 : u32 = u_xlatu30;
  let x_562 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_561 ^ x_562));
  let x_565 : i32 = u_xlati30;
  u_xlati30 = (x_565 * 32769i);
  let x_569 : i32 = u_xlati30;
  let x_572 : u32 = u_xlatu2.y;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_569) ^ x_572));
  let x_576 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_576) * 1025u);
  let x_579 : u32 = u_xlatu16;
  u_xlatu30 = (x_579 >> 6u);
  let x_581 : u32 = u_xlatu30;
  let x_582 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_581 ^ x_582));
  let x_585 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_585) * 9u);
  let x_588 : u32 = u_xlatu16;
  u_xlatu30 = (x_588 >> 11u);
  let x_590 : u32 = u_xlatu30;
  let x_591 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_590 ^ x_591));
  let x_594 : i32 = u_xlati16;
  u_xlati16 = (x_594 * 32769i);
  let x_597 : i32 = u_xlati16;
  let x_600 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_597) ^ x_600));
  let x_603 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_603) * 1025u);
  let x_608 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_608 >> 6u);
  let x_610 : u32 = u_xlatu16;
  let x_612 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_610 ^ x_612));
  let x_615 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_615) * 9u);
  let x_620 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_620 >> 11u);
  let x_622 : u32 = u_xlatu16;
  let x_624 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_622 ^ x_624));
  let x_627 : i32 = u_xlati2;
  u_xlati2 = (x_627 * 32769i);
  param = 1065353216i;
  let x_633 : i32 = u_xlati2;
  param_1 = x_633;
  param_2 = 0i;
  param_3 = 23i;
  let x_636 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_636);
  let x_640 : f32 = u_xlat2.x;
  u_xlat2.x = (x_640 + -1.0f);
  let x_645 : f32 = u_xlat2.x;
  u_xlat16.x = (-(x_645) + 1.0f);
  let x_649 : bool = u_xlatb44;
  if (x_649) {
    let x_654 : f32 = u_xlat2.x;
    x_650 = x_654;
  } else {
    let x_657 : f32 = u_xlat16.x;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat2.x = x_658;
  let x_660 : f32 = u_xlat43;
  let x_663 : f32 = u_xlat2.x;
  u_xlat43 = ((x_660 * 2.0f) + -(x_663));
  let x_666 : f32 = u_xlat43;
  let x_668 : f32 = u_xlat3.w;
  u_xlat2.x = (x_666 * x_668);
  let x_675 : f32 = u_xlat2.x;
  u_xlatb16.x = (x_675 >= 0.400000006f);
  let x_680 : bool = u_xlatb16.x;
  if (x_680) {
    let x_685 : f32 = u_xlat2.x;
    x_681 = x_685;
  } else {
    x_681 = 0.0f;
  }
  let x_687 : f32 = x_681;
  u_xlat16.x = x_687;
  let x_690 : f32 = u_xlat3.w;
  let x_691 : f32 = u_xlat43;
  u_xlat43 = ((x_690 * x_691) + -0.400000006f);
  let x_698 : f32 = u_xlat2.x;
  u_xlat30.x = dpdxCoarse(x_698);
  let x_702 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_702);
  let x_706 : f32 = u_xlat2.x;
  let x_709 : f32 = u_xlat30.x;
  u_xlat2.x = (abs(x_706) + abs(x_709));
  let x_714 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_714, 0.0001f);
  let x_718 : f32 = u_xlat43;
  let x_720 : f32 = u_xlat2.x;
  u_xlat43 = (x_718 / x_720);
  let x_722 : f32 = u_xlat43;
  u_xlat43 = (x_722 + 0.5f);
  let x_724 : f32 = u_xlat43;
  u_xlat43 = clamp(x_724, 0.0f, 1.0f);
  let x_728 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_728 == 0.0f));
  let x_730 : bool = u_xlatb2;
  if (x_730) {
    let x_734 : f32 = u_xlat43;
    x_731 = x_734;
  } else {
    let x_737 : f32 = u_xlat16.x;
    x_731 = x_737;
  }
  let x_738 : f32 = x_731;
  u_xlat43 = x_738;
  let x_739 : f32 = u_xlat43;
  u_xlat16.x = (x_739 + -0.0001f);
  let x_744 : f32 = u_xlat16.x;
  u_xlatb16.x = (x_744 < 0.0f);
  let x_748 : bool = u_xlatb16.x;
  if (((select(0i, 1i, x_748) * -1i) != 0i)) {
    discard;
  }
  let x_758 : f32 = vs_INTERP2.w;
  u_xlatb16.x = (0.0f < x_758);
  let x_762 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb16.y = (x_762 >= 0.0f);
  let x_766 : bool = u_xlatb16.x;
  u_xlat16.x = select(-1.0f, 1.0f, x_766);
  let x_770 : bool = u_xlatb16.y;
  u_xlat16.y = select(-1.0f, 1.0f, x_770);
  let x_774 : f32 = u_xlat16.y;
  let x_776 : f32 = u_xlat16.x;
  u_xlat16.x = (x_774 * x_776);
  let x_779 : vec3<f32> = vs_INTERP1;
  let x_781 : vec4<f32> = vs_INTERP2;
  let x_783 : vec3<f32> = (vec3<f32>(x_779.z, x_779.x, x_779.y) * vec3<f32>(x_781.y, x_781.z, x_781.x));
  let x_784 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec3<f32> = vs_INTERP1;
  let x_788 : vec4<f32> = vs_INTERP2;
  let x_791 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = ((vec3<f32>(x_786.y, x_786.z, x_786.x) * vec3<f32>(x_788.z, x_788.x, x_788.y)) + -(vec3<f32>(x_791.x, x_791.y, x_791.z)));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec3<f32> = u_xlat16;
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat16 = (vec3<f32>(x_797.x, x_797.x, x_797.x) * vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec3<f32> = u_xlat16;
  let x_803 : vec3<f32> = u_xlat19;
  u_xlat16 = (x_802 * vec3<f32>(x_803.y, x_803.y, x_803.y));
  let x_806 : vec3<f32> = u_xlat19;
  let x_808 : vec4<f32> = vs_INTERP2;
  let x_811 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_806.x, x_806.x, x_806.x) * vec3<f32>(x_808.x, x_808.y, x_808.z)) + x_811);
  let x_813 : vec3<f32> = u_xlat19;
  let x_815 : vec3<f32> = vs_INTERP1;
  let x_817 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_813.z, x_813.z, x_813.z) * x_815) + x_817);
  let x_819 : vec3<f32> = u_xlat16;
  let x_820 : vec3<f32> = u_xlat16;
  u_xlat3.x = dot(x_819, x_820);
  let x_824 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_824);
  let x_827 : vec3<f32> = u_xlat16;
  let x_828 : vec4<f32> = u_xlat3;
  let x_830 : vec3<f32> = (x_827 * vec3<f32>(x_828.x, x_828.x, x_828.x));
  let x_831 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_834 : f32 = vs_INTERP0.y;
  let x_836 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat16.x = (x_834 * x_836);
  let x_840 : f32 = x_90.unity_MatrixV[0i].z;
  let x_842 : f32 = vs_INTERP0.x;
  let x_845 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_840 * x_842) + x_845);
  let x_849 : f32 = x_90.unity_MatrixV[2i].z;
  let x_851 : f32 = vs_INTERP0.z;
  let x_854 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_849 * x_851) + x_854);
  let x_858 : f32 = u_xlat16.x;
  let x_860 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat16.x = (x_858 + x_860);
  let x_864 : f32 = u_xlat16.x;
  let x_868 : f32 = x_90.x_ProjectionParams.y;
  u_xlat16.x = (-(x_864) + -(x_868));
  let x_873 : f32 = u_xlat16.x;
  u_xlat16.x = max(x_873, 0.0f);
  let x_877 : f32 = u_xlat16.x;
  let x_880 : f32 = x_90.unity_FogParams.x;
  u_xlat16.x = (x_877 * x_880);
  u_xlat3.w = 1.0f;
  let x_886 : vec4<f32> = x_145.unity_SHAr;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_886, x_887);
  let x_892 : vec4<f32> = x_145.unity_SHAg;
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_892, x_893);
  let x_898 : vec4<f32> = x_145.unity_SHAb;
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_898, x_899);
  let x_902 : vec4<f32> = u_xlat3;
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_902.y, x_902.z, x_902.z, x_902.x) * vec4<f32>(x_904.x, x_904.y, x_904.z, x_904.z));
  let x_909 : vec4<f32> = x_145.unity_SHBr;
  let x_910 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_909, x_910);
  let x_915 : vec4<f32> = x_145.unity_SHBg;
  let x_916 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_915, x_916);
  let x_920 : vec4<f32> = x_145.unity_SHBb;
  let x_921 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_920, x_921);
  let x_925 : f32 = u_xlat3.y;
  let x_927 : f32 = u_xlat3.y;
  u_xlat30.x = (x_925 * x_927);
  let x_931 : f32 = u_xlat3.x;
  let x_933 : f32 = u_xlat3.x;
  let x_936 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_931 * x_933) + -(x_936));
  let x_942 : vec4<f32> = x_145.unity_SHC;
  let x_944 : vec2<f32> = u_xlat30;
  let x_947 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(x_944.x, x_944.x, x_944.x)) + vec3<f32>(x_947.x, x_947.y, x_947.z));
  let x_950 : vec3<f32> = u_xlat19;
  let x_951 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_950 + vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_954, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_958 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_959 : vec2<f32> = vec2<f32>(x_958.x, x_958.y);
  u_xlat30 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_959.x, x_959.y));
  let x_964 : vec2<f32> = u_xlat30;
  let x_965 : vec4<f32> = hlslcc_FragCoord;
  let x_967 : vec2<f32> = (x_964 * vec2<f32>(x_965.x, x_965.y));
  let x_968 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
  let x_971 : f32 = u_xlat6.y;
  let x_974 : f32 = x_90.x_ScaleBiasRt.x;
  let x_977 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat30.x = ((x_971 * x_974) + x_977);
  let x_981 : f32 = u_xlat30.x;
  u_xlat6.z = (-(x_981) + 1.0f);
  let x_986 : f32 = u_xlat5.x;
  u_xlat5.x = x_986;
  let x_989 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_989, 0.0f, 1.0f);
  let x_992 : f32 = u_xlat43;
  u_xlat43 = x_992;
  let x_993 : f32 = u_xlat43;
  u_xlat43 = clamp(x_993, 0.0f, 1.0f);
  let x_995 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_995 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_1000 : f32 = u_xlat5.x;
  u_xlat30.x = (-(x_1000) + 1.0f);
  let x_1005 : f32 = u_xlat30.x;
  let x_1007 : f32 = u_xlat30.x;
  u_xlat44 = (x_1005 * x_1007);
  let x_1009 : f32 = u_xlat44;
  u_xlat44 = max(x_1009, 0.0078125f);
  let x_1013 : f32 = u_xlat44;
  let x_1014 : f32 = u_xlat44;
  u_xlat45 = (x_1013 * x_1014);
  let x_1018 : f32 = u_xlat5.x;
  u_xlat46 = (x_1018 + 0.040000021f);
  let x_1021 : f32 = u_xlat46;
  u_xlat46 = min(x_1021, 1.0f);
  let x_1023 : f32 = u_xlat44;
  u_xlat5.x = ((x_1023 * 4.0f) + 2.0f);
  let x_1032 : vec4<f32> = u_xlat6;
  let x_1035 : f32 = x_90.x_GlobalMipBias.x;
  let x_1036 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1032.x, x_1032.z), x_1035);
  u_xlat6.x = x_1036.x;
  let x_1041 : f32 = u_xlat6.x;
  u_xlat20 = (x_1041 + -1.0f);
  let x_1044 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1045 : f32 = u_xlat20;
  u_xlat20 = ((x_1044 * x_1045) + 1.0f);
  let x_1049 : f32 = u_xlat6.x;
  let x_1051 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_1049, x_1051);
  let x_1054 : vec3<f32> = vs_INTERP0;
  let x_1056 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_1058 : vec3<f32> = (x_1054 + -(x_1056));
  let x_1059 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1062 : vec4<f32> = u_xlat7;
  let x_1064 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_1062.x, x_1062.y, x_1062.z), vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1069 : f32 = u_xlat34.x;
  let x_1071 : f32 = x_255.x_MainLightShadowParams.z;
  let x_1074 : f32 = x_255.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_1069 * x_1071) + x_1074);
  let x_1078 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1078, 0.0f, 1.0f);
  let x_1082 : f32 = u_xlat42;
  u_xlat48 = (-(x_1082) + 1.0f);
  let x_1086 : f32 = u_xlat34.x;
  let x_1087 : f32 = u_xlat48;
  let x_1089 : f32 = u_xlat42;
  u_xlat42 = ((x_1086 * x_1087) + x_1089);
  let x_1098 : f32 = x_1096.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_1098 == -1.0f));
  let x_1102 : bool = u_xlatb34.x;
  if (x_1102) {
    let x_1105 : vec3<f32> = vs_INTERP0;
    let x_1108 : vec4<f32> = x_1096.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_1105.y, x_1105.y) * vec2<f32>(x_1108.x, x_1108.y));
    let x_1112 : vec4<f32> = x_1096.x_MainLightWorldToLight[0i];
    let x_1114 : vec3<f32> = vs_INTERP0;
    let x_1117 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1114.x, x_1114.x)) + x_1117);
    let x_1120 : vec4<f32> = x_1096.x_MainLightWorldToLight[2i];
    let x_1122 : vec3<f32> = vs_INTERP0;
    let x_1125 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1120.x, x_1120.y) * vec2<f32>(x_1122.z, x_1122.z)) + x_1125);
    let x_1127 : vec2<f32> = u_xlat34;
    let x_1129 : vec4<f32> = x_1096.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_1127 + vec2<f32>(x_1129.x, x_1129.y));
    let x_1132 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_1132 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1141 : vec2<f32> = u_xlat34;
    let x_1143 : f32 = x_90.x_GlobalMipBias.x;
    let x_1144 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1141, x_1143);
    u_xlat7 = x_1144;
    let x_1146 : f32 = x_1096.x_MainLightCookieTextureFormat;
    let x_1148 : f32 = x_1096.x_MainLightCookieTextureFormat;
    let x_1150 : f32 = x_1096.x_MainLightCookieTextureFormat;
    let x_1152 : f32 = x_1096.x_MainLightCookieTextureFormat;
    let x_1153 : vec4<f32> = vec4<f32>(x_1146, x_1148, x_1150, x_1152);
    let x_1160 : vec4<bool> = (vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1160.x, x_1160.y);
    let x_1163 : bool = u_xlatb34.y;
    if (x_1163) {
      let x_1168 : f32 = u_xlat7.w;
      x_1164 = x_1168;
    } else {
      let x_1171 : f32 = u_xlat7.x;
      x_1164 = x_1171;
    }
    let x_1172 : f32 = x_1164;
    u_xlat48 = x_1172;
    let x_1174 : bool = u_xlatb34.x;
    if (x_1174) {
      let x_1178 : vec4<f32> = u_xlat7;
      x_1175 = vec3<f32>(x_1178.x, x_1178.y, x_1178.z);
    } else {
      let x_1181 : f32 = u_xlat48;
      x_1175 = vec3<f32>(x_1181, x_1181, x_1181);
    }
    let x_1183 : vec3<f32> = x_1175;
    let x_1184 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1190 : vec4<f32> = u_xlat7;
  let x_1193 : vec4<f32> = x_90.x_MainLightColor;
  let x_1195 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) * vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
  let x_1196 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);
  let x_1198 : f32 = u_xlat20;
  let x_1200 : vec4<f32> = u_xlat7;
  let x_1202 : vec3<f32> = (vec3<f32>(x_1198, x_1198, x_1198) * vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  let x_1205 : vec3<f32> = u_xlat1;
  let x_1207 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1205), vec3<f32>(x_1207.x, x_1207.y, x_1207.z));
  let x_1212 : f32 = u_xlat34.x;
  let x_1214 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1212 + x_1214);
  let x_1217 : vec4<f32> = u_xlat3;
  let x_1219 : vec2<f32> = u_xlat34;
  let x_1223 : vec3<f32> = u_xlat1;
  let x_1225 : vec3<f32> = ((vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * -(vec3<f32>(x_1219.x, x_1219.x, x_1219.x))) + -(x_1223));
  let x_1226 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
  let x_1228 : vec4<f32> = u_xlat3;
  let x_1230 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(vec3<f32>(x_1228.x, x_1228.y, x_1228.z), x_1230);
  let x_1234 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1234, 0.0f, 1.0f);
  let x_1238 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1238) + 1.0f);
  let x_1243 : f32 = u_xlat34.x;
  let x_1245 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1243 * x_1245);
  let x_1249 : f32 = u_xlat34.x;
  let x_1251 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1249 * x_1251);
  let x_1255 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1255) * 0.699999988f) + 1.700000048f);
  let x_1262 : f32 = u_xlat30.x;
  let x_1263 : f32 = u_xlat48;
  u_xlat30.x = (x_1262 * x_1263);
  let x_1267 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1267 * 6.0f);
  let x_1279 : vec4<f32> = u_xlat8;
  let x_1282 : f32 = u_xlat30.x;
  let x_1283 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1279.x, x_1279.y, x_1279.z), x_1282);
  u_xlat8 = x_1283;
  let x_1285 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1285 + -1.0f);
  let x_1289 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1291 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1289 * x_1291) + 1.0f);
  let x_1296 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1296, 0.0f);
  let x_1300 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1300);
  let x_1304 : f32 = u_xlat30.x;
  let x_1306 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1304 * x_1306);
  let x_1310 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1310);
  let x_1314 : f32 = u_xlat30.x;
  let x_1316 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1314 * x_1316);
  let x_1319 : vec4<f32> = u_xlat8;
  let x_1321 : vec2<f32> = u_xlat30;
  let x_1323 : vec3<f32> = (vec3<f32>(x_1319.x, x_1319.y, x_1319.z) * vec3<f32>(x_1321.x, x_1321.x, x_1321.x));
  let x_1324 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
  let x_1326 : f32 = u_xlat44;
  let x_1328 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1326, x_1326) * vec2<f32>(x_1328, x_1328)) + vec2<f32>(-1.0f, 1.0f));
  let x_1334 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1334);
  let x_1336 : f32 = u_xlat46;
  u_xlat46 = (x_1336 + -0.039999999f);
  let x_1340 : f32 = u_xlat34.x;
  let x_1341 : f32 = u_xlat46;
  u_xlat46 = ((x_1340 * x_1341) + 0.039999999f);
  let x_1345 : f32 = u_xlat44;
  let x_1346 : f32 = u_xlat46;
  u_xlat44 = (x_1345 * x_1346);
  let x_1348 : f32 = u_xlat44;
  let x_1350 : vec4<f32> = u_xlat8;
  let x_1352 : vec3<f32> = (vec3<f32>(x_1348, x_1348, x_1348) * vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1355 : vec3<f32> = u_xlat19;
  let x_1356 : vec3<f32> = u_xlat4;
  let x_1358 : vec4<f32> = u_xlat8;
  u_xlat19 = ((x_1355 * x_1356) + vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : f32 = u_xlat42;
  let x_1363 : f32 = x_145.unity_LightData.z;
  u_xlat42 = (x_1361 * x_1363);
  let x_1365 : vec4<f32> = u_xlat3;
  let x_1368 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1365.x, x_1365.y, x_1365.z), vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1371 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1371, 0.0f, 1.0f);
  let x_1373 : f32 = u_xlat42;
  let x_1374 : f32 = u_xlat44;
  u_xlat42 = (x_1373 * x_1374);
  let x_1376 : f32 = u_xlat42;
  let x_1378 : vec4<f32> = u_xlat7;
  let x_1380 : vec3<f32> = (vec3<f32>(x_1376, x_1376, x_1376) * vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1381 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : vec3<f32> = u_xlat1;
  let x_1385 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1387 : vec3<f32> = (x_1383 + vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
  let x_1388 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
  let x_1390 : vec4<f32> = u_xlat8;
  let x_1392 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1390.x, x_1390.y, x_1390.z), vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : f32 = u_xlat42;
  u_xlat42 = max(x_1395, 1.17549435e-37f);
  let x_1398 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1398);
  let x_1400 : f32 = u_xlat42;
  let x_1402 : vec4<f32> = u_xlat8;
  let x_1404 : vec3<f32> = (vec3<f32>(x_1400, x_1400, x_1400) * vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
  let x_1405 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1404.x, x_1404.y, x_1404.z, x_1405.w);
  let x_1407 : vec4<f32> = u_xlat3;
  let x_1409 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1407.x, x_1407.y, x_1407.z), vec3<f32>(x_1409.x, x_1409.y, x_1409.z));
  let x_1412 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1412, 0.0f, 1.0f);
  let x_1415 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1417 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1415.x, x_1415.y, x_1415.z), vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
  let x_1420 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1420, 0.0f, 1.0f);
  let x_1422 : f32 = u_xlat42;
  let x_1423 : f32 = u_xlat42;
  u_xlat42 = (x_1422 * x_1423);
  let x_1425 : f32 = u_xlat42;
  let x_1427 : f32 = u_xlat30.x;
  u_xlat42 = ((x_1425 * x_1427) + 1.000010014f);
  let x_1431 : f32 = u_xlat44;
  let x_1432 : f32 = u_xlat44;
  u_xlat44 = (x_1431 * x_1432);
  let x_1434 : f32 = u_xlat42;
  let x_1435 : f32 = u_xlat42;
  u_xlat42 = (x_1434 * x_1435);
  let x_1437 : f32 = u_xlat44;
  u_xlat44 = max(x_1437, 0.100000001f);
  let x_1440 : f32 = u_xlat42;
  let x_1441 : f32 = u_xlat44;
  u_xlat42 = (x_1440 * x_1441);
  let x_1444 : f32 = u_xlat5.x;
  let x_1445 : f32 = u_xlat42;
  u_xlat42 = (x_1444 * x_1445);
  let x_1447 : f32 = u_xlat45;
  let x_1448 : f32 = u_xlat42;
  u_xlat42 = (x_1447 / x_1448);
  let x_1450 : f32 = u_xlat42;
  let x_1454 : vec3<f32> = u_xlat4;
  let x_1455 : vec3<f32> = ((vec3<f32>(x_1450, x_1450, x_1450) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1454);
  let x_1456 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1458 : vec4<f32> = u_xlat7;
  let x_1460 : vec4<f32> = u_xlat8;
  let x_1462 : vec3<f32> = (vec3<f32>(x_1458.x, x_1458.y, x_1458.z) * vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
  let x_1463 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
  let x_1467 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1469 : f32 = x_145.unity_LightData.y;
  u_xlat42 = min(x_1467, x_1469);
  let x_1471 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1471));
  let x_1475 : f32 = x_1096.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1477 : f32 = x_1096.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1479 : f32 = x_1096.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1481 : f32 = x_1096.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1482 : vec4<f32> = vec4<f32>(x_1475, x_1477, x_1479, x_1481);
  let x_1488 : vec4<bool> = (vec4<f32>(x_1482.x, x_1482.y, x_1482.z, x_1482.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1488.x, x_1488.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1499 : u32 = u_xlatu_loop_1;
    let x_1500 : u32 = u_xlatu42;
    if ((x_1499 < x_1500)) {
    } else {
      break;
    }
    let x_1503 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1503 >> 2u);
    let x_1506 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1506 & 3u));
    let x_1509 : u32 = u_xlatu46;
    let x_1512 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1509)];
    let x_1522 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1527 : vec4<u32> = indexable[x_1522];
    u_xlat46 = dot(x_1512, bitcast<vec4<f32>>(x_1527));
    let x_1530 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1530));
    let x_1533 : vec3<f32> = vs_INTERP0;
    let x_1545 : u32 = u_xlatu46;
    let x_1548 : vec4<f32> = x_1544.x_AdditionalLightsPosition[bitcast<i32>(x_1545)];
    let x_1551 : u32 = u_xlatu46;
    let x_1554 : vec4<f32> = x_1544.x_AdditionalLightsPosition[bitcast<i32>(x_1551)];
    u_xlat9 = ((-(x_1533) * vec3<f32>(x_1548.w, x_1548.w, x_1548.w)) + vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1558 : vec3<f32> = u_xlat9;
    let x_1559 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1558, x_1559);
    let x_1561 : f32 = u_xlat49;
    u_xlat49 = max(x_1561, 6.10351562e-05f);
    let x_1565 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1565);
    let x_1568 : f32 = u_xlat50;
    let x_1570 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1568, x_1568, x_1568) * x_1570);
    let x_1573 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1573);
    let x_1575 : f32 = u_xlat49;
    let x_1576 : u32 = u_xlatu46;
    let x_1579 : f32 = x_1544.x_AdditionalLightsAttenuation[bitcast<i32>(x_1576)].x;
    u_xlat49 = (x_1575 * x_1579);
    let x_1581 : f32 = u_xlat49;
    let x_1583 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1581) * x_1583) + 1.0f);
    let x_1586 : f32 = u_xlat49;
    u_xlat49 = max(x_1586, 0.0f);
    let x_1588 : f32 = u_xlat49;
    let x_1589 : f32 = u_xlat49;
    u_xlat49 = (x_1588 * x_1589);
    let x_1591 : f32 = u_xlat49;
    let x_1592 : f32 = u_xlat51;
    u_xlat49 = (x_1591 * x_1592);
    let x_1594 : u32 = u_xlatu46;
    let x_1597 : vec4<f32> = x_1544.x_AdditionalLightsSpotDir[bitcast<i32>(x_1594)];
    let x_1599 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1597.x, x_1597.y, x_1597.z), x_1599);
    let x_1601 : f32 = u_xlat51;
    let x_1602 : u32 = u_xlatu46;
    let x_1605 : f32 = x_1544.x_AdditionalLightsAttenuation[bitcast<i32>(x_1602)].z;
    let x_1607 : u32 = u_xlatu46;
    let x_1610 : f32 = x_1544.x_AdditionalLightsAttenuation[bitcast<i32>(x_1607)].w;
    u_xlat51 = ((x_1601 * x_1605) + x_1610);
    let x_1612 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1612, 0.0f, 1.0f);
    let x_1614 : f32 = u_xlat51;
    let x_1615 : f32 = u_xlat51;
    u_xlat51 = (x_1614 * x_1615);
    let x_1617 : f32 = u_xlat49;
    let x_1618 : f32 = u_xlat51;
    u_xlat49 = (x_1617 * x_1618);
    let x_1621 : u32 = u_xlatu46;
    u_xlatu51 = (x_1621 >> 5u);
    let x_1624 : u32 = u_xlatu46;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1624) & 31i)));
    let x_1630 : i32 = u_xlati52;
    let x_1632 : u32 = u_xlatu51;
    let x_1635 : f32 = x_1096.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1632)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1630) & bitcast<u32>(x_1635)));
    let x_1639 : i32 = u_xlati51;
    if ((x_1639 != 0i)) {
      let x_1649 : u32 = u_xlatu46;
      let x_1652 : f32 = x_1648.x_AdditionalLightsLightTypes[bitcast<i32>(x_1649)].el;
      u_xlati51 = i32(x_1652);
      let x_1654 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1654 != 0i));
      let x_1658 : u32 = u_xlatu46;
      u_xlati11 = (bitcast<i32>(x_1658) << bitcast<u32>(2i));
      let x_1661 : i32 = u_xlati52;
      if ((x_1661 != 0i)) {
        let x_1666 : vec3<f32> = vs_INTERP0;
        let x_1668 : i32 = u_xlati11;
        let x_1671 : i32 = u_xlati11;
        let x_1675 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1668 + 1i) / 4i)][((x_1671 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1666.y, x_1666.y, x_1666.y) * vec3<f32>(x_1675.x, x_1675.y, x_1675.w));
        let x_1678 : i32 = u_xlati11;
        let x_1680 : i32 = u_xlati11;
        let x_1683 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[(x_1678 / 4i)][(x_1680 % 4i)];
        let x_1685 : vec3<f32> = vs_INTERP0;
        let x_1688 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1683.x, x_1683.y, x_1683.w) * vec3<f32>(x_1685.x, x_1685.x, x_1685.x)) + x_1688);
        let x_1690 : i32 = u_xlati11;
        let x_1693 : i32 = u_xlati11;
        let x_1697 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1690 + 2i) / 4i)][((x_1693 + 2i) % 4i)];
        let x_1699 : vec3<f32> = vs_INTERP0;
        let x_1702 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1697.x, x_1697.y, x_1697.w) * vec3<f32>(x_1699.z, x_1699.z, x_1699.z)) + x_1702);
        let x_1704 : vec3<f32> = u_xlat25;
        let x_1705 : i32 = u_xlati11;
        let x_1708 : i32 = u_xlati11;
        let x_1712 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1705 + 3i) / 4i)][((x_1708 + 3i) % 4i)];
        u_xlat25 = (x_1704 + vec3<f32>(x_1712.x, x_1712.y, x_1712.w));
        let x_1715 : vec3<f32> = u_xlat25;
        let x_1717 : vec3<f32> = u_xlat25;
        let x_1719 : vec2<f32> = (vec2<f32>(x_1715.x, x_1715.y) / vec2<f32>(x_1717.z, x_1717.z));
        let x_1720 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1719.x, x_1719.y, x_1720.z);
        let x_1722 : vec3<f32> = u_xlat25;
        let x_1725 : vec2<f32> = ((vec2<f32>(x_1722.x, x_1722.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1726 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1725.x, x_1725.y, x_1726.z);
        let x_1728 : vec3<f32> = u_xlat25;
        let x_1732 : vec2<f32> = clamp(vec2<f32>(x_1728.x, x_1728.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1733 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1732.x, x_1732.y, x_1733.z);
        let x_1735 : u32 = u_xlatu46;
        let x_1738 : vec4<f32> = x_1648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1735)];
        let x_1740 : vec3<f32> = u_xlat25;
        let x_1743 : u32 = u_xlatu46;
        let x_1746 : vec4<f32> = x_1648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1743)];
        let x_1748 : vec2<f32> = ((vec2<f32>(x_1738.x, x_1738.y) * vec2<f32>(x_1740.x, x_1740.y)) + vec2<f32>(x_1746.z, x_1746.w));
        let x_1749 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1748.x, x_1748.y, x_1749.z);
      } else {
        let x_1753 : i32 = u_xlati51;
        u_xlatb51 = (x_1753 == 1i);
        let x_1755 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1755);
        let x_1757 : i32 = u_xlati51;
        if ((x_1757 != 0i)) {
          let x_1762 : vec3<f32> = vs_INTERP0;
          let x_1764 : i32 = u_xlati11;
          let x_1767 : i32 = u_xlati11;
          let x_1771 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1764 + 1i) / 4i)][((x_1767 + 1i) % 4i)];
          let x_1773 : vec2<f32> = (vec2<f32>(x_1762.y, x_1762.y) * vec2<f32>(x_1771.x, x_1771.y));
          let x_1774 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1773.x, x_1773.y, x_1774.z, x_1774.w);
          let x_1776 : i32 = u_xlati11;
          let x_1778 : i32 = u_xlati11;
          let x_1781 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[(x_1776 / 4i)][(x_1778 % 4i)];
          let x_1783 : vec3<f32> = vs_INTERP0;
          let x_1786 : vec4<f32> = u_xlat12;
          let x_1788 : vec2<f32> = ((vec2<f32>(x_1781.x, x_1781.y) * vec2<f32>(x_1783.x, x_1783.x)) + vec2<f32>(x_1786.x, x_1786.y));
          let x_1789 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
          let x_1791 : i32 = u_xlati11;
          let x_1794 : i32 = u_xlati11;
          let x_1798 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1791 + 2i) / 4i)][((x_1794 + 2i) % 4i)];
          let x_1800 : vec3<f32> = vs_INTERP0;
          let x_1803 : vec4<f32> = u_xlat12;
          let x_1805 : vec2<f32> = ((vec2<f32>(x_1798.x, x_1798.y) * vec2<f32>(x_1800.z, x_1800.z)) + vec2<f32>(x_1803.x, x_1803.y));
          let x_1806 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
          let x_1808 : vec4<f32> = u_xlat12;
          let x_1810 : i32 = u_xlati11;
          let x_1813 : i32 = u_xlati11;
          let x_1817 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1810 + 3i) / 4i)][((x_1813 + 3i) % 4i)];
          let x_1819 : vec2<f32> = (vec2<f32>(x_1808.x, x_1808.y) + vec2<f32>(x_1817.x, x_1817.y));
          let x_1820 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1819.x, x_1819.y, x_1820.z, x_1820.w);
          let x_1822 : vec4<f32> = u_xlat12;
          let x_1825 : vec2<f32> = ((vec2<f32>(x_1822.x, x_1822.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1826 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1825.x, x_1825.y, x_1826.z, x_1826.w);
          let x_1828 : vec4<f32> = u_xlat12;
          let x_1830 : vec2<f32> = fract(vec2<f32>(x_1828.x, x_1828.y));
          let x_1831 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1830.x, x_1830.y, x_1831.z, x_1831.w);
          let x_1833 : u32 = u_xlatu46;
          let x_1836 : vec4<f32> = x_1648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1833)];
          let x_1838 : vec4<f32> = u_xlat12;
          let x_1841 : u32 = u_xlatu46;
          let x_1844 : vec4<f32> = x_1648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1841)];
          let x_1846 : vec2<f32> = ((vec2<f32>(x_1836.x, x_1836.y) * vec2<f32>(x_1838.x, x_1838.y)) + vec2<f32>(x_1844.z, x_1844.w));
          let x_1847 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1846.x, x_1846.y, x_1847.z);
        } else {
          let x_1850 : vec3<f32> = vs_INTERP0;
          let x_1852 : i32 = u_xlati11;
          let x_1855 : i32 = u_xlati11;
          let x_1859 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1852 + 1i) / 4i)][((x_1855 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1850.y, x_1850.y, x_1850.y, x_1850.y) * x_1859);
          let x_1861 : i32 = u_xlati11;
          let x_1863 : i32 = u_xlati11;
          let x_1866 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[(x_1861 / 4i)][(x_1863 % 4i)];
          let x_1867 : vec3<f32> = vs_INTERP0;
          let x_1870 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1866 * vec4<f32>(x_1867.x, x_1867.x, x_1867.x, x_1867.x)) + x_1870);
          let x_1872 : i32 = u_xlati11;
          let x_1875 : i32 = u_xlati11;
          let x_1879 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1872 + 2i) / 4i)][((x_1875 + 2i) % 4i)];
          let x_1880 : vec3<f32> = vs_INTERP0;
          let x_1883 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1879 * vec4<f32>(x_1880.z, x_1880.z, x_1880.z, x_1880.z)) + x_1883);
          let x_1885 : vec4<f32> = u_xlat12;
          let x_1886 : i32 = u_xlati11;
          let x_1889 : i32 = u_xlati11;
          let x_1893 : vec4<f32> = x_1648.x_AdditionalLightsWorldToLights[((x_1886 + 3i) / 4i)][((x_1889 + 3i) % 4i)];
          u_xlat12 = (x_1885 + x_1893);
          let x_1895 : vec4<f32> = u_xlat12;
          let x_1897 : vec4<f32> = u_xlat12;
          let x_1899 : vec3<f32> = (vec3<f32>(x_1895.x, x_1895.y, x_1895.z) / vec3<f32>(x_1897.w, x_1897.w, x_1897.w));
          let x_1900 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1899.x, x_1899.y, x_1899.z, x_1900.w);
          let x_1902 : vec4<f32> = u_xlat12;
          let x_1904 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1902.x, x_1902.y, x_1902.z), vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
          let x_1907 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1907);
          let x_1909 : f32 = u_xlat51;
          let x_1911 : vec4<f32> = u_xlat12;
          let x_1913 : vec3<f32> = (vec3<f32>(x_1909, x_1909, x_1909) * vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
          let x_1914 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
          let x_1916 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1916.x, x_1916.y, x_1916.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1921 : f32 = u_xlat51;
          u_xlat51 = max(x_1921, 0.000001f);
          let x_1924 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1924);
          let x_1927 : f32 = u_xlat51;
          let x_1929 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1927, x_1927, x_1927) * vec3<f32>(x_1929.z, x_1929.x, x_1929.y));
          let x_1933 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1933);
          let x_1937 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1937, 0.0f, 1.0f);
          let x_1941 : vec3<f32> = u_xlat13;
          let x_1944 : vec4<bool> = (vec4<f32>(x_1941.y, x_1941.y, x_1941.y, x_1941.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1945 : vec2<bool> = vec2<bool>(x_1944.x, x_1944.w);
          let x_1946 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1945.x, x_1946.y, x_1946.z, x_1945.y);
          let x_1950 : bool = u_xlatb11.x;
          if (x_1950) {
            let x_1955 : f32 = u_xlat13.x;
            x_1951 = x_1955;
          } else {
            let x_1958 : f32 = u_xlat13.x;
            x_1951 = -(x_1958);
          }
          let x_1960 : f32 = x_1951;
          u_xlat11.x = x_1960;
          let x_1963 : bool = u_xlatb11.w;
          if (x_1963) {
            let x_1968 : f32 = u_xlat13.x;
            x_1964 = x_1968;
          } else {
            let x_1971 : f32 = u_xlat13.x;
            x_1964 = -(x_1971);
          }
          let x_1973 : f32 = x_1964;
          u_xlat11.w = x_1973;
          let x_1975 : vec4<f32> = u_xlat12;
          let x_1977 : f32 = u_xlat51;
          let x_1980 : vec4<f32> = u_xlat11;
          let x_1982 : vec2<f32> = ((vec2<f32>(x_1975.x, x_1975.y) * vec2<f32>(x_1977, x_1977)) + vec2<f32>(x_1980.x, x_1980.w));
          let x_1983 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1982.x, x_1983.y, x_1983.z, x_1982.y);
          let x_1985 : vec4<f32> = u_xlat11;
          let x_1988 : vec2<f32> = ((vec2<f32>(x_1985.x, x_1985.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1989 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1988.x, x_1989.y, x_1989.z, x_1988.y);
          let x_1991 : vec4<f32> = u_xlat11;
          let x_1995 : vec2<f32> = clamp(vec2<f32>(x_1991.x, x_1991.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1996 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1995.x, x_1996.y, x_1996.z, x_1995.y);
          let x_1998 : u32 = u_xlatu46;
          let x_2001 : vec4<f32> = x_1648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1998)];
          let x_2003 : vec4<f32> = u_xlat11;
          let x_2006 : u32 = u_xlatu46;
          let x_2009 : vec4<f32> = x_1648.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2006)];
          let x_2011 : vec2<f32> = ((vec2<f32>(x_2001.x, x_2001.y) * vec2<f32>(x_2003.x, x_2003.w)) + vec2<f32>(x_2009.z, x_2009.w));
          let x_2012 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2011.x, x_2011.y, x_2012.z);
        }
      }
      let x_2019 : vec3<f32> = u_xlat25;
      let x_2022 : f32 = x_90.x_GlobalMipBias.x;
      let x_2023 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2019.x, x_2019.y), x_2022);
      u_xlat11 = x_2023;
      let x_2025 : bool = u_xlatb34.y;
      if (x_2025) {
        let x_2030 : f32 = u_xlat11.w;
        x_2026 = x_2030;
      } else {
        let x_2033 : f32 = u_xlat11.x;
        x_2026 = x_2033;
      }
      let x_2034 : f32 = x_2026;
      u_xlat51 = x_2034;
      let x_2036 : bool = u_xlatb34.x;
      if (x_2036) {
        let x_2040 : vec4<f32> = u_xlat11;
        x_2037 = vec3<f32>(x_2040.x, x_2040.y, x_2040.z);
      } else {
        let x_2043 : f32 = u_xlat51;
        x_2037 = vec3<f32>(x_2043, x_2043, x_2043);
      }
      let x_2045 : vec3<f32> = x_2037;
      let x_2046 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2052 : vec4<f32> = u_xlat11;
    let x_2054 : u32 = u_xlatu46;
    let x_2057 : vec4<f32> = x_1544.x_AdditionalLightsColor[bitcast<i32>(x_2054)];
    let x_2059 : vec3<f32> = (vec3<f32>(x_2052.x, x_2052.y, x_2052.z) * vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
    let x_2060 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
    let x_2062 : f32 = u_xlat20;
    let x_2064 : vec4<f32> = u_xlat11;
    let x_2066 : vec3<f32> = (vec3<f32>(x_2062, x_2062, x_2062) * vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
    let x_2067 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
    let x_2069 : vec4<f32> = u_xlat3;
    let x_2071 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2069.x, x_2069.y, x_2069.z), x_2071);
    let x_2073 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2073, 0.0f, 1.0f);
    let x_2075 : f32 = u_xlat46;
    let x_2076 : f32 = u_xlat49;
    u_xlat46 = (x_2075 * x_2076);
    let x_2078 : f32 = u_xlat46;
    let x_2080 : vec4<f32> = u_xlat11;
    let x_2082 : vec3<f32> = (vec3<f32>(x_2078, x_2078, x_2078) * vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
    let x_2085 : vec3<f32> = u_xlat9;
    let x_2086 : f32 = u_xlat50;
    let x_2089 : vec3<f32> = u_xlat1;
    u_xlat9 = ((x_2085 * vec3<f32>(x_2086, x_2086, x_2086)) + x_2089);
    let x_2091 : vec3<f32> = u_xlat9;
    let x_2092 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_2091, x_2092);
    let x_2094 : f32 = u_xlat46;
    u_xlat46 = max(x_2094, 1.17549435e-37f);
    let x_2096 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2096);
    let x_2098 : f32 = u_xlat46;
    let x_2100 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2098, x_2098, x_2098) * x_2100);
    let x_2102 : vec4<f32> = u_xlat3;
    let x_2104 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2102.x, x_2102.y, x_2102.z), x_2104);
    let x_2106 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2106, 0.0f, 1.0f);
    let x_2108 : vec3<f32> = u_xlat10;
    let x_2109 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_2108, x_2109);
    let x_2111 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2111, 0.0f, 1.0f);
    let x_2113 : f32 = u_xlat46;
    let x_2114 : f32 = u_xlat46;
    u_xlat46 = (x_2113 * x_2114);
    let x_2116 : f32 = u_xlat46;
    let x_2118 : f32 = u_xlat30.x;
    u_xlat46 = ((x_2116 * x_2118) + 1.000010014f);
    let x_2121 : f32 = u_xlat49;
    let x_2122 : f32 = u_xlat49;
    u_xlat49 = (x_2121 * x_2122);
    let x_2124 : f32 = u_xlat46;
    let x_2125 : f32 = u_xlat46;
    u_xlat46 = (x_2124 * x_2125);
    let x_2127 : f32 = u_xlat49;
    u_xlat49 = max(x_2127, 0.100000001f);
    let x_2129 : f32 = u_xlat46;
    let x_2130 : f32 = u_xlat49;
    u_xlat46 = (x_2129 * x_2130);
    let x_2133 : f32 = u_xlat5.x;
    let x_2134 : f32 = u_xlat46;
    u_xlat46 = (x_2133 * x_2134);
    let x_2136 : f32 = u_xlat45;
    let x_2137 : f32 = u_xlat46;
    u_xlat46 = (x_2136 / x_2137);
    let x_2139 : f32 = u_xlat46;
    let x_2142 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2139, x_2139, x_2139) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2142);
    let x_2144 : vec3<f32> = u_xlat9;
    let x_2145 : vec4<f32> = u_xlat11;
    let x_2148 : vec4<f32> = u_xlat8;
    let x_2150 : vec3<f32> = ((x_2144 * vec3<f32>(x_2145.x, x_2145.y, x_2145.z)) + vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
    let x_2151 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);

    continuing {
      let x_2153 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2153 + bitcast<u32>(1i));
    }
  }
  let x_2155 : vec3<f32> = u_xlat19;
  let x_2156 : vec4<f32> = u_xlat6;
  let x_2159 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2155 * vec3<f32>(x_2156.x, x_2156.x, x_2156.x)) + vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
  let x_2162 : vec4<f32> = u_xlat8;
  let x_2164 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_2162.x, x_2162.y, x_2162.z) + x_2164);
  let x_2166 : vec4<f32> = vs_INTERP4;
  let x_2168 : vec3<f32> = u_xlat0;
  let x_2170 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2166.w, x_2166.w, x_2166.w) * x_2168) + x_2170);
  let x_2173 : f32 = u_xlat16.x;
  let x_2175 : f32 = u_xlat16.x;
  u_xlat42 = (x_2173 * -(x_2175));
  let x_2178 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2178);
  let x_2180 : vec3<f32> = u_xlat0;
  let x_2183 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_2180 + -(vec3<f32>(x_2183.x, x_2183.y, x_2183.z)));
  let x_2189 : f32 = u_xlat42;
  let x_2191 : vec3<f32> = u_xlat0;
  let x_2194 : vec4<f32> = x_90.unity_FogColor;
  let x_2196 : vec3<f32> = ((vec3<f32>(x_2189, x_2189, x_2189) * x_2191) + vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2197 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
  let x_2199 : bool = u_xlatb2;
  let x_2200 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2200, x_2199);
  let x_2208 : u32 = x_90.x_RenderingLayerMaxInt;
  let x_2210 : f32 = x_145.unity_RenderingLayer.x;
  u_xlatu0 = (x_2208 & bitcast<u32>(x_2210));
  let x_2213 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_2213);
  let x_2218 : f32 = u_xlat0.x;
  let x_2220 : f32 = x_90.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_2218 * x_2220);
  let x_2224 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_2224, 0.0f, 1.0f);
  let x_2227 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_2227.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
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

