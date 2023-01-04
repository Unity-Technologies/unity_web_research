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

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(6) var<uniform> x_199 : UnityPerMaterial;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_257 : MainLightShadows;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_INTERP2 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP5 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_1065 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1506 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_1609 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
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
  var x_519 : f32;
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
  var x_652 : f32;
  var u_xlatb16 : vec2<bool>;
  var x_683 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : bool;
  var x_730 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat33 : f32;
  var u_xlat47 : f32;
  var u_xlat20 : f32;
  var u_xlat34 : vec2<f32>;
  var u_xlat48 : f32;
  var u_xlatb34 : vec2<bool>;
  var x_1133 : f32;
  var x_1144 : vec3<f32>;
  var u_xlatb5 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati48 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat23 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati52 : i32;
  var u_xlati50 : i32;
  var u_xlati11 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb50 : bool;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb11 : vec4<bool>;
  var u_xlat11 : vec4<f32>;
  var x_1912 : f32;
  var x_1925 : f32;
  var x_1987 : f32;
  var x_1998 : vec3<f32>;
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
  let x_203 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_212 : vec4<f32> = vs_INTERP3;
  let x_215 : f32 = x_90.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_212.x, x_212.y), x_215);
  u_xlat5 = vec4<f32>(x_216.w, x_216.x, x_216.y, x_216.z);
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_219.y, x_219.z, x_219.w, x_219.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_227 : vec4<f32> = u_xlat6;
  let x_228 : vec4<f32> = u_xlat6;
  u_xlat42 = dot(x_227, x_228);
  let x_230 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_230);
  let x_233 : f32 = u_xlat42;
  let x_235 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_240 : f32 = vs_INTERP4.y;
  u_xlat42 = (x_240 * 200.0f);
  let x_243 : f32 = u_xlat42;
  u_xlat42 = min(x_243, 1.0f);
  let x_245 : f32 = u_xlat42;
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec3<f32> = (vec3<f32>(x_245, x_245, x_245) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec3<f32> = vs_INTERP0;
  let x_259 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres0;
  let x_262 : vec3<f32> = (x_252 + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec3<f32> = vs_INTERP0;
  let x_268 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres1;
  let x_271 : vec3<f32> = (x_266 + -(vec3<f32>(x_268.x, x_268.y, x_268.z)));
  let x_272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_275 : vec3<f32> = vs_INTERP0;
  let x_278 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres2;
  let x_281 : vec3<f32> = (x_275 + -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_282 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_285 : vec3<f32> = vs_INTERP0;
  let x_288 : vec4<f32> = x_257.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_285 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat6;
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : vec4<f32> = u_xlat7;
  let x_300 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_304 : vec4<f32> = u_xlat8;
  let x_306 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec3<f32> = u_xlat9;
  let x_311 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_310, x_311);
  let x_317 : vec4<f32> = u_xlat6;
  let x_320 : vec4<f32> = x_257.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_317 < x_320);
  let x_323 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_323);
  let x_327 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_327);
  let x_331 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_331);
  let x_335 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_335);
  let x_339 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_339);
  let x_344 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_344);
  let x_348 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_348);
  let x_351 : vec4<f32> = u_xlat6;
  let x_353 : vec4<f32> = u_xlat7;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) + vec3<f32>(x_353.y, x_353.z, x_353.w));
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat6;
  let x_361 : vec3<f32> = max(vec3<f32>(x_358.x, x_358.y, x_358.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_362 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_362.x, x_361.x, x_361.y, x_361.z);
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_364, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_369 : f32 = u_xlat42;
  u_xlat42 = (-(x_369) + 4.0f);
  let x_373 : f32 = u_xlat42;
  u_xlatu42 = u32(x_373);
  let x_376 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_376) << bitcast<u32>(2i));
  let x_379 : vec3<f32> = vs_INTERP0;
  let x_381 : i32 = u_xlati42;
  let x_384 : i32 = u_xlati42;
  let x_388 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_381 + 1i) / 4i)][((x_384 + 1i) % 4i)];
  let x_390 : vec3<f32> = (vec3<f32>(x_379.y, x_379.y, x_379.y) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : i32 = u_xlati42;
  let x_395 : i32 = u_xlati42;
  let x_398 : vec4<f32> = x_257.x_MainLightWorldToShadow[(x_393 / 4i)][(x_395 % 4i)];
  let x_400 : vec3<f32> = vs_INTERP0;
  let x_403 : vec4<f32> = u_xlat6;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_400.x, x_400.x, x_400.x)) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : i32 = u_xlati42;
  let x_411 : i32 = u_xlati42;
  let x_415 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_408 + 2i) / 4i)][((x_411 + 2i) % 4i)];
  let x_417 : vec3<f32> = vs_INTERP0;
  let x_420 : vec4<f32> = u_xlat6;
  let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat6;
  let x_427 : i32 = u_xlati42;
  let x_430 : i32 = u_xlati42;
  let x_434 : vec4<f32> = x_257.x_MainLightWorldToShadow[((x_427 + 3i) / 4i)][((x_430 + 3i) % 4i)];
  let x_436 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec4<f32> = u_xlat6;
  let x_441 : vec2<f32> = vec2<f32>(x_440.x, x_440.y);
  let x_443 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_441.x, x_441.y, x_443);
  let x_455 : vec3<f32> = txVec0;
  let x_457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_455.xy, x_455.z);
  u_xlat42 = x_457;
  let x_460 : f32 = x_257.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat42;
  let x_465 : f32 = x_257.x_MainLightShadowParams.x;
  let x_467 : f32 = u_xlat43;
  u_xlat42 = ((x_463 * x_465) + x_467);
  let x_471 : f32 = u_xlat6.z;
  u_xlatb43 = (0.0f >= x_471);
  let x_475 : f32 = u_xlat6.z;
  u_xlatb44 = (x_475 >= 1.0f);
  let x_477 : bool = u_xlatb43;
  let x_478 : bool = u_xlatb44;
  u_xlatb43 = (x_477 | x_478);
  let x_480 : bool = u_xlatb43;
  let x_481 : f32 = u_xlat42;
  u_xlat42 = select(x_481, 1.0f, x_480);
  let x_483 : vec3<f32> = u_xlat0;
  let x_485 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat0.x = dot(x_483, -(vec3<f32>(x_485.x, x_485.y, x_485.z)));
  let x_491 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_491, 0.0f, 1.0f);
  let x_494 : f32 = u_xlat42;
  let x_497 : vec4<f32> = x_90.x_MainLightColor;
  let x_499 : vec3<f32> = (vec3<f32>(x_494, x_494, x_494) * vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec3<f32> = u_xlat0;
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_502.x, x_502.x, x_502.x) * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec3<f32> = u_xlat0;
  let x_508 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_507 * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_512 : f32 = x_145.unity_LODFade.x;
  u_xlatb43 = (x_512 < 0.0f);
  let x_516 : f32 = x_145.unity_LODFade.x;
  u_xlat44 = (x_516 + 1.0f);
  let x_518 : bool = u_xlatb43;
  if (x_518) {
    let x_522 : f32 = u_xlat44;
    x_519 = x_522;
  } else {
    let x_525 : f32 = x_145.unity_LODFade.x;
    x_519 = x_525;
  }
  let x_526 : f32 = x_519;
  u_xlat43 = x_526;
  let x_528 : f32 = u_xlat43;
  u_xlatb44 = (0.5f >= x_528);
  let x_530 : vec3<f32> = u_xlat2;
  let x_534 : vec4<f32> = x_90.x_ScreenParams;
  u_xlat2 = (abs(x_530) * vec3<f32>(x_534.x, x_534.y, x_534.x));
  let x_540 : vec3<f32> = u_xlat2;
  u_xlatu2 = vec3<u32>(x_540);
  let x_544 : u32 = u_xlatu2.z;
  u_xlatu30 = (x_544 * 1025u);
  let x_548 : u32 = u_xlatu30;
  u_xlatu3 = (x_548 >> 6u);
  let x_552 : u32 = u_xlatu30;
  let x_553 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_552 ^ x_553));
  let x_556 : i32 = u_xlati30;
  u_xlatu30 = (bitcast<u32>(x_556) * 9u);
  let x_560 : u32 = u_xlatu30;
  u_xlatu3 = (x_560 >> 11u);
  let x_563 : u32 = u_xlatu30;
  let x_564 : u32 = u_xlatu3;
  u_xlati30 = bitcast<i32>((x_563 ^ x_564));
  let x_567 : i32 = u_xlati30;
  u_xlati30 = (x_567 * 32769i);
  let x_571 : i32 = u_xlati30;
  let x_574 : u32 = u_xlatu2.y;
  u_xlati16 = bitcast<i32>((bitcast<u32>(x_571) ^ x_574));
  let x_578 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_578) * 1025u);
  let x_581 : u32 = u_xlatu16;
  u_xlatu30 = (x_581 >> 6u);
  let x_583 : u32 = u_xlatu30;
  let x_584 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_583 ^ x_584));
  let x_587 : i32 = u_xlati16;
  u_xlatu16 = (bitcast<u32>(x_587) * 9u);
  let x_590 : u32 = u_xlatu16;
  u_xlatu30 = (x_590 >> 11u);
  let x_592 : u32 = u_xlatu30;
  let x_593 : u32 = u_xlatu16;
  u_xlati16 = bitcast<i32>((x_592 ^ x_593));
  let x_596 : i32 = u_xlati16;
  u_xlati16 = (x_596 * 32769i);
  let x_599 : i32 = u_xlati16;
  let x_602 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_599) ^ x_602));
  let x_605 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_605) * 1025u);
  let x_610 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_610 >> 6u);
  let x_612 : u32 = u_xlatu16;
  let x_614 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_612 ^ x_614));
  let x_617 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_617) * 9u);
  let x_622 : u32 = u_xlatu2.x;
  u_xlatu16 = (x_622 >> 11u);
  let x_624 : u32 = u_xlatu16;
  let x_626 : u32 = u_xlatu2.x;
  u_xlati2 = bitcast<i32>((x_624 ^ x_626));
  let x_629 : i32 = u_xlati2;
  u_xlati2 = (x_629 * 32769i);
  param = 1065353216i;
  let x_635 : i32 = u_xlati2;
  param_1 = x_635;
  param_2 = 0i;
  param_3 = 23i;
  let x_638 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat2.x = bitcast<f32>(x_638);
  let x_642 : f32 = u_xlat2.x;
  u_xlat2.x = (x_642 + -1.0f);
  let x_647 : f32 = u_xlat2.x;
  u_xlat16.x = (-(x_647) + 1.0f);
  let x_651 : bool = u_xlatb44;
  if (x_651) {
    let x_656 : f32 = u_xlat2.x;
    x_652 = x_656;
  } else {
    let x_659 : f32 = u_xlat16.x;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat2.x = x_660;
  let x_662 : f32 = u_xlat43;
  let x_665 : f32 = u_xlat2.x;
  u_xlat43 = ((x_662 * 2.0f) + -(x_665));
  let x_668 : f32 = u_xlat43;
  let x_670 : f32 = u_xlat3.w;
  u_xlat2.x = (x_668 * x_670);
  let x_677 : f32 = u_xlat2.x;
  u_xlatb16.x = (x_677 >= 0.400000006f);
  let x_682 : bool = u_xlatb16.x;
  if (x_682) {
    let x_687 : f32 = u_xlat2.x;
    x_683 = x_687;
  } else {
    x_683 = 0.0f;
  }
  let x_689 : f32 = x_683;
  u_xlat16.x = x_689;
  let x_692 : f32 = u_xlat3.w;
  let x_693 : f32 = u_xlat43;
  u_xlat43 = ((x_692 * x_693) + -0.400000006f);
  let x_699 : f32 = u_xlat2.x;
  u_xlat30 = dpdxCoarse(x_699);
  let x_702 : f32 = u_xlat2.x;
  u_xlat2.x = dpdyCoarse(x_702);
  let x_706 : f32 = u_xlat2.x;
  let x_708 : f32 = u_xlat30;
  u_xlat2.x = (abs(x_706) + abs(x_708));
  let x_713 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_713, 0.0001f);
  let x_717 : f32 = u_xlat43;
  let x_719 : f32 = u_xlat2.x;
  u_xlat43 = (x_717 / x_719);
  let x_721 : f32 = u_xlat43;
  u_xlat43 = (x_721 + 0.5f);
  let x_723 : f32 = u_xlat43;
  u_xlat43 = clamp(x_723, 0.0f, 1.0f);
  let x_727 : f32 = x_90.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_727 == 0.0f));
  let x_729 : bool = u_xlatb2;
  if (x_729) {
    let x_733 : f32 = u_xlat43;
    x_730 = x_733;
  } else {
    let x_736 : f32 = u_xlat16.x;
    x_730 = x_736;
  }
  let x_737 : f32 = x_730;
  u_xlat43 = x_737;
  let x_738 : f32 = u_xlat43;
  u_xlat16.x = (x_738 + -0.0001f);
  let x_743 : f32 = u_xlat16.x;
  u_xlatb16.x = (x_743 < 0.0f);
  let x_747 : bool = u_xlatb16.x;
  if (((select(0i, 1i, x_747) * -1i) != 0i)) {
    discard;
  }
  let x_757 : f32 = vs_INTERP2.w;
  u_xlatb16.x = (0.0f < x_757);
  let x_761 : f32 = x_145.unity_WorldTransformParams.w;
  u_xlatb16.y = (x_761 >= 0.0f);
  let x_765 : bool = u_xlatb16.x;
  u_xlat16.x = select(-1.0f, 1.0f, x_765);
  let x_769 : bool = u_xlatb16.y;
  u_xlat16.y = select(-1.0f, 1.0f, x_769);
  let x_773 : f32 = u_xlat16.y;
  let x_775 : f32 = u_xlat16.x;
  u_xlat16.x = (x_773 * x_775);
  let x_778 : vec3<f32> = vs_INTERP1;
  let x_780 : vec4<f32> = vs_INTERP2;
  let x_782 : vec3<f32> = (vec3<f32>(x_778.z, x_778.x, x_778.y) * vec3<f32>(x_780.y, x_780.z, x_780.x));
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec3<f32> = vs_INTERP1;
  let x_787 : vec4<f32> = vs_INTERP2;
  let x_790 : vec4<f32> = u_xlat3;
  let x_793 : vec3<f32> = ((vec3<f32>(x_785.y, x_785.z, x_785.x) * vec3<f32>(x_787.z, x_787.x, x_787.y)) + -(vec3<f32>(x_790.x, x_790.y, x_790.z)));
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec3<f32> = u_xlat16;
  let x_798 : vec4<f32> = u_xlat3;
  u_xlat16 = (vec3<f32>(x_796.x, x_796.x, x_796.x) * vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec3<f32> = u_xlat16;
  let x_802 : vec3<f32> = u_xlat19;
  u_xlat16 = (x_801 * vec3<f32>(x_802.y, x_802.y, x_802.y));
  let x_805 : vec3<f32> = u_xlat19;
  let x_807 : vec4<f32> = vs_INTERP2;
  let x_810 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_805.x, x_805.x, x_805.x) * vec3<f32>(x_807.x, x_807.y, x_807.z)) + x_810);
  let x_812 : vec3<f32> = u_xlat19;
  let x_814 : vec3<f32> = vs_INTERP1;
  let x_816 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_812.z, x_812.z, x_812.z) * x_814) + x_816);
  let x_818 : vec3<f32> = u_xlat16;
  let x_819 : vec3<f32> = u_xlat16;
  u_xlat3.x = dot(x_818, x_819);
  let x_823 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_823);
  let x_826 : vec3<f32> = u_xlat16;
  let x_827 : vec4<f32> = u_xlat3;
  u_xlat16 = (x_826 * vec3<f32>(x_827.x, x_827.x, x_827.x));
  let x_831 : f32 = vs_INTERP0.y;
  let x_833 : f32 = x_90.unity_MatrixV[1i].z;
  u_xlat3.x = (x_831 * x_833);
  let x_837 : f32 = x_90.unity_MatrixV[0i].z;
  let x_839 : f32 = vs_INTERP0.x;
  let x_842 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_837 * x_839) + x_842);
  let x_846 : f32 = x_90.unity_MatrixV[2i].z;
  let x_848 : f32 = vs_INTERP0.z;
  let x_851 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_846 * x_848) + x_851);
  let x_855 : f32 = u_xlat3.x;
  let x_857 : f32 = x_90.unity_MatrixV[3i].z;
  u_xlat3.x = (x_855 + x_857);
  let x_861 : f32 = u_xlat3.x;
  let x_864 : f32 = x_90.x_ProjectionParams.y;
  u_xlat3.x = (-(x_861) + -(x_864));
  let x_869 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_869, 0.0f);
  let x_873 : f32 = u_xlat3.x;
  let x_876 : f32 = x_90.unity_FogParams.x;
  u_xlat3.x = (x_873 * x_876);
  let x_886 : vec2<f32> = vs_INTERP5;
  let x_888 : f32 = x_90.x_GlobalMipBias.x;
  let x_889 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_886, x_888);
  u_xlat6 = x_889;
  let x_895 : vec2<f32> = vs_INTERP5;
  let x_897 : f32 = x_90.x_GlobalMipBias.x;
  let x_898 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_895, x_897);
  u_xlat17 = vec3<f32>(x_898.x, x_898.y, x_898.z);
  let x_900 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_900.x, x_900.y, x_900.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_906 : vec3<f32> = u_xlat16;
  let x_907 : vec3<f32> = u_xlat19;
  u_xlat46 = dot(x_906, x_907);
  let x_909 : f32 = u_xlat46;
  u_xlat46 = (x_909 + 0.5f);
  let x_911 : vec3<f32> = u_xlat17;
  let x_912 : f32 = u_xlat46;
  u_xlat17 = (x_911 * vec3<f32>(x_912, x_912, x_912));
  let x_916 : f32 = u_xlat6.w;
  u_xlat46 = max(x_916, 0.0001f);
  let x_918 : vec3<f32> = u_xlat17;
  let x_919 : f32 = u_xlat46;
  u_xlat17 = (x_918 / vec3<f32>(x_919, x_919, x_919));
  let x_924 : vec4<f32> = x_90.x_ScaledScreenParams;
  let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
  let x_929 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_925.x, x_925.y));
  let x_930 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_929.x, x_929.y, x_930.z);
  let x_932 : vec3<f32> = u_xlat19;
  let x_934 : vec4<f32> = hlslcc_FragCoord;
  let x_936 : vec2<f32> = (vec2<f32>(x_932.x, x_932.y) * vec2<f32>(x_934.x, x_934.y));
  let x_937 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
  let x_940 : f32 = u_xlat6.y;
  let x_943 : f32 = x_90.x_ScaleBiasRt.x;
  let x_946 : f32 = x_90.x_ScaleBiasRt.y;
  u_xlat46 = ((x_940 * x_943) + x_946);
  let x_948 : f32 = u_xlat46;
  u_xlat6.z = (-(x_948) + 1.0f);
  let x_953 : f32 = u_xlat5.x;
  u_xlat5.x = x_953;
  let x_956 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_956, 0.0f, 1.0f);
  let x_959 : f32 = u_xlat43;
  u_xlat43 = x_959;
  let x_960 : f32 = u_xlat43;
  u_xlat43 = clamp(x_960, 0.0f, 1.0f);
  let x_963 : f32 = u_xlat5.x;
  u_xlat46 = (-(x_963) + 1.0f);
  let x_966 : f32 = u_xlat46;
  let x_967 : f32 = u_xlat46;
  u_xlat19.x = (x_966 * x_967);
  let x_971 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_971, 0.0078125f);
  let x_977 : f32 = u_xlat19.x;
  let x_979 : f32 = u_xlat19.x;
  u_xlat33 = (x_977 * x_979);
  let x_982 : f32 = u_xlat5.x;
  u_xlat5.x = (x_982 + 0.040000021f);
  let x_987 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_987, 1.0f);
  let x_992 : f32 = u_xlat19.x;
  u_xlat47 = ((x_992 * 4.0f) + 2.0f);
  let x_1000 : vec4<f32> = u_xlat6;
  let x_1003 : f32 = x_90.x_GlobalMipBias.x;
  let x_1004 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_1000.x, x_1000.z), x_1003);
  u_xlat6.x = x_1004.x;
  let x_1009 : f32 = u_xlat6.x;
  u_xlat20 = (x_1009 + -1.0f);
  let x_1012 : f32 = x_90.x_AmbientOcclusionParam.w;
  let x_1013 : f32 = u_xlat20;
  u_xlat20 = ((x_1012 * x_1013) + 1.0f);
  let x_1017 : f32 = u_xlat6.x;
  let x_1019 : f32 = vs_INTERP4.w;
  u_xlat6.x = min(x_1017, x_1019);
  let x_1022 : vec3<f32> = vs_INTERP0;
  let x_1024 : vec3<f32> = x_90.x_WorldSpaceCameraPos;
  let x_1026 : vec3<f32> = (x_1022 + -(x_1024));
  let x_1027 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1031 : vec4<f32> = u_xlat7;
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat34.x = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1038 : f32 = u_xlat34.x;
  let x_1040 : f32 = x_257.x_MainLightShadowParams.z;
  let x_1043 : f32 = x_257.x_MainLightShadowParams.w;
  u_xlat34.x = ((x_1038 * x_1040) + x_1043);
  let x_1047 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1047, 0.0f, 1.0f);
  let x_1051 : f32 = u_xlat42;
  u_xlat48 = (-(x_1051) + 1.0f);
  let x_1055 : f32 = u_xlat34.x;
  let x_1056 : f32 = u_xlat48;
  let x_1058 : f32 = u_xlat42;
  u_xlat42 = ((x_1055 * x_1056) + x_1058);
  let x_1067 : f32 = x_1065.x_MainLightCookieTextureFormat;
  u_xlatb34.x = !((x_1067 == -1.0f));
  let x_1071 : bool = u_xlatb34.x;
  if (x_1071) {
    let x_1074 : vec3<f32> = vs_INTERP0;
    let x_1077 : vec4<f32> = x_1065.x_MainLightWorldToLight[1i];
    u_xlat34 = (vec2<f32>(x_1074.y, x_1074.y) * vec2<f32>(x_1077.x, x_1077.y));
    let x_1081 : vec4<f32> = x_1065.x_MainLightWorldToLight[0i];
    let x_1083 : vec3<f32> = vs_INTERP0;
    let x_1086 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(x_1083.x, x_1083.x)) + x_1086);
    let x_1089 : vec4<f32> = x_1065.x_MainLightWorldToLight[2i];
    let x_1091 : vec3<f32> = vs_INTERP0;
    let x_1094 : vec2<f32> = u_xlat34;
    u_xlat34 = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1091.z, x_1091.z)) + x_1094);
    let x_1096 : vec2<f32> = u_xlat34;
    let x_1098 : vec4<f32> = x_1065.x_MainLightWorldToLight[3i];
    u_xlat34 = (x_1096 + vec2<f32>(x_1098.x, x_1098.y));
    let x_1101 : vec2<f32> = u_xlat34;
    u_xlat34 = ((x_1101 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1110 : vec2<f32> = u_xlat34;
    let x_1112 : f32 = x_90.x_GlobalMipBias.x;
    let x_1113 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1110, x_1112);
    u_xlat7 = x_1113;
    let x_1115 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1117 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1119 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1121 : f32 = x_1065.x_MainLightCookieTextureFormat;
    let x_1122 : vec4<f32> = vec4<f32>(x_1115, x_1117, x_1119, x_1121);
    let x_1129 : vec4<bool> = (vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1122.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb34 = vec2<bool>(x_1129.x, x_1129.y);
    let x_1132 : bool = u_xlatb34.y;
    if (x_1132) {
      let x_1137 : f32 = u_xlat7.w;
      x_1133 = x_1137;
    } else {
      let x_1140 : f32 = u_xlat7.x;
      x_1133 = x_1140;
    }
    let x_1141 : f32 = x_1133;
    u_xlat48 = x_1141;
    let x_1143 : bool = u_xlatb34.x;
    if (x_1143) {
      let x_1147 : vec4<f32> = u_xlat7;
      x_1144 = vec3<f32>(x_1147.x, x_1147.y, x_1147.z);
    } else {
      let x_1150 : f32 = u_xlat48;
      x_1144 = vec3<f32>(x_1150, x_1150, x_1150);
    }
    let x_1152 : vec3<f32> = x_1144;
    let x_1153 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1159 : vec4<f32> = u_xlat7;
  let x_1162 : vec4<f32> = x_90.x_MainLightColor;
  let x_1164 : vec3<f32> = (vec3<f32>(x_1159.x, x_1159.y, x_1159.z) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : f32 = u_xlat20;
  let x_1169 : vec4<f32> = u_xlat7;
  let x_1171 : vec3<f32> = (vec3<f32>(x_1167, x_1167, x_1167) * vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec3<f32> = u_xlat1;
  let x_1176 : vec3<f32> = u_xlat16;
  u_xlat34.x = dot(-(x_1174), x_1176);
  let x_1180 : f32 = u_xlat34.x;
  let x_1182 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1180 + x_1182);
  let x_1185 : vec3<f32> = u_xlat16;
  let x_1186 : vec2<f32> = u_xlat34;
  let x_1190 : vec3<f32> = u_xlat1;
  let x_1192 : vec3<f32> = ((x_1185 * -(vec3<f32>(x_1186.x, x_1186.x, x_1186.x))) + -(x_1190));
  let x_1193 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
  let x_1195 : vec3<f32> = u_xlat16;
  let x_1196 : vec3<f32> = u_xlat1;
  u_xlat34.x = dot(x_1195, x_1196);
  let x_1200 : f32 = u_xlat34.x;
  u_xlat34.x = clamp(x_1200, 0.0f, 1.0f);
  let x_1204 : f32 = u_xlat34.x;
  u_xlat34.x = (-(x_1204) + 1.0f);
  let x_1209 : f32 = u_xlat34.x;
  let x_1211 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1209 * x_1211);
  let x_1215 : f32 = u_xlat34.x;
  let x_1217 : f32 = u_xlat34.x;
  u_xlat34.x = (x_1215 * x_1217);
  let x_1220 : f32 = u_xlat46;
  u_xlat48 = ((-(x_1220) * 0.699999988f) + 1.700000048f);
  let x_1226 : f32 = u_xlat46;
  let x_1227 : f32 = u_xlat48;
  u_xlat4.w = (x_1226 * x_1227);
  let x_1230 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_1230 * vec4<f32>(0.959999979f, 0.959999979f, 0.959999979f, 6.0f));
  let x_1243 : vec4<f32> = u_xlat8;
  let x_1246 : f32 = u_xlat4.w;
  let x_1247 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1243.x, x_1243.y, x_1243.z), x_1246);
  u_xlat8 = x_1247;
  let x_1249 : f32 = u_xlat8.w;
  u_xlat46 = (x_1249 + -1.0f);
  let x_1252 : f32 = x_145.unity_SpecCube0_HDR.w;
  let x_1253 : f32 = u_xlat46;
  u_xlat46 = ((x_1252 * x_1253) + 1.0f);
  let x_1256 : f32 = u_xlat46;
  u_xlat46 = max(x_1256, 0.0f);
  let x_1258 : f32 = u_xlat46;
  u_xlat46 = log2(x_1258);
  let x_1260 : f32 = u_xlat46;
  let x_1262 : f32 = x_145.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_1260 * x_1262);
  let x_1264 : f32 = u_xlat46;
  u_xlat46 = exp2(x_1264);
  let x_1266 : f32 = u_xlat46;
  let x_1268 : f32 = x_145.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_1266 * x_1268);
  let x_1270 : vec4<f32> = u_xlat8;
  let x_1272 : f32 = u_xlat46;
  let x_1274 : vec3<f32> = (vec3<f32>(x_1270.x, x_1270.y, x_1270.z) * vec3<f32>(x_1272, x_1272, x_1272));
  let x_1275 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1277 : vec3<f32> = u_xlat19;
  let x_1279 : vec3<f32> = u_xlat19;
  let x_1283 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.x) * vec2<f32>(x_1279.x, x_1279.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1284 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_1283.x, x_1283.y, x_1284.z);
  let x_1287 : f32 = u_xlat9.y;
  u_xlat46 = (1.0f / x_1287);
  let x_1290 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1290 + -0.039999999f);
  let x_1295 : f32 = u_xlat34.x;
  let x_1297 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1295 * x_1297) + 0.039999999f);
  let x_1302 : f32 = u_xlat46;
  let x_1304 : f32 = u_xlat5.x;
  u_xlat46 = (x_1302 * x_1304);
  let x_1306 : f32 = u_xlat46;
  let x_1308 : vec4<f32> = u_xlat8;
  let x_1310 : vec3<f32> = (vec3<f32>(x_1306, x_1306, x_1306) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1311 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
  let x_1313 : vec3<f32> = u_xlat17;
  let x_1314 : vec4<f32> = u_xlat4;
  let x_1317 : vec4<f32> = u_xlat8;
  u_xlat17 = ((x_1313 * vec3<f32>(x_1314.x, x_1314.y, x_1314.z)) + vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1320 : f32 = u_xlat42;
  let x_1322 : f32 = x_145.unity_LightData.z;
  u_xlat42 = (x_1320 * x_1322);
  let x_1324 : vec3<f32> = u_xlat16;
  let x_1326 : vec4<f32> = x_90.x_MainLightPosition;
  u_xlat46 = dot(x_1324, vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1329, 0.0f, 1.0f);
  let x_1331 : f32 = u_xlat42;
  let x_1332 : f32 = u_xlat46;
  u_xlat42 = (x_1331 * x_1332);
  let x_1334 : f32 = u_xlat42;
  let x_1336 : vec4<f32> = u_xlat7;
  let x_1338 : vec3<f32> = (vec3<f32>(x_1334, x_1334, x_1334) * vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
  let x_1339 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec3<f32> = u_xlat1;
  let x_1343 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1345 : vec3<f32> = (x_1341 + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1346 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1348 : vec4<f32> = u_xlat8;
  let x_1350 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(vec3<f32>(x_1348.x, x_1348.y, x_1348.z), vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : f32 = u_xlat42;
  u_xlat42 = max(x_1353, 1.17549435e-37f);
  let x_1356 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1356);
  let x_1358 : f32 = u_xlat42;
  let x_1360 : vec4<f32> = u_xlat8;
  let x_1362 : vec3<f32> = (vec3<f32>(x_1358, x_1358, x_1358) * vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
  let x_1363 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
  let x_1365 : vec3<f32> = u_xlat16;
  let x_1366 : vec4<f32> = u_xlat8;
  u_xlat42 = dot(x_1365, vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
  let x_1369 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1369, 0.0f, 1.0f);
  let x_1372 : vec4<f32> = x_90.x_MainLightPosition;
  let x_1374 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_1372.x, x_1372.y, x_1372.z), vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1377, 0.0f, 1.0f);
  let x_1379 : f32 = u_xlat42;
  let x_1380 : f32 = u_xlat42;
  u_xlat42 = (x_1379 * x_1380);
  let x_1382 : f32 = u_xlat42;
  let x_1384 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1382 * x_1384) + 1.000010014f);
  let x_1388 : f32 = u_xlat46;
  let x_1389 : f32 = u_xlat46;
  u_xlat46 = (x_1388 * x_1389);
  let x_1391 : f32 = u_xlat42;
  let x_1392 : f32 = u_xlat42;
  u_xlat42 = (x_1391 * x_1392);
  let x_1394 : f32 = u_xlat46;
  u_xlat46 = max(x_1394, 0.100000001f);
  let x_1397 : f32 = u_xlat42;
  let x_1398 : f32 = u_xlat46;
  u_xlat42 = (x_1397 * x_1398);
  let x_1400 : f32 = u_xlat47;
  let x_1401 : f32 = u_xlat42;
  u_xlat42 = (x_1400 * x_1401);
  let x_1403 : f32 = u_xlat33;
  let x_1404 : f32 = u_xlat42;
  u_xlat42 = (x_1403 / x_1404);
  let x_1406 : f32 = u_xlat42;
  let x_1410 : vec4<f32> = u_xlat4;
  let x_1412 : vec3<f32> = ((vec3<f32>(x_1406, x_1406, x_1406) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
  let x_1413 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1415 : vec4<f32> = u_xlat7;
  let x_1417 : vec4<f32> = u_xlat8;
  let x_1419 : vec3<f32> = (vec3<f32>(x_1415.x, x_1415.y, x_1415.z) * vec3<f32>(x_1417.x, x_1417.y, x_1417.z));
  let x_1420 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1419.x, x_1419.y, x_1419.z, x_1420.w);
  let x_1424 : f32 = x_90.x_AdditionalLightsCount.x;
  let x_1426 : f32 = x_145.unity_LightData.y;
  u_xlat42 = min(x_1424, x_1426);
  let x_1428 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1428));
  let x_1433 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1435 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1437 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1439 : f32 = x_1065.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1440 : vec4<f32> = vec4<f32>(x_1433, x_1435, x_1437, x_1439);
  let x_1447 : vec4<bool> = (vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1440.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1447.x, x_1447.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1458 : u32 = u_xlatu_loop_1;
    let x_1459 : u32 = u_xlatu42;
    if ((x_1458 < x_1459)) {
    } else {
      break;
    }
    let x_1462 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_1462 >> 2u);
    let x_1465 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1465 & 3u));
    let x_1468 : u32 = u_xlatu34;
    let x_1471 : vec4<f32> = x_145.unity_LightIndices[bitcast<i32>(x_1468)];
    let x_1481 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1486 : vec4<u32> = indexable[x_1481];
    u_xlat34.x = dot(x_1471, bitcast<vec4<f32>>(x_1486));
    let x_1491 : f32 = u_xlat34.x;
    u_xlatu34 = bitcast<u32>(i32(x_1491));
    let x_1495 : vec3<f32> = vs_INTERP0;
    let x_1507 : u32 = u_xlatu34;
    let x_1510 : vec4<f32> = x_1506.x_AdditionalLightsPosition[bitcast<i32>(x_1507)];
    let x_1513 : u32 = u_xlatu34;
    let x_1516 : vec4<f32> = x_1506.x_AdditionalLightsPosition[bitcast<i32>(x_1513)];
    u_xlat23 = ((-(x_1495) * vec3<f32>(x_1510.w, x_1510.w, x_1510.w)) + vec3<f32>(x_1516.x, x_1516.y, x_1516.z));
    let x_1519 : vec3<f32> = u_xlat23;
    let x_1520 : vec3<f32> = u_xlat23;
    u_xlat48 = dot(x_1519, x_1520);
    let x_1522 : f32 = u_xlat48;
    u_xlat48 = max(x_1522, 6.10351562e-05f);
    let x_1526 : f32 = u_xlat48;
    u_xlat49 = inverseSqrt(x_1526);
    let x_1529 : f32 = u_xlat49;
    let x_1531 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1529, x_1529, x_1529) * x_1531);
    let x_1534 : f32 = u_xlat48;
    u_xlat50 = (1.0f / x_1534);
    let x_1536 : f32 = u_xlat48;
    let x_1537 : u32 = u_xlatu34;
    let x_1540 : f32 = x_1506.x_AdditionalLightsAttenuation[bitcast<i32>(x_1537)].x;
    u_xlat48 = (x_1536 * x_1540);
    let x_1542 : f32 = u_xlat48;
    let x_1544 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1542) * x_1544) + 1.0f);
    let x_1547 : f32 = u_xlat48;
    u_xlat48 = max(x_1547, 0.0f);
    let x_1549 : f32 = u_xlat48;
    let x_1550 : f32 = u_xlat48;
    u_xlat48 = (x_1549 * x_1550);
    let x_1552 : f32 = u_xlat48;
    let x_1553 : f32 = u_xlat50;
    u_xlat48 = (x_1552 * x_1553);
    let x_1555 : u32 = u_xlatu34;
    let x_1558 : vec4<f32> = x_1506.x_AdditionalLightsSpotDir[bitcast<i32>(x_1555)];
    let x_1560 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1558.x, x_1558.y, x_1558.z), x_1560);
    let x_1562 : f32 = u_xlat50;
    let x_1563 : u32 = u_xlatu34;
    let x_1566 : f32 = x_1506.x_AdditionalLightsAttenuation[bitcast<i32>(x_1563)].z;
    let x_1568 : u32 = u_xlatu34;
    let x_1571 : f32 = x_1506.x_AdditionalLightsAttenuation[bitcast<i32>(x_1568)].w;
    u_xlat50 = ((x_1562 * x_1566) + x_1571);
    let x_1573 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1573, 0.0f, 1.0f);
    let x_1575 : f32 = u_xlat50;
    let x_1576 : f32 = u_xlat50;
    u_xlat50 = (x_1575 * x_1576);
    let x_1578 : f32 = u_xlat48;
    let x_1579 : f32 = u_xlat50;
    u_xlat48 = (x_1578 * x_1579);
    let x_1582 : u32 = u_xlatu34;
    u_xlatu50 = (x_1582 >> 5u);
    let x_1585 : u32 = u_xlatu34;
    u_xlati52 = (1i << bitcast<u32>((bitcast<i32>(x_1585) & 31i)));
    let x_1591 : i32 = u_xlati52;
    let x_1593 : u32 = u_xlatu50;
    let x_1596 : f32 = x_1065.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1593)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1591) & bitcast<u32>(x_1596)));
    let x_1600 : i32 = u_xlati50;
    if ((x_1600 != 0i)) {
      let x_1610 : u32 = u_xlatu34;
      let x_1613 : f32 = x_1609.x_AdditionalLightsLightTypes[bitcast<i32>(x_1610)].el;
      u_xlati50 = i32(x_1613);
      let x_1615 : i32 = u_xlati50;
      u_xlati52 = select(1i, 0i, (x_1615 != 0i));
      let x_1619 : u32 = u_xlatu34;
      u_xlati11 = (bitcast<i32>(x_1619) << bitcast<u32>(2i));
      let x_1622 : i32 = u_xlati52;
      if ((x_1622 != 0i)) {
        let x_1627 : vec3<f32> = vs_INTERP0;
        let x_1629 : i32 = u_xlati11;
        let x_1632 : i32 = u_xlati11;
        let x_1636 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1629 + 1i) / 4i)][((x_1632 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1627.y, x_1627.y, x_1627.y) * vec3<f32>(x_1636.x, x_1636.y, x_1636.w));
        let x_1639 : i32 = u_xlati11;
        let x_1641 : i32 = u_xlati11;
        let x_1644 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_1639 / 4i)][(x_1641 % 4i)];
        let x_1646 : vec3<f32> = vs_INTERP0;
        let x_1649 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1644.x, x_1644.y, x_1644.w) * vec3<f32>(x_1646.x, x_1646.x, x_1646.x)) + x_1649);
        let x_1651 : i32 = u_xlati11;
        let x_1654 : i32 = u_xlati11;
        let x_1658 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1651 + 2i) / 4i)][((x_1654 + 2i) % 4i)];
        let x_1660 : vec3<f32> = vs_INTERP0;
        let x_1663 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1658.x, x_1658.y, x_1658.w) * vec3<f32>(x_1660.z, x_1660.z, x_1660.z)) + x_1663);
        let x_1665 : vec3<f32> = u_xlat25;
        let x_1666 : i32 = u_xlati11;
        let x_1669 : i32 = u_xlati11;
        let x_1673 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1666 + 3i) / 4i)][((x_1669 + 3i) % 4i)];
        u_xlat25 = (x_1665 + vec3<f32>(x_1673.x, x_1673.y, x_1673.w));
        let x_1676 : vec3<f32> = u_xlat25;
        let x_1678 : vec3<f32> = u_xlat25;
        let x_1680 : vec2<f32> = (vec2<f32>(x_1676.x, x_1676.y) / vec2<f32>(x_1678.z, x_1678.z));
        let x_1681 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1680.x, x_1680.y, x_1681.z);
        let x_1683 : vec3<f32> = u_xlat25;
        let x_1686 : vec2<f32> = ((vec2<f32>(x_1683.x, x_1683.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1687 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1686.x, x_1686.y, x_1687.z);
        let x_1689 : vec3<f32> = u_xlat25;
        let x_1693 : vec2<f32> = clamp(vec2<f32>(x_1689.x, x_1689.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1694 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1693.x, x_1693.y, x_1694.z);
        let x_1696 : u32 = u_xlatu34;
        let x_1699 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1696)];
        let x_1701 : vec3<f32> = u_xlat25;
        let x_1704 : u32 = u_xlatu34;
        let x_1707 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1704)];
        let x_1709 : vec2<f32> = ((vec2<f32>(x_1699.x, x_1699.y) * vec2<f32>(x_1701.x, x_1701.y)) + vec2<f32>(x_1707.z, x_1707.w));
        let x_1710 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1709.x, x_1709.y, x_1710.z);
      } else {
        let x_1714 : i32 = u_xlati50;
        u_xlatb50 = (x_1714 == 1i);
        let x_1716 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1716);
        let x_1718 : i32 = u_xlati50;
        if ((x_1718 != 0i)) {
          let x_1723 : vec3<f32> = vs_INTERP0;
          let x_1725 : i32 = u_xlati11;
          let x_1728 : i32 = u_xlati11;
          let x_1732 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1725 + 1i) / 4i)][((x_1728 + 1i) % 4i)];
          let x_1734 : vec2<f32> = (vec2<f32>(x_1723.y, x_1723.y) * vec2<f32>(x_1732.x, x_1732.y));
          let x_1735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1734.x, x_1734.y, x_1735.z, x_1735.w);
          let x_1737 : i32 = u_xlati11;
          let x_1739 : i32 = u_xlati11;
          let x_1742 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_1737 / 4i)][(x_1739 % 4i)];
          let x_1744 : vec3<f32> = vs_INTERP0;
          let x_1747 : vec4<f32> = u_xlat12;
          let x_1749 : vec2<f32> = ((vec2<f32>(x_1742.x, x_1742.y) * vec2<f32>(x_1744.x, x_1744.x)) + vec2<f32>(x_1747.x, x_1747.y));
          let x_1750 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1749.x, x_1749.y, x_1750.z, x_1750.w);
          let x_1752 : i32 = u_xlati11;
          let x_1755 : i32 = u_xlati11;
          let x_1759 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1752 + 2i) / 4i)][((x_1755 + 2i) % 4i)];
          let x_1761 : vec3<f32> = vs_INTERP0;
          let x_1764 : vec4<f32> = u_xlat12;
          let x_1766 : vec2<f32> = ((vec2<f32>(x_1759.x, x_1759.y) * vec2<f32>(x_1761.z, x_1761.z)) + vec2<f32>(x_1764.x, x_1764.y));
          let x_1767 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
          let x_1769 : vec4<f32> = u_xlat12;
          let x_1771 : i32 = u_xlati11;
          let x_1774 : i32 = u_xlati11;
          let x_1778 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1771 + 3i) / 4i)][((x_1774 + 3i) % 4i)];
          let x_1780 : vec2<f32> = (vec2<f32>(x_1769.x, x_1769.y) + vec2<f32>(x_1778.x, x_1778.y));
          let x_1781 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1780.x, x_1780.y, x_1781.z, x_1781.w);
          let x_1783 : vec4<f32> = u_xlat12;
          let x_1786 : vec2<f32> = ((vec2<f32>(x_1783.x, x_1783.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1787 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1786.x, x_1786.y, x_1787.z, x_1787.w);
          let x_1789 : vec4<f32> = u_xlat12;
          let x_1791 : vec2<f32> = fract(vec2<f32>(x_1789.x, x_1789.y));
          let x_1792 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1791.x, x_1791.y, x_1792.z, x_1792.w);
          let x_1794 : u32 = u_xlatu34;
          let x_1797 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1794)];
          let x_1799 : vec4<f32> = u_xlat12;
          let x_1802 : u32 = u_xlatu34;
          let x_1805 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1802)];
          let x_1807 : vec2<f32> = ((vec2<f32>(x_1797.x, x_1797.y) * vec2<f32>(x_1799.x, x_1799.y)) + vec2<f32>(x_1805.z, x_1805.w));
          let x_1808 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1807.x, x_1807.y, x_1808.z);
        } else {
          let x_1811 : vec3<f32> = vs_INTERP0;
          let x_1813 : i32 = u_xlati11;
          let x_1816 : i32 = u_xlati11;
          let x_1820 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1813 + 1i) / 4i)][((x_1816 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1811.y, x_1811.y, x_1811.y, x_1811.y) * x_1820);
          let x_1822 : i32 = u_xlati11;
          let x_1824 : i32 = u_xlati11;
          let x_1827 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[(x_1822 / 4i)][(x_1824 % 4i)];
          let x_1828 : vec3<f32> = vs_INTERP0;
          let x_1831 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1827 * vec4<f32>(x_1828.x, x_1828.x, x_1828.x, x_1828.x)) + x_1831);
          let x_1833 : i32 = u_xlati11;
          let x_1836 : i32 = u_xlati11;
          let x_1840 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1833 + 2i) / 4i)][((x_1836 + 2i) % 4i)];
          let x_1841 : vec3<f32> = vs_INTERP0;
          let x_1844 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1840 * vec4<f32>(x_1841.z, x_1841.z, x_1841.z, x_1841.z)) + x_1844);
          let x_1846 : vec4<f32> = u_xlat12;
          let x_1847 : i32 = u_xlati11;
          let x_1850 : i32 = u_xlati11;
          let x_1854 : vec4<f32> = x_1609.x_AdditionalLightsWorldToLights[((x_1847 + 3i) / 4i)][((x_1850 + 3i) % 4i)];
          u_xlat12 = (x_1846 + x_1854);
          let x_1856 : vec4<f32> = u_xlat12;
          let x_1858 : vec4<f32> = u_xlat12;
          let x_1860 : vec3<f32> = (vec3<f32>(x_1856.x, x_1856.y, x_1856.z) / vec3<f32>(x_1858.w, x_1858.w, x_1858.w));
          let x_1861 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
          let x_1863 : vec4<f32> = u_xlat12;
          let x_1865 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1863.x, x_1863.y, x_1863.z), vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
          let x_1868 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1868);
          let x_1870 : f32 = u_xlat50;
          let x_1872 : vec4<f32> = u_xlat12;
          let x_1874 : vec3<f32> = (vec3<f32>(x_1870, x_1870, x_1870) * vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
          let x_1875 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
          let x_1877 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1877.x, x_1877.y, x_1877.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1882 : f32 = u_xlat50;
          u_xlat50 = max(x_1882, 0.000001f);
          let x_1885 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1885);
          let x_1888 : f32 = u_xlat50;
          let x_1890 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1888, x_1888, x_1888) * vec3<f32>(x_1890.z, x_1890.x, x_1890.y));
          let x_1894 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1894);
          let x_1898 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1898, 0.0f, 1.0f);
          let x_1902 : vec3<f32> = u_xlat13;
          let x_1905 : vec4<bool> = (vec4<f32>(x_1902.y, x_1902.y, x_1902.y, x_1902.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1906 : vec2<bool> = vec2<bool>(x_1905.x, x_1905.w);
          let x_1907 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1906.x, x_1907.y, x_1907.z, x_1906.y);
          let x_1911 : bool = u_xlatb11.x;
          if (x_1911) {
            let x_1916 : f32 = u_xlat13.x;
            x_1912 = x_1916;
          } else {
            let x_1919 : f32 = u_xlat13.x;
            x_1912 = -(x_1919);
          }
          let x_1921 : f32 = x_1912;
          u_xlat11.x = x_1921;
          let x_1924 : bool = u_xlatb11.w;
          if (x_1924) {
            let x_1929 : f32 = u_xlat13.x;
            x_1925 = x_1929;
          } else {
            let x_1932 : f32 = u_xlat13.x;
            x_1925 = -(x_1932);
          }
          let x_1934 : f32 = x_1925;
          u_xlat11.w = x_1934;
          let x_1936 : vec4<f32> = u_xlat12;
          let x_1938 : f32 = u_xlat50;
          let x_1941 : vec4<f32> = u_xlat11;
          let x_1943 : vec2<f32> = ((vec2<f32>(x_1936.x, x_1936.y) * vec2<f32>(x_1938, x_1938)) + vec2<f32>(x_1941.x, x_1941.w));
          let x_1944 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1943.x, x_1944.y, x_1944.z, x_1943.y);
          let x_1946 : vec4<f32> = u_xlat11;
          let x_1949 : vec2<f32> = ((vec2<f32>(x_1946.x, x_1946.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1950 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1949.x, x_1950.y, x_1950.z, x_1949.y);
          let x_1952 : vec4<f32> = u_xlat11;
          let x_1956 : vec2<f32> = clamp(vec2<f32>(x_1952.x, x_1952.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1957 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1956.x, x_1957.y, x_1957.z, x_1956.y);
          let x_1959 : u32 = u_xlatu34;
          let x_1962 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1959)];
          let x_1964 : vec4<f32> = u_xlat11;
          let x_1967 : u32 = u_xlatu34;
          let x_1970 : vec4<f32> = x_1609.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1967)];
          let x_1972 : vec2<f32> = ((vec2<f32>(x_1962.x, x_1962.y) * vec2<f32>(x_1964.x, x_1964.w)) + vec2<f32>(x_1970.z, x_1970.w));
          let x_1973 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1972.x, x_1972.y, x_1973.z);
        }
      }
      let x_1980 : vec3<f32> = u_xlat25;
      let x_1983 : f32 = x_90.x_GlobalMipBias.x;
      let x_1984 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1980.x, x_1980.y), x_1983);
      u_xlat11 = x_1984;
      let x_1986 : bool = u_xlatb5.y;
      if (x_1986) {
        let x_1991 : f32 = u_xlat11.w;
        x_1987 = x_1991;
      } else {
        let x_1994 : f32 = u_xlat11.x;
        x_1987 = x_1994;
      }
      let x_1995 : f32 = x_1987;
      u_xlat50 = x_1995;
      let x_1997 : bool = u_xlatb5.x;
      if (x_1997) {
        let x_2001 : vec4<f32> = u_xlat11;
        x_1998 = vec3<f32>(x_2001.x, x_2001.y, x_2001.z);
      } else {
        let x_2004 : f32 = u_xlat50;
        x_1998 = vec3<f32>(x_2004, x_2004, x_2004);
      }
      let x_2006 : vec3<f32> = x_1998;
      let x_2007 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2006.x, x_2006.y, x_2006.z, x_2007.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2013 : vec4<f32> = u_xlat11;
    let x_2015 : u32 = u_xlatu34;
    let x_2018 : vec4<f32> = x_1506.x_AdditionalLightsColor[bitcast<i32>(x_2015)];
    let x_2020 : vec3<f32> = (vec3<f32>(x_2013.x, x_2013.y, x_2013.z) * vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
    let x_2021 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
    let x_2023 : f32 = u_xlat20;
    let x_2025 : vec4<f32> = u_xlat11;
    let x_2027 : vec3<f32> = (vec3<f32>(x_2023, x_2023, x_2023) * vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
    let x_2028 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
    let x_2030 : vec3<f32> = u_xlat16;
    let x_2031 : vec3<f32> = u_xlat10;
    u_xlat34.x = dot(x_2030, x_2031);
    let x_2035 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2035, 0.0f, 1.0f);
    let x_2039 : f32 = u_xlat34.x;
    let x_2040 : f32 = u_xlat48;
    u_xlat34.x = (x_2039 * x_2040);
    let x_2043 : vec2<f32> = u_xlat34;
    let x_2045 : vec4<f32> = u_xlat11;
    let x_2047 : vec3<f32> = (vec3<f32>(x_2043.x, x_2043.x, x_2043.x) * vec3<f32>(x_2045.x, x_2045.y, x_2045.z));
    let x_2048 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2047.x, x_2047.y, x_2047.z, x_2048.w);
    let x_2050 : vec3<f32> = u_xlat23;
    let x_2051 : f32 = u_xlat49;
    let x_2054 : vec3<f32> = u_xlat1;
    u_xlat23 = ((x_2050 * vec3<f32>(x_2051, x_2051, x_2051)) + x_2054);
    let x_2056 : vec3<f32> = u_xlat23;
    let x_2057 : vec3<f32> = u_xlat23;
    u_xlat34.x = dot(x_2056, x_2057);
    let x_2061 : f32 = u_xlat34.x;
    u_xlat34.x = max(x_2061, 1.17549435e-37f);
    let x_2065 : f32 = u_xlat34.x;
    u_xlat34.x = inverseSqrt(x_2065);
    let x_2068 : vec2<f32> = u_xlat34;
    let x_2070 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2068.x, x_2068.x, x_2068.x) * x_2070);
    let x_2072 : vec3<f32> = u_xlat16;
    let x_2073 : vec3<f32> = u_xlat23;
    u_xlat34.x = dot(x_2072, x_2073);
    let x_2077 : f32 = u_xlat34.x;
    u_xlat34.x = clamp(x_2077, 0.0f, 1.0f);
    let x_2080 : vec3<f32> = u_xlat10;
    let x_2081 : vec3<f32> = u_xlat23;
    u_xlat34.y = dot(x_2080, x_2081);
    let x_2085 : f32 = u_xlat34.y;
    u_xlat34.y = clamp(x_2085, 0.0f, 1.0f);
    let x_2088 : vec2<f32> = u_xlat34;
    let x_2089 : vec2<f32> = u_xlat34;
    u_xlat34 = (x_2088 * x_2089);
    let x_2092 : f32 = u_xlat34.x;
    let x_2094 : f32 = u_xlat9.x;
    u_xlat34.x = ((x_2092 * x_2094) + 1.000010014f);
    let x_2099 : f32 = u_xlat34.x;
    let x_2101 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2099 * x_2101);
    let x_2105 : f32 = u_xlat34.y;
    u_xlat48 = max(x_2105, 0.100000001f);
    let x_2107 : f32 = u_xlat48;
    let x_2109 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2107 * x_2109);
    let x_2112 : f32 = u_xlat47;
    let x_2114 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2112 * x_2114);
    let x_2117 : f32 = u_xlat33;
    let x_2119 : f32 = u_xlat34.x;
    u_xlat34.x = (x_2117 / x_2119);
    let x_2122 : vec2<f32> = u_xlat34;
    let x_2125 : vec4<f32> = u_xlat4;
    u_xlat23 = ((vec3<f32>(x_2122.x, x_2122.x, x_2122.x) * vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f)) + vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
    let x_2128 : vec3<f32> = u_xlat23;
    let x_2129 : vec4<f32> = u_xlat11;
    let x_2132 : vec4<f32> = u_xlat8;
    let x_2134 : vec3<f32> = ((x_2128 * vec3<f32>(x_2129.x, x_2129.y, x_2129.z)) + vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
    let x_2135 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);

    continuing {
      let x_2137 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2137 + bitcast<u32>(1i));
    }
  }
  let x_2139 : vec3<f32> = u_xlat17;
  let x_2140 : vec4<f32> = u_xlat6;
  let x_2143 : vec4<f32> = u_xlat7;
  u_xlat1 = ((x_2139 * vec3<f32>(x_2140.x, x_2140.x, x_2140.x)) + vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
  let x_2146 : vec4<f32> = u_xlat8;
  let x_2148 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_2146.x, x_2146.y, x_2146.z) + x_2148);
  let x_2150 : vec4<f32> = vs_INTERP4;
  let x_2152 : vec3<f32> = u_xlat0;
  let x_2154 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_2150.w, x_2150.w, x_2150.w) * x_2152) + x_2154);
  let x_2157 : f32 = u_xlat3.x;
  let x_2159 : f32 = u_xlat3.x;
  u_xlat42 = (x_2157 * -(x_2159));
  let x_2162 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2162);
  let x_2164 : vec3<f32> = u_xlat0;
  let x_2167 : vec4<f32> = x_90.unity_FogColor;
  u_xlat0 = (x_2164 + -(vec3<f32>(x_2167.x, x_2167.y, x_2167.z)));
  let x_2173 : f32 = u_xlat42;
  let x_2175 : vec3<f32> = u_xlat0;
  let x_2178 : vec4<f32> = x_90.unity_FogColor;
  let x_2180 : vec3<f32> = ((vec3<f32>(x_2173, x_2173, x_2173) * x_2175) + vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2180.x, x_2180.y, x_2180.z, x_2181.w);
  let x_2183 : bool = u_xlatb2;
  let x_2184 : f32 = u_xlat43;
  SV_Target0.w = select(1.0f, x_2184, x_2183);
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

