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

@group(1) @binding(4) var<uniform> x_1095 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1543 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1647 : AdditionalLightsCookies;

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
  var x_1163 : f32;
  var x_1174 : vec3<f32>;
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
  var x_1950 : f32;
  var x_1963 : f32;
  var x_2025 : f32;
  var x_2036 : vec3<f32>;
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
  let x_867 : f32 = x_90.x_ProjectionParams.y;
  u_xlat16.x = (-(x_864) + -(x_867));
  let x_872 : f32 = u_xlat16.x;
  u_xlat16.x = max(x_872, 0.0f);
  let x_876 : f32 = u_xlat16.x;
  let x_879 : f32 = x_90.unity_FogParams.x;
  u_xlat16.x = (x_876 * x_879);
  u_xlat3.w = 1.0f;
  let x_885 : vec4<f32> = x_145.unity_SHAr;
  let x_886 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_885, x_886);
  let x_891 : vec4<f32> = x_145.unity_SHAg;
  let x_892 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_891, x_892);
  let x_897 : vec4<f32> = x_145.unity_SHAb;
  let x_898 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_897, x_898);
  let x_901 : vec4<f32> = u_xlat3;
  let x_903 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_901.y, x_901.z, x_901.z, x_901.x) * vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.z));
  let x_908 : vec4<f32> = x_145.unity_SHBr;
  let x_909 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_908, x_909);
  let x_914 : vec4<f32> = x_145.unity_SHBg;
  let x_915 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_914, x_915);
  let x_919 : vec4<f32> = x_145.unity_SHBb;
  let x_920 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_919, x_920);
  let x_924 : f32 = u_xlat3.y;
  let x_926 : f32 = u_xlat3.y;
  u_xlat30.x = (x_924 * x_926);
  let x_930 : f32 = u_xlat3.x;
  let x_932 : f32 = u_xlat3.x;
  let x_935 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_930 * x_932) + -(x_935));
  let x_941 : vec4<f32> = x_145.unity_SHC;
  let x_943 : vec2<f32> = u_xlat30;
  let x_946 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_941.x, x_941.y, x_941.z) * vec3<f32>(x_943.x, x_943.x, x_943.x)) + vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec3<f32> = u_xlat19;
  let x_950 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_949 + vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_953, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_957 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_958 : vec2<f32> = vec2<f32>(x_957.x, x_957.y);
  u_xlat30 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_958.x, x_958.y));
  let x_963 : vec2<f32> = u_xlat30;
  let x_964 : vec4<f32> = hlslcc_FragCoord;
  let x_966 : vec2<f32> = (x_963 * vec2<f32>(x_964.x, x_964.y));
  let x_967 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_966.x, x_966.y, x_967.z, x_967.w);
  let x_970 : f32 = u_xlat6.y;
  let x_973 : f32 = x_90.x_ScaleBiasRt.x;
  let x_976 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat30.x = ((x_970 * x_973) + x_976);
  let x_980 : f32 = u_xlat30.x;
  u_xlat6.z = (-(x_980) + 1.0f);
  let x_985 : f32 = u_xlat5.x;
  u_xlat5.x = x_985;
  let x_988 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_988, 0.0f, 1.0f);
  let x_991 : f32 = u_xlat43;
  u_xlat43 = x_991;
  let x_992 : f32 = u_xlat43;
  u_xlat43 = clamp(x_992, 0.0f, 1.0f);
  let x_994 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_994 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f));
  let x_999 : f32 = u_xlat5.x;
  u_xlat30.x = (-(x_999) + 1.0f);
  let x_1004 : f32 = u_xlat30.x;
  let x_1006 : f32 = u_xlat30.x;
  u_xlat44 = (x_1004 * x_1006);
  let x_1008 : f32 = u_xlat44;
  u_xlat44 = max(x_1008, 0.0078125f);
  let x_1012 : f32 = u_xlat44;
  let x_1013 : f32 = u_xlat44;
  u_xlat45 = (x_1012 * x_1013);
  let x_1017 : f32 = u_xlat5.x;
  u_xlat46 = (x_1017 + 0.040000021f);
  let x_1020 : f32 = u_xlat46;
  u_xlat46 = min(x_1020, 1.0f);
  let x_1022 : f32 = u_xlat44;
  u_xlat5.x = ((x_1022 * 4.0f) + 2.0f);
  let x_1031 : vec4<f32> = u_xlat6;
  let x_1034 : f32 = x_90.x_GlobalMipBias.x;
  let x_1035 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1031.x, x_1031.z), x_1034);
  u_xlat6.x = x_1035.x;
  let x_1040 : f32 = u_xlat6.x;
  u_xlat20 = (x_1040 + -1.0f);
  let x_1043 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1044 : f32 = u_xlat20;
  u_xlat20 = ((x_1043 * x_1044) + 1.0f);
  let x_1048 : f32 = u_xlat6.x;
  let x_1050 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_1048, x_1050);
  let x_1053 : vec3<f32> = vs_INTERP0;
  let x_1055 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_1057 : vec3<f32> = (x_1053 + -(x_1055));
  let x_1058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1061 : vec4<f32> = u_xlat7;
  let x_1063 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_1061.x, x_1061.y, x_1061.z), vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1068 : f32 = u_xlat34.x;
  let x_1070 : f32 = x_255.x_MainLightShadowParams.z;
  let x_1073 : f32 = x_255.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_1068 * x_1070) + x_1073);
  let x_1077 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1077, 0.0f, 1.0f);
  let x_1081 : f32 = u_xlat42;
  u_xlat48 = (-(x_1081) + 1.0f);
  let x_1085 : f32 = u_xlat34.x;
  let x_1086 : f32 = u_xlat48;
  let x_1088 : f32 = u_xlat42;
  u_xlat42 = ((x_1085 * x_1086) + x_1088);
  let x_1097 : f32 = x_1095.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_1097 == -1.0f));
  let x_1101 : bool = u_xlatb34.x;
  if (x_1101) {
    let x_1104 : vec3<f32> = vs_INTERP0;
    let x_1107 : vec4<f32> = x_1095.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_1104.y, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y));
    let x_1111 : vec4<f32> = x_1095.x_MainLightWorldToLight[0i];
    let x_1113 : vec3<f32> = vs_INTERP0;
    let x_1116 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1113.x, x_1113.x)) + x_1116);
    let x_1119 : vec4<f32> = x_1095.x_MainLightWorldToLight[2i];
    let x_1121 : vec3<f32> = vs_INTERP0;
    let x_1124 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1119.x, x_1119.y) * vec2<f32>(x_1121.z, x_1121.z)) + x_1124);
    let x_1126 : vec2<f32> = u_xlat34;
    let x_1128 : vec4<f32> = x_1095.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_1126 + vec2<f32>(x_1128.x, x_1128.y));
    let x_1131 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_1131 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1140 : vec2<f32> = u_xlat34;
    let x_1142 : f32 = x_90.x_GlobalMipBias.x;
    let x_1143 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1140, x_1142);
    u_xlat7 = x_1143;
    let x_1145 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1147 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1149 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1151 : f32 = x_1095.x_MainLightCookieTextureFormat;
    let x_1152 : vec4<f32> = vec4<f32>(x_1145, x_1147, x_1149, x_1151);
    let x_1159 : vec4<bool> = (vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1152.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1159.x, x_1159.y);
    let x_1162 : bool = u_xlatb34.y;
    if (x_1162) {
      let x_1167 : f32 = u_xlat7.w;
      x_1163 = x_1167;
    } else {
      let x_1170 : f32 = u_xlat7.x;
      x_1163 = x_1170;
    }
    let x_1171 : f32 = x_1163;
    u_xlat48 = x_1171;
    let x_1173 : bool = u_xlatb34.x;
    if (x_1173) {
      let x_1177 : vec4<f32> = u_xlat7;
      x_1174 = vec3<f32>(x_1177.x, x_1177.y, x_1177.z);
    } else {
      let x_1180 : f32 = u_xlat48;
      x_1174 = vec3<f32>(x_1180, x_1180, x_1180);
    }
    let x_1182 : vec3<f32> = x_1174;
    let x_1183 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1189 : vec4<f32> = u_xlat7;
  let x_1192 : vec4<f32> = x_90.x_MainLightColor;
  let x_1194 : vec3<f32> = (vec3<f32>(x_1189.x, x_1189.y, x_1189.z) * vec3<f32>(x_1192.x, x_1192.y, x_1192.z));
  let x_1195 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1197 : f32 = u_xlat20;
  let x_1199 : vec4<f32> = u_xlat7;
  let x_1201 : vec3<f32> = (vec3<f32>(x_1197, x_1197, x_1197) * vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1204 : vec3<f32> = u_xlat1;
  let x_1206 : vec4<f32> = u_xlat3;
  u_xlat34.x = dot(-(x_1204), vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1211 : f32 = u_xlat34.x;
  let x_1213 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1211 + x_1213);
  let x_1216 : vec4<f32> = u_xlat3;
  let x_1218 : vec2<f32> = u_xlat34;
  let x_1222 : vec3<f32> = u_xlat1;
  let x_1224 : vec3<f32> = ((vec3<f32>(x_1216.x, x_1216.y, x_1216.z) * -(vec3<f32>(x_1218.x, x_1218.x, x_1218.x))) + -(x_1222));
  let x_1225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : vec4<f32> = u_xlat3;
  let x_1229 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(vec3<f32>(x_1227.x, x_1227.y, x_1227.z), x_1229);
  let x_1233 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1233, 0.0f, 1.0f);
  let x_1237 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1237) + 1.0f);
  let x_1242 : f32 = u_xlat34.x;
  let x_1244 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1242 * x_1244);
  let x_1248 : f32 = u_xlat34.x;
  let x_1250 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1248 * x_1250);
  let x_1254 : f32 = u_xlat30.x;
  u_xlat48 = ((-(x_1254) * 0.699999988f) + 1.700000048f);
  let x_1261 : f32 = u_xlat30.x;
  let x_1262 : f32 = u_xlat48;
  u_xlat30.x = (x_1261 * x_1262);
  let x_1266 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1266 * 6.0f);
  let x_1278 : vec4<f32> = u_xlat8;
  let x_1281 : f32 = u_xlat30.x;
  let x_1282 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1278.x, x_1278.y, x_1278.z), x_1281);
  u_xlat8 = x_1282;
  let x_1284 : f32 = u_xlat8.w;
  u_xlat30.x = (x_1284 + -1.0f);
  let x_1288 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1290 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1288 * x_1290) + 1.0f);
  let x_1295 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1295, 0.0f);
  let x_1299 : f32 = u_xlat30.x;
  u_xlat30.x = log2(x_1299);
  let x_1303 : f32 = u_xlat30.x;
  let x_1305 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat30.x = (x_1303 * x_1305);
  let x_1309 : f32 = u_xlat30.x;
  u_xlat30.x = exp2(x_1309);
  let x_1313 : f32 = u_xlat30.x;
  let x_1315 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat30.x = (x_1313 * x_1315);
  let x_1318 : vec4<f32> = u_xlat8;
  let x_1320 : vec2<f32> = u_xlat30;
  let x_1322 : vec3<f32> = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) * vec3<f32>(x_1320.x, x_1320.x, x_1320.x));
  let x_1323 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
  let x_1325 : f32 = u_xlat44;
  let x_1327 : f32 = u_xlat44;
  u_xlat30 = ((vec2<f32>(x_1325, x_1325) * vec2<f32>(x_1327, x_1327)) + vec2<f32>(-1.0f, 1.0f));
  let x_1333 : f32 = u_xlat30.y;
  u_xlat44 = (1.0f / x_1333);
  let x_1335 : f32 = u_xlat46;
  u_xlat46 = (x_1335 + -0.039999999f);
  let x_1339 : f32 = u_xlat34.x;
  let x_1340 : f32 = u_xlat46;
  u_xlat46 = ((x_1339 * x_1340) + 0.039999999f);
  let x_1344 : f32 = u_xlat44;
  let x_1345 : f32 = u_xlat46;
  u_xlat44 = (x_1344 * x_1345);
  let x_1347 : f32 = u_xlat44;
  let x_1349 : vec4<f32> = u_xlat8;
  let x_1351 : vec3<f32> = (vec3<f32>(x_1347, x_1347, x_1347) * vec3<f32>(x_1349.x, x_1349.y, x_1349.z));
  let x_1352 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1352.w);
  let x_1354 : vec3<f32> = u_xlat19;
  let x_1355 : vec3<f32> = u_xlat4;
  let x_1357 : vec4<f32> = u_xlat8;
  u_xlat19 = ((x_1354 * x_1355) + vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1360 : f32 = u_xlat42;
  let x_1362 : f32 = x_145.unity_LightData.z;
  u_xlat42 = (x_1360 * x_1362);
  let x_1364 : vec4<f32> = u_xlat3;
  let x_1367 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1364.x, x_1364.y, x_1364.z), vec3<f32>(x_1367.x, x_1367.y, x_1367.z));
  let x_1370 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1370, 0.0f, 1.0f);
  let x_1372 : f32 = u_xlat42;
  let x_1373 : f32 = u_xlat44;
  u_xlat42 = (x_1372 * x_1373);
  let x_1375 : f32 = u_xlat42;
  let x_1377 : vec4<f32> = u_xlat7;
  let x_1379 : vec3<f32> = (vec3<f32>(x_1375, x_1375, x_1375) * vec3<f32>(x_1377.x, x_1377.y, x_1377.z));
  let x_1380 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec3<f32> = u_xlat1;
  let x_1384 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1386 : vec3<f32> = (x_1382 + vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : vec4<f32> = u_xlat8;
  let x_1391 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1389.x, x_1389.y, x_1389.z), vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : f32 = u_xlat42;
  u_xlat42 = max(x_1394, 1.17549435e-37f);
  let x_1397 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1397);
  let x_1399 : f32 = u_xlat42;
  let x_1401 : vec4<f32> = u_xlat8;
  let x_1403 : vec3<f32> = (vec3<f32>(x_1399, x_1399, x_1399) * vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1404 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
  let x_1406 : vec4<f32> = u_xlat3;
  let x_1408 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1406.x, x_1406.y, x_1406.z), vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
  let x_1411 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1411, 0.0f, 1.0f);
  let x_1414 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1416 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1414.x, x_1414.y, x_1414.z), vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1419, 0.0f, 1.0f);
  let x_1421 : f32 = u_xlat42;
  let x_1422 : f32 = u_xlat42;
  u_xlat42 = (x_1421 * x_1422);
  let x_1424 : f32 = u_xlat42;
  let x_1426 : f32 = u_xlat30.x;
  u_xlat42 = ((x_1424 * x_1426) + 1.000010014f);
  let x_1430 : f32 = u_xlat44;
  let x_1431 : f32 = u_xlat44;
  u_xlat44 = (x_1430 * x_1431);
  let x_1433 : f32 = u_xlat42;
  let x_1434 : f32 = u_xlat42;
  u_xlat42 = (x_1433 * x_1434);
  let x_1436 : f32 = u_xlat44;
  u_xlat44 = max(x_1436, 0.100000001f);
  let x_1439 : f32 = u_xlat42;
  let x_1440 : f32 = u_xlat44;
  u_xlat42 = (x_1439 * x_1440);
  let x_1443 : f32 = u_xlat5.x;
  let x_1444 : f32 = u_xlat42;
  u_xlat42 = (x_1443 * x_1444);
  let x_1446 : f32 = u_xlat45;
  let x_1447 : f32 = u_xlat42;
  u_xlat42 = (x_1446 / x_1447);
  let x_1449 : f32 = u_xlat42;
  let x_1453 : vec3<f32> = u_xlat4;
  let x_1454 : vec3<f32> = ((vec3<f32>(x_1449, x_1449, x_1449) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_1453);
  let x_1455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
  let x_1457 : vec4<f32> = u_xlat7;
  let x_1459 : vec4<f32> = u_xlat8;
  let x_1461 : vec3<f32> = (vec3<f32>(x_1457.x, x_1457.y, x_1457.z) * vec3<f32>(x_1459.x, x_1459.y, x_1459.z));
  let x_1462 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
  let x_1466 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1468 : f32 = x_145.unity_LightData.y;
  u_xlat42 = min(x_1466, x_1468);
  let x_1470 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1470));
  let x_1474 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1476 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1478 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1480 : f32 = x_1095.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1481 : vec4<f32> = vec4<f32>(x_1474, x_1476, x_1478, x_1480);
  let x_1487 : vec4<bool> = (vec4<f32>(x_1481.x, x_1481.y, x_1481.z, x_1481.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb34 = vec2<bool>(x_1487.x, x_1487.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1498 : u32 = u_xlatu_loop_1;
    let x_1499 : u32 = u_xlatu42;
    if ((x_1498 < x_1499)) {
    } else {
      break;
    }
    let x_1502 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1502 >> 2u);
    let x_1505 : u32 = u_xlatu_loop_1;
    u_xlati49 = bitcast<i32>((x_1505 & 3u));
    let x_1508 : u32 = u_xlatu46;
    let x_1511 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1508)];
    let x_1521 : i32 = u_xlati49;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1526 : vec4<u32> = indexable[x_1521];
    u_xlat46 = dot(x_1511, bitcast<vec4<f32>>(x_1526));
    let x_1529 : f32 = u_xlat46;
    u_xlatu46 = bitcast<u32>(i32(x_1529));
    let x_1532 : vec3<f32> = vs_INTERP0;
    let x_1544 : u32 = u_xlatu46;
    let x_1547 : vec4<f32> = x_1543.x_AdditionalLightsPosition[bitcast<i32>(x_1544)];
    let x_1550 : u32 = u_xlatu46;
    let x_1553 : vec4<f32> = x_1543.x_AdditionalLightsPosition[bitcast<i32>(x_1550)];
    u_xlat9 = ((-(x_1532) * vec3<f32>(x_1547.w, x_1547.w, x_1547.w)) + vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
    let x_1557 : vec3<f32> = u_xlat9;
    let x_1558 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_1557, x_1558);
    let x_1560 : f32 = u_xlat49;
    u_xlat49 = max(x_1560, 6.10351562e-05f);
    let x_1564 : f32 = u_xlat49;
    u_xlat50 = inverseSqrt(x_1564);
    let x_1567 : f32 = u_xlat50;
    let x_1569 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1567, x_1567, x_1567) * x_1569);
    let x_1572 : f32 = u_xlat49;
    u_xlat51 = (1.0f / x_1572);
    let x_1574 : f32 = u_xlat49;
    let x_1575 : u32 = u_xlatu46;
    let x_1578 : f32 = x_1543.x_AdditionalLightsAttenuation[bitcast<i32>(x_1575)].x;
    u_xlat49 = (x_1574 * x_1578);
    let x_1580 : f32 = u_xlat49;
    let x_1582 : f32 = u_xlat49;
    u_xlat49 = ((-(x_1580) * x_1582) + 1.0f);
    let x_1585 : f32 = u_xlat49;
    u_xlat49 = max(x_1585, 0.0f);
    let x_1587 : f32 = u_xlat49;
    let x_1588 : f32 = u_xlat49;
    u_xlat49 = (x_1587 * x_1588);
    let x_1590 : f32 = u_xlat49;
    let x_1591 : f32 = u_xlat51;
    u_xlat49 = (x_1590 * x_1591);
    let x_1593 : u32 = u_xlatu46;
    let x_1596 : vec4<f32> = x_1543.x_AdditionalLightsSpotDir[bitcast<i32>(x_1593)];
    let x_1598 : vec3<f32> = u_xlat10;
    u_xlat51 = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), x_1598);
    let x_1600 : f32 = u_xlat51;
    let x_1601 : u32 = u_xlatu46;
    let x_1604 : f32 = x_1543.x_AdditionalLightsAttenuation[bitcast<i32>(x_1601)].z;
    let x_1606 : u32 = u_xlatu46;
    let x_1609 : f32 = x_1543.x_AdditionalLightsAttenuation[bitcast<i32>(x_1606)].w;
    u_xlat51 = ((x_1600 * x_1604) + x_1609);
    let x_1611 : f32 = u_xlat51;
    u_xlat51 = clamp(x_1611, 0.0f, 1.0f);
    let x_1613 : f32 = u_xlat51;
    let x_1614 : f32 = u_xlat51;
    u_xlat51 = (x_1613 * x_1614);
    let x_1616 : f32 = u_xlat49;
    let x_1617 : f32 = u_xlat51;
    u_xlat49 = (x_1616 * x_1617);
    let x_1620 : u32 = u_xlatu46;
    u_xlatu51 = (x_1620 >> 5u);
    let x_1623 : u32 = u_xlatu46;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1623) & 31i)));
    let x_1629 : i32 = u_xlati52;
    let x_1631 : u32 = u_xlatu51;
    let x_1634 : f32 = x_1095.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1631)].el;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1629) & bitcast<u32>(x_1634)));
    let x_1638 : i32 = u_xlati51;
    if ((x_1638 != 0i)) {
      let x_1648 : u32 = u_xlatu46;
      let x_1651 : f32 = x_1647.x_AdditionalLightsLightTypes[bitcast<i32>(x_1648)].el;
      u_xlati51 = i32(x_1651);
      let x_1653 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1653 != 0i));
      let x_1657 : u32 = u_xlatu46;
      u_xlati11 = (bitcast<i32>(x_1657) << bitcast<u32>(2i));
      let x_1660 : i32 = u_xlati52;
      if ((x_1660 != 0i)) {
        let x_1665 : vec3<f32> = vs_INTERP0;
        let x_1667 : i32 = u_xlati11;
        let x_1670 : i32 = u_xlati11;
        let x_1674 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1667 + 1i) / 4i)][((x_1670 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1665.y, x_1665.y, x_1665.y) * vec3<f32>(x_1674.x, x_1674.y, x_1674.w));
        let x_1677 : i32 = u_xlati11;
        let x_1679 : i32 = u_xlati11;
        let x_1682 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[(x_1677 / 4i)][(x_1679 % 4i)];
        let x_1684 : vec3<f32> = vs_INTERP0;
        let x_1687 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1682.x, x_1682.y, x_1682.w) * vec3<f32>(x_1684.x, x_1684.x, x_1684.x)) + x_1687);
        let x_1689 : i32 = u_xlati11;
        let x_1692 : i32 = u_xlati11;
        let x_1696 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1689 + 2i) / 4i)][((x_1692 + 2i) % 4i)];
        let x_1698 : vec3<f32> = vs_INTERP0;
        let x_1701 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1696.x, x_1696.y, x_1696.w) * vec3<f32>(x_1698.z, x_1698.z, x_1698.z)) + x_1701);
        let x_1703 : vec3<f32> = u_xlat25;
        let x_1704 : i32 = u_xlati11;
        let x_1707 : i32 = u_xlati11;
        let x_1711 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1704 + 3i) / 4i)][((x_1707 + 3i) % 4i)];
        u_xlat25 = (x_1703 + vec3<f32>(x_1711.x, x_1711.y, x_1711.w));
        let x_1714 : vec3<f32> = u_xlat25;
        let x_1716 : vec3<f32> = u_xlat25;
        let x_1718 : vec2<f32> = (vec2<f32>(x_1714.x, x_1714.y) / vec2<f32>(x_1716.z, x_1716.z));
        let x_1719 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1718.x, x_1718.y, x_1719.z);
        let x_1721 : vec3<f32> = u_xlat25;
        let x_1724 : vec2<f32> = ((vec2<f32>(x_1721.x, x_1721.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1725 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1724.x, x_1724.y, x_1725.z);
        let x_1727 : vec3<f32> = u_xlat25;
        let x_1731 : vec2<f32> = clamp(vec2<f32>(x_1727.x, x_1727.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1732 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1731.x, x_1731.y, x_1732.z);
        let x_1734 : u32 = u_xlatu46;
        let x_1737 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1734)];
        let x_1739 : vec3<f32> = u_xlat25;
        let x_1742 : u32 = u_xlatu46;
        let x_1745 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1742)];
        let x_1747 : vec2<f32> = ((vec2<f32>(x_1737.x, x_1737.y) * vec2<f32>(x_1739.x, x_1739.y)) + vec2<f32>(x_1745.z, x_1745.w));
        let x_1748 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1747.x, x_1747.y, x_1748.z);
      } else {
        let x_1752 : i32 = u_xlati51;
        u_xlatb51 = (x_1752 == 1i);
        let x_1754 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1754);
        let x_1756 : i32 = u_xlati51;
        if ((x_1756 != 0i)) {
          let x_1761 : vec3<f32> = vs_INTERP0;
          let x_1763 : i32 = u_xlati11;
          let x_1766 : i32 = u_xlati11;
          let x_1770 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1763 + 1i) / 4i)][((x_1766 + 1i) % 4i)];
          let x_1772 : vec2<f32> = (vec2<f32>(x_1761.y, x_1761.y) * vec2<f32>(x_1770.x, x_1770.y));
          let x_1773 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
          let x_1775 : i32 = u_xlati11;
          let x_1777 : i32 = u_xlati11;
          let x_1780 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[(x_1775 / 4i)][(x_1777 % 4i)];
          let x_1782 : vec3<f32> = vs_INTERP0;
          let x_1785 : vec4<f32> = u_xlat12;
          let x_1787 : vec2<f32> = ((vec2<f32>(x_1780.x, x_1780.y) * vec2<f32>(x_1782.x, x_1782.x)) + vec2<f32>(x_1785.x, x_1785.y));
          let x_1788 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1787.x, x_1787.y, x_1788.z, x_1788.w);
          let x_1790 : i32 = u_xlati11;
          let x_1793 : i32 = u_xlati11;
          let x_1797 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1790 + 2i) / 4i)][((x_1793 + 2i) % 4i)];
          let x_1799 : vec3<f32> = vs_INTERP0;
          let x_1802 : vec4<f32> = u_xlat12;
          let x_1804 : vec2<f32> = ((vec2<f32>(x_1797.x, x_1797.y) * vec2<f32>(x_1799.z, x_1799.z)) + vec2<f32>(x_1802.x, x_1802.y));
          let x_1805 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1804.x, x_1804.y, x_1805.z, x_1805.w);
          let x_1807 : vec4<f32> = u_xlat12;
          let x_1809 : i32 = u_xlati11;
          let x_1812 : i32 = u_xlati11;
          let x_1816 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1809 + 3i) / 4i)][((x_1812 + 3i) % 4i)];
          let x_1818 : vec2<f32> = (vec2<f32>(x_1807.x, x_1807.y) + vec2<f32>(x_1816.x, x_1816.y));
          let x_1819 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1818.x, x_1818.y, x_1819.z, x_1819.w);
          let x_1821 : vec4<f32> = u_xlat12;
          let x_1824 : vec2<f32> = ((vec2<f32>(x_1821.x, x_1821.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1825 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1824.x, x_1824.y, x_1825.z, x_1825.w);
          let x_1827 : vec4<f32> = u_xlat12;
          let x_1829 : vec2<f32> = fract(vec2<f32>(x_1827.x, x_1827.y));
          let x_1830 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
          let x_1832 : u32 = u_xlatu46;
          let x_1835 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1832)];
          let x_1837 : vec4<f32> = u_xlat12;
          let x_1840 : u32 = u_xlatu46;
          let x_1843 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1840)];
          let x_1845 : vec2<f32> = ((vec2<f32>(x_1835.x, x_1835.y) * vec2<f32>(x_1837.x, x_1837.y)) + vec2<f32>(x_1843.z, x_1843.w));
          let x_1846 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1845.x, x_1845.y, x_1846.z);
        } else {
          let x_1849 : vec3<f32> = vs_INTERP0;
          let x_1851 : i32 = u_xlati11;
          let x_1854 : i32 = u_xlati11;
          let x_1858 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1851 + 1i) / 4i)][((x_1854 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1849.y, x_1849.y, x_1849.y, x_1849.y) * x_1858);
          let x_1860 : i32 = u_xlati11;
          let x_1862 : i32 = u_xlati11;
          let x_1865 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[(x_1860 / 4i)][(x_1862 % 4i)];
          let x_1866 : vec3<f32> = vs_INTERP0;
          let x_1869 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1865 * vec4<f32>(x_1866.x, x_1866.x, x_1866.x, x_1866.x)) + x_1869);
          let x_1871 : i32 = u_xlati11;
          let x_1874 : i32 = u_xlati11;
          let x_1878 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1871 + 2i) / 4i)][((x_1874 + 2i) % 4i)];
          let x_1879 : vec3<f32> = vs_INTERP0;
          let x_1882 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1878 * vec4<f32>(x_1879.z, x_1879.z, x_1879.z, x_1879.z)) + x_1882);
          let x_1884 : vec4<f32> = u_xlat12;
          let x_1885 : i32 = u_xlati11;
          let x_1888 : i32 = u_xlati11;
          let x_1892 : vec4<f32> = x_1647.x_AdditionalLightsWorldToLights[((x_1885 + 3i) / 4i)][((x_1888 + 3i) % 4i)];
          u_xlat12 = (x_1884 + x_1892);
          let x_1894 : vec4<f32> = u_xlat12;
          let x_1896 : vec4<f32> = u_xlat12;
          let x_1898 : vec3<f32> = (vec3<f32>(x_1894.x, x_1894.y, x_1894.z) / vec3<f32>(x_1896.w, x_1896.w, x_1896.w));
          let x_1899 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
          let x_1901 : vec4<f32> = u_xlat12;
          let x_1903 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1901.x, x_1901.y, x_1901.z), vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
          let x_1906 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1906);
          let x_1908 : f32 = u_xlat51;
          let x_1910 : vec4<f32> = u_xlat12;
          let x_1912 : vec3<f32> = (vec3<f32>(x_1908, x_1908, x_1908) * vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
          let x_1913 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
          let x_1915 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1915.x, x_1915.y, x_1915.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1920 : f32 = u_xlat51;
          u_xlat51 = max(x_1920, 0.000001f);
          let x_1923 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1923);
          let x_1926 : f32 = u_xlat51;
          let x_1928 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1926, x_1926, x_1926) * vec3<f32>(x_1928.z, x_1928.x, x_1928.y));
          let x_1932 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1932);
          let x_1936 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1936, 0.0f, 1.0f);
          let x_1940 : vec3<f32> = u_xlat13;
          let x_1943 : vec4<bool> = (vec4<f32>(x_1940.y, x_1940.y, x_1940.y, x_1940.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1944 : vec2<bool> = vec2<bool>(x_1943.x, x_1943.w);
          let x_1945 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1944.x, x_1945.y, x_1945.z, x_1944.y);
          let x_1949 : bool = u_xlatb11.x;
          if (x_1949) {
            let x_1954 : f32 = u_xlat13.x;
            x_1950 = x_1954;
          } else {
            let x_1957 : f32 = u_xlat13.x;
            x_1950 = -(x_1957);
          }
          let x_1959 : f32 = x_1950;
          u_xlat11.x = x_1959;
          let x_1962 : bool = u_xlatb11.w;
          if (x_1962) {
            let x_1967 : f32 = u_xlat13.x;
            x_1963 = x_1967;
          } else {
            let x_1970 : f32 = u_xlat13.x;
            x_1963 = -(x_1970);
          }
          let x_1972 : f32 = x_1963;
          u_xlat11.w = x_1972;
          let x_1974 : vec4<f32> = u_xlat12;
          let x_1976 : f32 = u_xlat51;
          let x_1979 : vec4<f32> = u_xlat11;
          let x_1981 : vec2<f32> = ((vec2<f32>(x_1974.x, x_1974.y) * vec2<f32>(x_1976, x_1976)) + vec2<f32>(x_1979.x, x_1979.w));
          let x_1982 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1981.x, x_1982.y, x_1982.z, x_1981.y);
          let x_1984 : vec4<f32> = u_xlat11;
          let x_1987 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1988 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1987.x, x_1988.y, x_1988.z, x_1987.y);
          let x_1990 : vec4<f32> = u_xlat11;
          let x_1994 : vec2<f32> = clamp(vec2<f32>(x_1990.x, x_1990.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1995 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1994.x, x_1995.y, x_1995.z, x_1994.y);
          let x_1997 : u32 = u_xlatu46;
          let x_2000 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1997)];
          let x_2002 : vec4<f32> = u_xlat11;
          let x_2005 : u32 = u_xlatu46;
          let x_2008 : vec4<f32> = x_1647.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2005)];
          let x_2010 : vec2<f32> = ((vec2<f32>(x_2000.x, x_2000.y) * vec2<f32>(x_2002.x, x_2002.w)) + vec2<f32>(x_2008.z, x_2008.w));
          let x_2011 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2010.x, x_2010.y, x_2011.z);
        }
      }
      let x_2018 : vec3<f32> = u_xlat25;
      let x_2021 : f32 = x_90.x_GlobalMipBias.x;
      let x_2022 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2018.x, x_2018.y), x_2021);
      u_xlat11 = x_2022;
      let x_2024 : bool = u_xlatb34.y;
      if (x_2024) {
        let x_2029 : f32 = u_xlat11.w;
        x_2025 = x_2029;
      } else {
        let x_2032 : f32 = u_xlat11.x;
        x_2025 = x_2032;
      }
      let x_2033 : f32 = x_2025;
      u_xlat51 = x_2033;
      let x_2035 : bool = u_xlatb34.x;
      if (x_2035) {
        let x_2039 : vec4<f32> = u_xlat11;
        x_2036 = vec3<f32>(x_2039.x, x_2039.y, x_2039.z);
      } else {
        let x_2042 : f32 = u_xlat51;
        x_2036 = vec3<f32>(x_2042, x_2042, x_2042);
      }
      let x_2044 : vec3<f32> = x_2036;
      let x_2045 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2051 : vec4<f32> = u_xlat11;
    let x_2053 : u32 = u_xlatu46;
    let x_2056 : vec4<f32> = x_1543.x_AdditionalLightsColor[bitcast<i32>(x_2053)];
    let x_2058 : vec3<f32> = (vec3<f32>(x_2051.x, x_2051.y, x_2051.z) * vec3<f32>(x_2056.x, x_2056.y, x_2056.z));
    let x_2059 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2058.x, x_2058.y, x_2058.z, x_2059.w);
    let x_2061 : f32 = u_xlat20;
    let x_2063 : vec4<f32> = u_xlat11;
    let x_2065 : vec3<f32> = (vec3<f32>(x_2061, x_2061, x_2061) * vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
    let x_2066 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
    let x_2068 : vec4<f32> = u_xlat3;
    let x_2070 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2068.x, x_2068.y, x_2068.z), x_2070);
    let x_2072 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2072, 0.0f, 1.0f);
    let x_2074 : f32 = u_xlat46;
    let x_2075 : f32 = u_xlat49;
    u_xlat46 = (x_2074 * x_2075);
    let x_2077 : f32 = u_xlat46;
    let x_2079 : vec4<f32> = u_xlat11;
    let x_2081 : vec3<f32> = (vec3<f32>(x_2077, x_2077, x_2077) * vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2082 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2082.w);
    let x_2084 : vec3<f32> = u_xlat9;
    let x_2085 : f32 = u_xlat50;
    let x_2088 : vec3<f32> = u_xlat1;
    u_xlat9 = ((x_2084 * vec3<f32>(x_2085, x_2085, x_2085)) + x_2088);
    let x_2090 : vec3<f32> = u_xlat9;
    let x_2091 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_2090, x_2091);
    let x_2093 : f32 = u_xlat46;
    u_xlat46 = max(x_2093, 1.17549435e-37f);
    let x_2095 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2095);
    let x_2097 : f32 = u_xlat46;
    let x_2099 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2097, x_2097, x_2097) * x_2099);
    let x_2101 : vec4<f32> = u_xlat3;
    let x_2103 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2101.x, x_2101.y, x_2101.z), x_2103);
    let x_2105 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2105, 0.0f, 1.0f);
    let x_2107 : vec3<f32> = u_xlat10;
    let x_2108 : vec3<f32> = u_xlat9;
    u_xlat49 = dot(x_2107, x_2108);
    let x_2110 : f32 = u_xlat49;
    u_xlat49 = clamp(x_2110, 0.0f, 1.0f);
    let x_2112 : f32 = u_xlat46;
    let x_2113 : f32 = u_xlat46;
    u_xlat46 = (x_2112 * x_2113);
    let x_2115 : f32 = u_xlat46;
    let x_2117 : f32 = u_xlat30.x;
    u_xlat46 = ((x_2115 * x_2117) + 1.000010014f);
    let x_2120 : f32 = u_xlat49;
    let x_2121 : f32 = u_xlat49;
    u_xlat49 = (x_2120 * x_2121);
    let x_2123 : f32 = u_xlat46;
    let x_2124 : f32 = u_xlat46;
    u_xlat46 = (x_2123 * x_2124);
    let x_2126 : f32 = u_xlat49;
    u_xlat49 = max(x_2126, 0.100000001f);
    let x_2128 : f32 = u_xlat46;
    let x_2129 : f32 = u_xlat49;
    u_xlat46 = (x_2128 * x_2129);
    let x_2132 : f32 = u_xlat5.x;
    let x_2133 : f32 = u_xlat46;
    u_xlat46 = (x_2132 * x_2133);
    let x_2135 : f32 = u_xlat45;
    let x_2136 : f32 = u_xlat46;
    u_xlat46 = (x_2135 / x_2136);
    let x_2138 : f32 = u_xlat46;
    let x_2141 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2138, x_2138, x_2138) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + x_2141);
    let x_2143 : vec3<f32> = u_xlat9;
    let x_2144 : vec4<f32> = u_xlat11;
    let x_2147 : vec4<f32> = u_xlat8;
    let x_2149 : vec3<f32> = ((x_2143 * vec3<f32>(x_2144.x, x_2144.y, x_2144.z)) + vec3<f32>(x_2147.x, x_2147.y, x_2147.z));
    let x_2150 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2149.x, x_2149.y, x_2149.z, x_2150.w);

    continuing {
      let x_2152 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2152 + bitcast<u32>(1i));
    }
  }
  let x_2154 : vec3<f32> = u_xlat19;
  let x_2155 : vec4<f32> = u_xlat6;
  let x_2158 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2154 * vec3<f32>(x_2155.x, x_2155.x, x_2155.x)) + vec3<f32>(x_2158.x, x_2158.y, x_2158.z));
  let x_2161 : vec4<f32> = u_xlat8;
  let x_2163 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_2161.x, x_2161.y, x_2161.z) + x_2163);
  let x_2165 : vec4<f32> = vs_INTERP4;
  let x_2167 : vec3<f32> = u_xlat0;
  let x_2169 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2165.w, x_2165.w, x_2165.w) * x_2167) + x_2169);
  let x_2172 : f32 = u_xlat16.x;
  let x_2174 : f32 = u_xlat16.x;
  u_xlat42 = (x_2172 * -(x_2174));
  let x_2177 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2177);
  let x_2179 : vec3<f32> = u_xlat0;
  let x_2182 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_2179 + -(vec3<f32>(x_2182.x, x_2182.y, x_2182.z)));
  let x_2188 : f32 = u_xlat42;
  let x_2190 : vec3<f32> = u_xlat0;
  let x_2193 : vec4<f32> = x_90.unity_FogColor;
  let x_2195 : vec3<f32> = ((vec3<f32>(x_2188, x_2188, x_2188) * x_2190) + vec3<f32>(x_2193.x, x_2193.y, x_2193.z));
  let x_2196 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
  let x_2198 : bool = u_xlatb2;
  let x_2199 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2199, x_2198);
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

