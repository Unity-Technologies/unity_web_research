struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_344 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1676 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2112 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2232 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat60 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb60 : bool;
  var u_xlat62 : f32;
  var u_xlat3 : vec3<f32>;
  var x_153 : f32;
  var x_165 : f32;
  var x_177 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlat63 : f32;
  var u_xlat64 : f32;
  var u_xlat25 : f32;
  var u_xlat45 : f32;
  var u_xlatb65 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlatb6 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec3<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb26 : bool;
  var u_xlatb7 : vec2<bool>;
  var x_1761 : f32;
  var x_1772 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : vec2<f32>;
  var u_xlatu47 : u32;
  var u_xlati67 : i32;
  var u_xlati47 : i32;
  var u_xlati69 : i32;
  var u_xlatb47 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2533 : f32;
  var x_2546 : f32;
  var x_2598 : f32;
  var x_2610 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2762 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat60 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat60;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat60;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat60 = x_110;
  let x_111 : f32 = u_xlat60;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat60 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat60;
  u_xlatb60 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb60;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb60 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat62 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat62;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_152 : bool = u_xlatb60;
  if (x_152) {
    let x_157 : f32 = u_xlat2.x;
    x_153 = x_157;
  } else {
    let x_161 : f32 = x_44.unity_MatrixV[0i].z;
    x_153 = x_161;
  }
  let x_162 : f32 = x_153;
  u_xlat3.x = x_162;
  let x_164 : bool = u_xlatb60;
  if (x_164) {
    let x_170 : f32 = u_xlat2.y;
    x_165 = x_170;
  } else {
    let x_173 : f32 = x_44.unity_MatrixV[1i].z;
    x_165 = x_173;
  }
  let x_174 : f32 = x_165;
  u_xlat3.y = x_174;
  let x_176 : bool = u_xlatb60;
  if (x_176) {
    let x_181 : f32 = u_xlat2.z;
    x_177 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[2i].z;
    x_177 = x_184;
  }
  let x_185 : f32 = x_177;
  u_xlat3.z = x_185;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  let x_189 : vec3<f32> = vs_TEXCOORD2;
  u_xlat60 = dot(x_188, x_189);
  let x_191 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat60;
  let x_195 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_193, x_193, x_193) * x_195);
  let x_204 : vec2<f32> = vs_TEXCOORD8;
  let x_206 : f32 = x_44.x_GlobalMipBias.x;
  let x_207 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_204, x_206);
  u_xlat4 = vec3<f32>(x_207.x, x_207.y, x_207.z);
  let x_212 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_213 : vec2<f32> = vec2<f32>(x_212.x, x_212.y);
  let x_217 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_213.x, x_213.y));
  let x_218 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_217.x, x_217.y, x_218.z);
  let x_220 : vec3<f32> = u_xlat5;
  let x_222 : vec4<f32> = hlslcc_FragCoord;
  let x_224 : vec2<f32> = (vec2<f32>(x_220.x, x_220.y) * vec2<f32>(x_222.x, x_222.y));
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_224.x, x_224.y, x_225.z);
  let x_228 : f32 = u_xlat5.y;
  let x_231 : f32 = x_44.x_ScaleBiasRt.x;
  let x_234 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_228 * x_231) + x_234);
  let x_236 : f32 = u_xlat60;
  u_xlat5.z = (-(x_236) + 1.0f);
  let x_241 : f32 = x_57.x_Metallic;
  u_xlat60 = ((-(x_241) * 0.959999979f) + 0.959999979f);
  let x_246 : f32 = u_xlat60;
  let x_249 : f32 = x_57.x_Smoothness;
  u_xlat62 = (-(x_246) + x_249);
  let x_252 : f32 = u_xlat60;
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat21 = (vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_254.y, x_254.z, x_254.w));
  let x_257 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = x_57.x_BaseColor;
  let x_265 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_260.x, x_260.y, x_260.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : f32 = x_57.x_Metallic;
  let x_271 : f32 = x_57.x_Metallic;
  let x_273 : f32 = x_57.x_Metallic;
  let x_274 : vec3<f32> = vec3<f32>(x_269, x_271, x_273);
  let x_279 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_279.x, x_279.y, x_279.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_288 : f32 = x_57.x_Smoothness;
  u_xlat60 = (-(x_288) + 1.0f);
  let x_292 : f32 = u_xlat60;
  let x_293 : f32 = u_xlat60;
  u_xlat63 = (x_292 * x_293);
  let x_295 : f32 = u_xlat63;
  u_xlat63 = max(x_295, 0.0078125f);
  let x_299 : f32 = u_xlat63;
  let x_300 : f32 = u_xlat63;
  u_xlat64 = (x_299 * x_300);
  let x_302 : f32 = u_xlat62;
  u_xlat62 = (x_302 + 1.0f);
  let x_304 : f32 = u_xlat62;
  u_xlat62 = clamp(x_304, 0.0f, 1.0f);
  let x_307 : f32 = u_xlat63;
  u_xlat25 = ((x_307 * 4.0f) + 2.0f);
  let x_317 : vec3<f32> = u_xlat5;
  let x_320 : f32 = x_44.x_GlobalMipBias.x;
  let x_321 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_317.x, x_317.z), x_320);
  u_xlat5.x = x_321.x;
  let x_326 : f32 = u_xlat5.x;
  u_xlat45 = (x_326 + -1.0f);
  let x_331 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_332 : f32 = u_xlat45;
  u_xlat45 = ((x_331 * x_332) + 1.0f);
  let x_336 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_336, 1.0f);
  let x_346 : f32 = x_344.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_346);
  let x_348 : bool = u_xlatb65;
  if (x_348) {
    let x_352 : f32 = x_344.x_MainLightShadowParams.y;
    u_xlatb65 = (x_352 == 1.0f);
    let x_354 : bool = u_xlatb65;
    if (x_354) {
      let x_359 : vec4<f32> = vs_TEXCOORD6;
      let x_362 : vec4<f32> = x_344.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_359.x, x_359.y, x_359.x, x_359.y) + x_362);
      let x_365 : vec4<f32> = u_xlat6;
      let x_366 : vec2<f32> = vec2<f32>(x_365.x, x_365.y);
      let x_368 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_366.x, x_366.y, x_368);
      let x_381 : vec3<f32> = txVec0;
      let x_383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_381.xy, x_381.z);
      u_xlat7.x = x_383;
      let x_386 : vec4<f32> = u_xlat6;
      let x_387 : vec2<f32> = vec2<f32>(x_386.z, x_386.w);
      let x_389 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_387.x, x_387.y, x_389);
      let x_396 : vec3<f32> = txVec1;
      let x_398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_396.xy, x_396.z);
      u_xlat7.y = x_398;
      let x_400 : vec4<f32> = vs_TEXCOORD6;
      let x_403 : vec4<f32> = x_344.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_400.x, x_400.y, x_400.x, x_400.y) + x_403);
      let x_406 : vec4<f32> = u_xlat6;
      let x_407 : vec2<f32> = vec2<f32>(x_406.x, x_406.y);
      let x_409 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_407.x, x_407.y, x_409);
      let x_416 : vec3<f32> = txVec2;
      let x_418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_416.xy, x_416.z);
      u_xlat7.z = x_418;
      let x_421 : vec4<f32> = u_xlat6;
      let x_422 : vec2<f32> = vec2<f32>(x_421.z, x_421.w);
      let x_424 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_422.x, x_422.y, x_424);
      let x_431 : vec3<f32> = txVec3;
      let x_433 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_431.xy, x_431.z);
      u_xlat7.w = x_433;
      let x_436 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_436, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_443 : f32 = x_344.x_MainLightShadowParams.y;
      u_xlatb6 = (x_443 == 2.0f);
      let x_445 : bool = u_xlatb6;
      if (x_445) {
        let x_448 : vec4<f32> = vs_TEXCOORD6;
        let x_451 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_456 : vec2<f32> = ((vec2<f32>(x_448.x, x_448.y) * vec2<f32>(x_451.z, x_451.w)) + vec2<f32>(0.5f, 0.5f));
        let x_457 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
        let x_459 : vec4<f32> = u_xlat6;
        let x_461 : vec2<f32> = floor(vec2<f32>(x_459.x, x_459.y));
        let x_462 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_466 : vec4<f32> = vs_TEXCOORD6;
        let x_469 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_472 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_466.x, x_466.y) * vec2<f32>(x_469.z, x_469.w)) + -(vec2<f32>(x_472.x, x_472.y)));
        let x_476 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_476.x, x_476.x, x_476.y, x_476.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_481 : vec4<f32> = u_xlat7;
        let x_483 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_481.x, x_481.x, x_481.z, x_481.z) * vec4<f32>(x_483.x, x_483.x, x_483.z, x_483.z));
        let x_486 : vec4<f32> = u_xlat8;
        let x_490 : vec2<f32> = (vec2<f32>(x_486.y, x_486.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_490.x, x_491.y, x_490.y, x_491.w);
        let x_493 : vec4<f32> = u_xlat8;
        let x_496 : vec2<f32> = u_xlat46;
        let x_498 : vec2<f32> = ((vec2<f32>(x_493.x, x_493.z) * vec2<f32>(0.5f, 0.5f)) + -(x_496));
        let x_499 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
        let x_502 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_502) + vec2<f32>(1.0f, 1.0f));
        let x_506 : vec2<f32> = u_xlat46;
        let x_508 : vec2<f32> = min(x_506, vec2<f32>(0.0f, 0.0f));
        let x_509 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_511 : vec4<f32> = u_xlat9;
        let x_514 : vec4<f32> = u_xlat9;
        let x_517 : vec2<f32> = u_xlat48;
        let x_518 : vec2<f32> = ((-(vec2<f32>(x_511.x, x_511.y)) * vec2<f32>(x_514.x, x_514.y)) + x_517);
        let x_519 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_521 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_521, vec2<f32>(0.0f, 0.0f));
        let x_523 : vec2<f32> = u_xlat46;
        let x_525 : vec2<f32> = u_xlat46;
        let x_527 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_523) * x_525) + vec2<f32>(x_527.y, x_527.w));
        let x_530 : vec4<f32> = u_xlat9;
        let x_532 : vec2<f32> = (vec2<f32>(x_530.x, x_530.y) + vec2<f32>(1.0f, 1.0f));
        let x_533 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_535 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_535 + vec2<f32>(1.0f, 1.0f));
        let x_538 : vec4<f32> = u_xlat8;
        let x_542 : vec2<f32> = (vec2<f32>(x_538.x, x_538.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_543 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
        let x_545 : vec2<f32> = u_xlat48;
        let x_546 : vec2<f32> = (x_545 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_547 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat9;
        let x_551 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_552 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
        let x_555 : vec2<f32> = u_xlat46;
        let x_556 : vec2<f32> = (x_555 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_557 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_559.y, x_559.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_563 : f32 = u_xlat9.x;
        u_xlat10.z = x_563;
        let x_566 : f32 = u_xlat46.x;
        u_xlat10.w = x_566;
        let x_569 : f32 = u_xlat11.x;
        u_xlat8.z = x_569;
        let x_572 : f32 = u_xlat7.x;
        u_xlat8.w = x_572;
        let x_575 : vec4<f32> = u_xlat8;
        let x_577 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_575.z, x_575.w, x_575.x, x_575.z) + vec4<f32>(x_577.z, x_577.w, x_577.x, x_577.z));
        let x_581 : f32 = u_xlat10.y;
        u_xlat9.z = x_581;
        let x_584 : f32 = u_xlat46.y;
        u_xlat9.w = x_584;
        let x_587 : f32 = u_xlat8.y;
        u_xlat11.z = x_587;
        let x_590 : f32 = u_xlat7.z;
        u_xlat11.w = x_590;
        let x_592 : vec4<f32> = u_xlat9;
        let x_594 : vec4<f32> = u_xlat11;
        let x_596 : vec3<f32> = (vec3<f32>(x_592.z, x_592.y, x_592.w) + vec3<f32>(x_594.z, x_594.y, x_594.w));
        let x_597 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
        let x_599 : vec4<f32> = u_xlat8;
        let x_601 : vec4<f32> = u_xlat12;
        let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.z, x_599.w) / vec3<f32>(x_601.z, x_601.w, x_601.y));
        let x_604 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat8;
        let x_612 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_613 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
        let x_615 : vec4<f32> = u_xlat11;
        let x_617 : vec4<f32> = u_xlat7;
        let x_619 : vec3<f32> = (vec3<f32>(x_615.z, x_615.y, x_615.w) / vec3<f32>(x_617.x, x_617.y, x_617.z));
        let x_620 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
        let x_622 : vec4<f32> = u_xlat9;
        let x_624 : vec3<f32> = (vec3<f32>(x_622.x, x_622.y, x_622.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_625 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
        let x_627 : vec4<f32> = u_xlat8;
        let x_630 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_632 : vec3<f32> = (vec3<f32>(x_627.y, x_627.x, x_627.z) * vec3<f32>(x_630.x, x_630.x, x_630.x));
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat9;
        let x_638 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_640 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(x_638.y, x_638.y, x_638.y));
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
        let x_644 : f32 = u_xlat9.x;
        u_xlat8.w = x_644;
        let x_646 : vec4<f32> = u_xlat6;
        let x_649 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_652 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y) * vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y)) + vec4<f32>(x_652.y, x_652.w, x_652.x, x_652.w));
        let x_655 : vec4<f32> = u_xlat6;
        let x_658 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_661 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_658.x, x_658.y)) + vec2<f32>(x_661.z, x_661.w));
        let x_665 : f32 = u_xlat8.y;
        u_xlat9.w = x_665;
        let x_667 : vec4<f32> = u_xlat9;
        let x_668 : vec2<f32> = vec2<f32>(x_667.y, x_667.z);
        let x_669 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_669.x, x_668.x, x_669.z, x_668.y);
        let x_671 : vec4<f32> = u_xlat6;
        let x_674 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_677 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_671.x, x_671.y, x_671.x, x_671.y) * vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y)) + vec4<f32>(x_677.x, x_677.y, x_677.z, x_677.y));
        let x_680 : vec4<f32> = u_xlat6;
        let x_683 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_680.x, x_680.y, x_680.x, x_680.y) * vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y)) + vec4<f32>(x_686.w, x_686.y, x_686.w, x_686.z));
        let x_689 : vec4<f32> = u_xlat6;
        let x_692 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_695 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.y) * vec4<f32>(x_692.x, x_692.y, x_692.x, x_692.y)) + vec4<f32>(x_695.x, x_695.w, x_695.z, x_695.w));
        let x_699 : vec4<f32> = u_xlat7;
        let x_701 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_699.x, x_699.x, x_699.x, x_699.y) * vec4<f32>(x_701.z, x_701.w, x_701.y, x_701.z));
        let x_705 : vec4<f32> = u_xlat7;
        let x_707 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_705.y, x_705.y, x_705.z, x_705.z) * x_707);
        let x_710 : f32 = u_xlat7.z;
        let x_712 : f32 = u_xlat12.y;
        u_xlat6.x = (x_710 * x_712);
        let x_716 : vec4<f32> = u_xlat10;
        let x_717 : vec2<f32> = vec2<f32>(x_716.x, x_716.y);
        let x_719 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_727 : vec3<f32> = txVec4;
        let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_727.xy, x_727.z);
        u_xlat26 = x_729;
        let x_731 : vec4<f32> = u_xlat10;
        let x_732 : vec2<f32> = vec2<f32>(x_731.z, x_731.w);
        let x_734 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_732.x, x_732.y, x_734);
        let x_741 : vec3<f32> = txVec5;
        let x_743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_741.xy, x_741.z);
        u_xlat7.x = x_743;
        let x_746 : f32 = u_xlat7.x;
        let x_748 : f32 = u_xlat13.y;
        u_xlat7.x = (x_746 * x_748);
        let x_752 : f32 = u_xlat13.x;
        let x_753 : f32 = u_xlat26;
        let x_756 : f32 = u_xlat7.x;
        u_xlat26 = ((x_752 * x_753) + x_756);
        let x_759 : vec2<f32> = u_xlat46;
        let x_761 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_759.x, x_759.y, x_761);
        let x_768 : vec3<f32> = txVec6;
        let x_770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_768.xy, x_768.z);
        u_xlat46.x = x_770;
        let x_773 : f32 = u_xlat13.z;
        let x_775 : f32 = u_xlat46.x;
        let x_777 : f32 = u_xlat26;
        u_xlat26 = ((x_773 * x_775) + x_777);
        let x_780 : vec4<f32> = u_xlat9;
        let x_781 : vec2<f32> = vec2<f32>(x_780.x, x_780.y);
        let x_783 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_781.x, x_781.y, x_783);
        let x_790 : vec3<f32> = txVec7;
        let x_792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_790.xy, x_790.z);
        u_xlat46.x = x_792;
        let x_795 : f32 = u_xlat13.w;
        let x_797 : f32 = u_xlat46.x;
        let x_799 : f32 = u_xlat26;
        u_xlat26 = ((x_795 * x_797) + x_799);
        let x_802 : vec4<f32> = u_xlat11;
        let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
        let x_805 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_803.x, x_803.y, x_805);
        let x_812 : vec3<f32> = txVec8;
        let x_814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_812.xy, x_812.z);
        u_xlat46.x = x_814;
        let x_817 : f32 = u_xlat14.x;
        let x_819 : f32 = u_xlat46.x;
        let x_821 : f32 = u_xlat26;
        u_xlat26 = ((x_817 * x_819) + x_821);
        let x_824 : vec4<f32> = u_xlat11;
        let x_825 : vec2<f32> = vec2<f32>(x_824.z, x_824.w);
        let x_827 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_825.x, x_825.y, x_827);
        let x_834 : vec3<f32> = txVec9;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_834.xy, x_834.z);
        u_xlat46.x = x_836;
        let x_839 : f32 = u_xlat14.y;
        let x_841 : f32 = u_xlat46.x;
        let x_843 : f32 = u_xlat26;
        u_xlat26 = ((x_839 * x_841) + x_843);
        let x_846 : vec4<f32> = u_xlat9;
        let x_847 : vec2<f32> = vec2<f32>(x_846.z, x_846.w);
        let x_849 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec10;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_856.xy, x_856.z);
        u_xlat46.x = x_858;
        let x_861 : f32 = u_xlat14.z;
        let x_863 : f32 = u_xlat46.x;
        let x_865 : f32 = u_xlat26;
        u_xlat26 = ((x_861 * x_863) + x_865);
        let x_868 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec11;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_878.xy, x_878.z);
        u_xlat46.x = x_880;
        let x_883 : f32 = u_xlat14.w;
        let x_885 : f32 = u_xlat46.x;
        let x_887 : f32 = u_xlat26;
        u_xlat26 = ((x_883 * x_885) + x_887);
        let x_890 : vec4<f32> = u_xlat8;
        let x_891 : vec2<f32> = vec2<f32>(x_890.z, x_890.w);
        let x_893 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec12;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_900.xy, x_900.z);
        u_xlat46.x = x_902;
        let x_905 : f32 = u_xlat6.x;
        let x_907 : f32 = u_xlat46.x;
        let x_909 : f32 = u_xlat26;
        u_xlat65 = ((x_905 * x_907) + x_909);
      } else {
        let x_912 : vec4<f32> = vs_TEXCOORD6;
        let x_915 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_918 : vec2<f32> = ((vec2<f32>(x_912.x, x_912.y) * vec2<f32>(x_915.z, x_915.w)) + vec2<f32>(0.5f, 0.5f));
        let x_919 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
        let x_921 : vec4<f32> = u_xlat6;
        let x_923 : vec2<f32> = floor(vec2<f32>(x_921.x, x_921.y));
        let x_924 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
        let x_926 : vec4<f32> = vs_TEXCOORD6;
        let x_929 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_932 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_926.x, x_926.y) * vec2<f32>(x_929.z, x_929.w)) + -(vec2<f32>(x_932.x, x_932.y)));
        let x_936 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_936.x, x_936.x, x_936.y, x_936.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_939 : vec4<f32> = u_xlat7;
        let x_941 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_939.x, x_939.x, x_939.z, x_939.z) * vec4<f32>(x_941.x, x_941.x, x_941.z, x_941.z));
        let x_944 : vec4<f32> = u_xlat8;
        let x_948 : vec2<f32> = (vec2<f32>(x_944.y, x_944.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_951 : vec4<f32> = u_xlat8;
        let x_954 : vec2<f32> = u_xlat46;
        let x_956 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.z) * vec2<f32>(0.5f, 0.5f)) + -(x_954));
        let x_957 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_956.x, x_957.y, x_956.y, x_957.w);
        let x_959 : vec2<f32> = u_xlat46;
        let x_961 : vec2<f32> = (-(x_959) + vec2<f32>(1.0f, 1.0f));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
        let x_964 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_964, vec2<f32>(0.0f, 0.0f));
        let x_966 : vec2<f32> = u_xlat48;
        let x_968 : vec2<f32> = u_xlat48;
        let x_970 : vec4<f32> = u_xlat8;
        let x_972 : vec2<f32> = ((-(x_966) * x_968) + vec2<f32>(x_970.x, x_970.y));
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_975 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_975, vec2<f32>(0.0f, 0.0f));
        let x_978 : vec2<f32> = u_xlat48;
        let x_980 : vec2<f32> = u_xlat48;
        let x_982 : vec4<f32> = u_xlat7;
        let x_984 : vec2<f32> = ((-(x_978) * x_980) + vec2<f32>(x_982.y, x_982.w));
        let x_985 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_984.x, x_985.y, x_984.y);
        let x_987 : vec4<f32> = u_xlat8;
        let x_990 : vec2<f32> = (vec2<f32>(x_987.x, x_987.y) + vec2<f32>(2.0f, 2.0f));
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_993 : vec3<f32> = u_xlat27;
        let x_995 : vec2<f32> = (vec2<f32>(x_993.x, x_993.z) + vec2<f32>(2.0f, 2.0f));
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_996.x, x_995.x, x_996.z, x_995.y);
        let x_999 : f32 = u_xlat7.y;
        u_xlat10.z = (x_999 * 0.081632003f);
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1006 : vec3<f32> = (vec3<f32>(x_1003.z, x_1003.x, x_1003.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1007 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat8;
        let x_1012 : vec2<f32> = (vec2<f32>(x_1009.x, x_1009.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1013 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1012.x, x_1012.y, x_1013.z, x_1013.w);
        let x_1016 : f32 = u_xlat11.y;
        u_xlat10.x = x_1016;
        let x_1018 : vec2<f32> = u_xlat46;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1018.x, x_1018.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1026 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1026.x, x_1025.x, x_1026.z, x_1025.y);
        let x_1028 : vec2<f32> = u_xlat46;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1032.x, x_1033.y, x_1032.y, x_1033.w);
        let x_1036 : f32 = u_xlat7.x;
        u_xlat8.y = x_1036;
        let x_1039 : f32 = u_xlat9.y;
        u_xlat8.w = x_1039;
        let x_1041 : vec4<f32> = u_xlat8;
        let x_1042 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1041 + x_1042);
        let x_1044 : vec2<f32> = u_xlat46;
        let x_1047 : vec2<f32> = ((vec2<f32>(x_1044.y, x_1044.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1048 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1048.x, x_1047.x, x_1048.z, x_1047.y);
        let x_1050 : vec2<f32> = u_xlat46;
        let x_1053 : vec2<f32> = ((vec2<f32>(x_1050.y, x_1050.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1054 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1053.x, x_1054.y, x_1053.y, x_1054.w);
        let x_1057 : f32 = u_xlat7.y;
        u_xlat9.y = x_1057;
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1060 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1059 + x_1060);
        let x_1062 : vec4<f32> = u_xlat8;
        let x_1063 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1062 / x_1063);
        let x_1065 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1065 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1072 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1071 / x_1072);
        let x_1074 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1074 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1079 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1076.w, x_1076.x, x_1076.y, x_1076.z) * vec4<f32>(x_1079.x, x_1079.x, x_1079.x, x_1079.x));
        let x_1082 : vec4<f32> = u_xlat9;
        let x_1085 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1082.x, x_1082.w, x_1082.y, x_1082.z) * vec4<f32>(x_1085.y, x_1085.y, x_1085.y, x_1085.y));
        let x_1088 : vec4<f32> = u_xlat8;
        let x_1089 : vec3<f32> = vec3<f32>(x_1088.y, x_1088.z, x_1088.w);
        let x_1090 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1089.x, x_1090.y, x_1089.y, x_1089.z);
        let x_1093 : f32 = u_xlat9.x;
        u_xlat11.y = x_1093;
        let x_1095 : vec4<f32> = u_xlat6;
        let x_1098 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y) * vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y)) + vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1101.y));
        let x_1104 : vec4<f32> = u_xlat6;
        let x_1107 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.w, x_1110.y));
        let x_1114 : f32 = u_xlat11.y;
        u_xlat8.y = x_1114;
        let x_1117 : f32 = u_xlat9.z;
        u_xlat11.y = x_1117;
        let x_1119 : vec4<f32> = u_xlat6;
        let x_1122 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) * vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y)) + vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1125.y));
        let x_1128 : vec4<f32> = u_xlat6;
        let x_1131 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1134 : vec4<f32> = u_xlat11;
        let x_1136 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.y) * vec2<f32>(x_1131.x, x_1131.y)) + vec2<f32>(x_1134.w, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1136.x, x_1136.y, x_1137.z, x_1137.w);
        let x_1140 : f32 = u_xlat11.y;
        u_xlat8.z = x_1140;
        let x_1143 : vec4<f32> = u_xlat6;
        let x_1146 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1143.x, x_1143.y, x_1143.x, x_1143.y) * vec4<f32>(x_1146.x, x_1146.y, x_1146.x, x_1146.y)) + vec4<f32>(x_1149.x, x_1149.y, x_1149.x, x_1149.z));
        let x_1153 : f32 = u_xlat9.w;
        u_xlat11.y = x_1153;
        let x_1156 : vec4<f32> = u_xlat6;
        let x_1159 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1156.x, x_1156.y, x_1156.x, x_1156.y) * vec4<f32>(x_1159.x, x_1159.y, x_1159.x, x_1159.y)) + vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1162.y));
        let x_1166 : vec4<f32> = u_xlat6;
        let x_1169 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat11;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(x_1172.w, x_1172.y));
        let x_1175 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1174.x, x_1174.y, x_1175.z);
        let x_1178 : f32 = u_xlat11.y;
        u_xlat8.w = x_1178;
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1187 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1181.x, x_1181.y) * vec2<f32>(x_1184.x, x_1184.y)) + vec2<f32>(x_1187.x, x_1187.w));
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1191 : vec3<f32> = vec3<f32>(x_1190.x, x_1190.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1191.x, x_1192.y, x_1191.y, x_1191.z);
        let x_1194 : vec4<f32> = u_xlat6;
        let x_1197 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1200 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y) * vec4<f32>(x_1197.x, x_1197.y, x_1197.x, x_1197.y)) + vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1200.y));
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.w, x_1210.y));
        let x_1214 : f32 = u_xlat8.x;
        u_xlat9.x = x_1214;
        let x_1216 : vec4<f32> = u_xlat6;
        let x_1219 : vec4<f32> = x_344.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat9;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.x, x_1222.y));
        let x_1225 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1228 : vec4<f32> = u_xlat7;
        let x_1230 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1228.x, x_1228.x, x_1228.x, x_1228.x) * x_1230);
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1235 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1233.y, x_1233.y, x_1233.y, x_1233.y) * x_1235);
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1240 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1238.z, x_1238.z, x_1238.z, x_1238.z) * x_1240);
        let x_1242 : vec4<f32> = u_xlat7;
        let x_1244 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1242.w, x_1242.w, x_1242.w, x_1242.w) * x_1244);
        let x_1247 : vec4<f32> = u_xlat12;
        let x_1248 : vec2<f32> = vec2<f32>(x_1247.x, x_1247.y);
        let x_1250 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1248.x, x_1248.y, x_1250);
        let x_1257 : vec3<f32> = txVec13;
        let x_1259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1257.xy, x_1257.z);
        u_xlat8.x = x_1259;
        let x_1262 : vec4<f32> = u_xlat12;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.z, x_1262.w);
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1273 : vec3<f32> = txVec14;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1273.xy, x_1273.z);
        u_xlat68 = x_1275;
        let x_1276 : f32 = u_xlat68;
        let x_1278 : f32 = u_xlat17.y;
        u_xlat68 = (x_1276 * x_1278);
        let x_1281 : f32 = u_xlat17.x;
        let x_1283 : f32 = u_xlat8.x;
        let x_1285 : f32 = u_xlat68;
        u_xlat8.x = ((x_1281 * x_1283) + x_1285);
        let x_1289 : vec2<f32> = u_xlat46;
        let x_1291 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1289.x, x_1289.y, x_1291);
        let x_1298 : vec3<f32> = txVec15;
        let x_1300 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1298.xy, x_1298.z);
        u_xlat46.x = x_1300;
        let x_1303 : f32 = u_xlat17.z;
        let x_1305 : f32 = u_xlat46.x;
        let x_1308 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1303 * x_1305) + x_1308);
        let x_1312 : vec4<f32> = u_xlat15;
        let x_1313 : vec2<f32> = vec2<f32>(x_1312.x, x_1312.y);
        let x_1315 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1313.x, x_1313.y, x_1315);
        let x_1323 : vec3<f32> = txVec16;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1323.xy, x_1323.z);
        u_xlat66 = x_1325;
        let x_1327 : f32 = u_xlat17.w;
        let x_1328 : f32 = u_xlat66;
        let x_1331 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1327 * x_1328) + x_1331);
        let x_1335 : vec4<f32> = u_xlat13;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.x, x_1335.y);
        let x_1338 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec17;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1345.xy, x_1345.z);
        u_xlat66 = x_1347;
        let x_1349 : f32 = u_xlat18.x;
        let x_1350 : f32 = u_xlat66;
        let x_1353 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1349 * x_1350) + x_1353);
        let x_1357 : vec4<f32> = u_xlat13;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.z, x_1357.w);
        let x_1360 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec18;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1367.xy, x_1367.z);
        u_xlat66 = x_1369;
        let x_1371 : f32 = u_xlat18.y;
        let x_1372 : f32 = u_xlat66;
        let x_1375 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1371 * x_1372) + x_1375);
        let x_1379 : vec4<f32> = u_xlat14;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.x, x_1379.y);
        let x_1382 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec19;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat66 = x_1391;
        let x_1393 : f32 = u_xlat18.z;
        let x_1394 : f32 = u_xlat66;
        let x_1397 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1393 * x_1394) + x_1397);
        let x_1401 : vec4<f32> = u_xlat15;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.z, x_1401.w);
        let x_1404 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec20;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1411.xy, x_1411.z);
        u_xlat66 = x_1413;
        let x_1415 : f32 = u_xlat18.w;
        let x_1416 : f32 = u_xlat66;
        let x_1419 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1415 * x_1416) + x_1419);
        let x_1423 : vec4<f32> = u_xlat16;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.x, x_1423.y);
        let x_1426 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec21;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1433.xy, x_1433.z);
        u_xlat66 = x_1435;
        let x_1437 : f32 = u_xlat19.x;
        let x_1438 : f32 = u_xlat66;
        let x_1441 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1437 * x_1438) + x_1441);
        let x_1445 : vec4<f32> = u_xlat16;
        let x_1446 : vec2<f32> = vec2<f32>(x_1445.z, x_1445.w);
        let x_1448 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1446.x, x_1446.y, x_1448);
        let x_1455 : vec3<f32> = txVec22;
        let x_1457 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1455.xy, x_1455.z);
        u_xlat66 = x_1457;
        let x_1459 : f32 = u_xlat19.y;
        let x_1460 : f32 = u_xlat66;
        let x_1463 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1459 * x_1460) + x_1463);
        let x_1467 : vec3<f32> = u_xlat28;
        let x_1468 : vec2<f32> = vec2<f32>(x_1467.x, x_1467.y);
        let x_1470 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1468.x, x_1468.y, x_1470);
        let x_1477 : vec3<f32> = txVec23;
        let x_1479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1477.xy, x_1477.z);
        u_xlat66 = x_1479;
        let x_1481 : f32 = u_xlat19.z;
        let x_1482 : f32 = u_xlat66;
        let x_1485 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1481 * x_1482) + x_1485);
        let x_1489 : vec2<f32> = u_xlat54;
        let x_1491 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec24;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat66 = x_1500;
        let x_1502 : f32 = u_xlat19.w;
        let x_1503 : f32 = u_xlat66;
        let x_1506 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1502 * x_1503) + x_1506);
        let x_1510 : vec4<f32> = u_xlat11;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec25;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat66 = x_1522;
        let x_1524 : f32 = u_xlat7.x;
        let x_1525 : f32 = u_xlat66;
        let x_1528 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1524 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat11;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec26;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat66 = x_1544;
        let x_1546 : f32 = u_xlat7.y;
        let x_1547 : f32 = u_xlat66;
        let x_1550 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1546 * x_1547) + x_1550);
        let x_1554 : vec2<f32> = u_xlat49;
        let x_1556 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec27;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat66 = x_1565;
        let x_1567 : f32 = u_xlat7.z;
        let x_1568 : f32 = u_xlat66;
        let x_1571 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1567 * x_1568) + x_1571);
        let x_1575 : vec4<f32> = u_xlat6;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec28;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat6.x = x_1587;
        let x_1590 : f32 = u_xlat7.w;
        let x_1592 : f32 = u_xlat6.x;
        let x_1595 : f32 = u_xlat46.x;
        u_xlat65 = ((x_1590 * x_1592) + x_1595);
      }
    }
  } else {
    let x_1599 : vec4<f32> = vs_TEXCOORD6;
    let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
    let x_1602 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
    let x_1609 : vec3<f32> = txVec29;
    let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1609.xy, x_1609.z);
    u_xlat65 = x_1611;
  }
  let x_1613 : f32 = x_344.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1613) + 1.0f);
  let x_1617 : f32 = u_xlat65;
  let x_1619 : f32 = x_344.x_MainLightShadowParams.x;
  let x_1622 : f32 = u_xlat6.x;
  u_xlat65 = ((x_1617 * x_1619) + x_1622);
  let x_1625 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1625);
  let x_1629 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_1629 >= 1.0f);
  let x_1631 : bool = u_xlatb26;
  let x_1632 : bool = u_xlatb6;
  u_xlatb6 = (x_1631 | x_1632);
  let x_1634 : bool = u_xlatb6;
  let x_1635 : f32 = u_xlat65;
  u_xlat65 = select(x_1635, 1.0f, x_1634);
  let x_1637 : vec3<f32> = vs_TEXCOORD1;
  let x_1639 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1641 : vec3<f32> = (x_1637 + -(x_1639));
  let x_1642 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
  let x_1644 : vec4<f32> = u_xlat6;
  let x_1646 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1644.x, x_1644.y, x_1644.z), vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
  let x_1651 : f32 = u_xlat6.x;
  let x_1653 : f32 = x_344.x_MainLightShadowParams.z;
  let x_1656 : f32 = x_344.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1651 * x_1653) + x_1656);
  let x_1660 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1660, 0.0f, 1.0f);
  let x_1663 : f32 = u_xlat65;
  u_xlat26 = (-(x_1663) + 1.0f);
  let x_1667 : f32 = u_xlat6.x;
  let x_1668 : f32 = u_xlat26;
  let x_1670 : f32 = u_xlat65;
  u_xlat65 = ((x_1667 * x_1668) + x_1670);
  let x_1678 : f32 = x_1676.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_1678 == -1.0f));
  let x_1680 : bool = u_xlatb6;
  if (x_1680) {
    let x_1683 : vec3<f32> = vs_TEXCOORD1;
    let x_1686 : vec4<f32> = x_1676.x_MainLightWorldToLight[1i];
    let x_1688 : vec2<f32> = (vec2<f32>(x_1683.y, x_1683.y) * vec2<f32>(x_1686.x, x_1686.y));
    let x_1689 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1688.x, x_1688.y, x_1689.z, x_1689.w);
    let x_1692 : vec4<f32> = x_1676.x_MainLightWorldToLight[0i];
    let x_1694 : vec3<f32> = vs_TEXCOORD1;
    let x_1697 : vec4<f32> = u_xlat6;
    let x_1699 : vec2<f32> = ((vec2<f32>(x_1692.x, x_1692.y) * vec2<f32>(x_1694.x, x_1694.x)) + vec2<f32>(x_1697.x, x_1697.y));
    let x_1700 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1699.x, x_1699.y, x_1700.z, x_1700.w);
    let x_1703 : vec4<f32> = x_1676.x_MainLightWorldToLight[2i];
    let x_1705 : vec3<f32> = vs_TEXCOORD1;
    let x_1708 : vec4<f32> = u_xlat6;
    let x_1710 : vec2<f32> = ((vec2<f32>(x_1703.x, x_1703.y) * vec2<f32>(x_1705.z, x_1705.z)) + vec2<f32>(x_1708.x, x_1708.y));
    let x_1711 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1710.x, x_1710.y, x_1711.z, x_1711.w);
    let x_1713 : vec4<f32> = u_xlat6;
    let x_1717 : vec4<f32> = x_1676.x_MainLightWorldToLight[3i];
    let x_1719 : vec2<f32> = (vec2<f32>(x_1713.x, x_1713.y) + vec2<f32>(x_1717.x, x_1717.y));
    let x_1720 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1719.x, x_1719.y, x_1720.z, x_1720.w);
    let x_1722 : vec4<f32> = u_xlat6;
    let x_1725 : vec2<f32> = ((vec2<f32>(x_1722.x, x_1722.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1726 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1725.x, x_1725.y, x_1726.z, x_1726.w);
    let x_1733 : vec4<f32> = u_xlat6;
    let x_1736 : f32 = x_44.x_GlobalMipBias.x;
    let x_1737 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1733.x, x_1733.y), x_1736);
    u_xlat6 = x_1737;
    let x_1742 : f32 = x_1676.x_MainLightCookieTextureFormat;
    let x_1744 : f32 = x_1676.x_MainLightCookieTextureFormat;
    let x_1746 : f32 = x_1676.x_MainLightCookieTextureFormat;
    let x_1748 : f32 = x_1676.x_MainLightCookieTextureFormat;
    let x_1749 : vec4<f32> = vec4<f32>(x_1742, x_1744, x_1746, x_1748);
    let x_1757 : vec4<bool> = (vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1749.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1757.x, x_1757.y);
    let x_1760 : bool = u_xlatb7.y;
    if (x_1760) {
      let x_1765 : f32 = u_xlat6.w;
      x_1761 = x_1765;
    } else {
      let x_1768 : f32 = u_xlat6.x;
      x_1761 = x_1768;
    }
    let x_1769 : f32 = x_1761;
    u_xlat66 = x_1769;
    let x_1771 : bool = u_xlatb7.x;
    if (x_1771) {
      let x_1775 : vec4<f32> = u_xlat6;
      x_1772 = vec3<f32>(x_1775.x, x_1775.y, x_1775.z);
    } else {
      let x_1778 : f32 = u_xlat66;
      x_1772 = vec3<f32>(x_1778, x_1778, x_1778);
    }
    let x_1780 : vec3<f32> = x_1772;
    let x_1781 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1787 : vec4<f32> = u_xlat6;
  let x_1790 : vec4<f32> = x_44.x_MainLightColor;
  let x_1792 : vec3<f32> = (vec3<f32>(x_1787.x, x_1787.y, x_1787.z) * vec3<f32>(x_1790.x, x_1790.y, x_1790.z));
  let x_1793 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1792.x, x_1792.y, x_1792.z, x_1793.w);
  let x_1795 : f32 = u_xlat45;
  let x_1797 : vec4<f32> = u_xlat6;
  let x_1799 : vec3<f32> = (vec3<f32>(x_1795, x_1795, x_1795) * vec3<f32>(x_1797.x, x_1797.y, x_1797.z));
  let x_1800 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1799.x, x_1799.y, x_1799.z, x_1800.w);
  let x_1802 : vec3<f32> = u_xlat3;
  let x_1804 : vec3<f32> = u_xlat2;
  u_xlat66 = dot(-(x_1802), x_1804);
  let x_1806 : f32 = u_xlat66;
  let x_1807 : f32 = u_xlat66;
  u_xlat66 = (x_1806 + x_1807);
  let x_1809 : vec3<f32> = u_xlat2;
  let x_1810 : f32 = u_xlat66;
  let x_1814 : vec3<f32> = u_xlat3;
  let x_1816 : vec3<f32> = ((x_1809 * -(vec3<f32>(x_1810, x_1810, x_1810))) + -(x_1814));
  let x_1817 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1817.w);
  let x_1819 : vec3<f32> = u_xlat2;
  let x_1820 : vec3<f32> = u_xlat3;
  u_xlat66 = dot(x_1819, x_1820);
  let x_1822 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1822, 0.0f, 1.0f);
  let x_1824 : f32 = u_xlat66;
  u_xlat66 = (-(x_1824) + 1.0f);
  let x_1827 : f32 = u_xlat66;
  let x_1828 : f32 = u_xlat66;
  u_xlat66 = (x_1827 * x_1828);
  let x_1830 : f32 = u_xlat66;
  let x_1831 : f32 = u_xlat66;
  u_xlat66 = (x_1830 * x_1831);
  let x_1834 : f32 = u_xlat60;
  u_xlat67 = ((-(x_1834) * 0.699999988f) + 1.700000048f);
  let x_1840 : f32 = u_xlat60;
  let x_1841 : f32 = u_xlat67;
  u_xlat60 = (x_1840 * x_1841);
  let x_1843 : f32 = u_xlat60;
  u_xlat60 = (x_1843 * 6.0f);
  let x_1854 : vec4<f32> = u_xlat7;
  let x_1856 : f32 = u_xlat60;
  let x_1857 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1854.x, x_1854.y, x_1854.z), x_1856);
  u_xlat7 = x_1857;
  let x_1859 : f32 = u_xlat7.w;
  u_xlat60 = (x_1859 + -1.0f);
  let x_1862 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_1863 : f32 = u_xlat60;
  u_xlat60 = ((x_1862 * x_1863) + 1.0f);
  let x_1866 : f32 = u_xlat60;
  u_xlat60 = max(x_1866, 0.0f);
  let x_1868 : f32 = u_xlat60;
  u_xlat60 = log2(x_1868);
  let x_1870 : f32 = u_xlat60;
  let x_1872 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat60 = (x_1870 * x_1872);
  let x_1874 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1874);
  let x_1876 : f32 = u_xlat60;
  let x_1878 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat60 = (x_1876 * x_1878);
  let x_1880 : vec4<f32> = u_xlat7;
  let x_1882 : f32 = u_xlat60;
  let x_1884 : vec3<f32> = (vec3<f32>(x_1880.x, x_1880.y, x_1880.z) * vec3<f32>(x_1882, x_1882, x_1882));
  let x_1885 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  let x_1887 : f32 = u_xlat63;
  let x_1889 : f32 = u_xlat63;
  let x_1893 : vec2<f32> = ((vec2<f32>(x_1887, x_1887) * vec2<f32>(x_1889, x_1889)) + vec2<f32>(-1.0f, 1.0f));
  let x_1894 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
  let x_1897 : f32 = u_xlat8.y;
  u_xlat60 = (1.0f / x_1897);
  let x_1899 : vec4<f32> = u_xlat0;
  let x_1902 : f32 = u_xlat62;
  u_xlat28 = (-(vec3<f32>(x_1899.x, x_1899.y, x_1899.z)) + vec3<f32>(x_1902, x_1902, x_1902));
  let x_1905 : f32 = u_xlat66;
  let x_1907 : vec3<f32> = u_xlat28;
  let x_1909 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1905, x_1905, x_1905) * x_1907) + vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
  let x_1912 : f32 = u_xlat60;
  let x_1914 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1912, x_1912, x_1912) * x_1914);
  let x_1916 : vec4<f32> = u_xlat7;
  let x_1918 : vec3<f32> = u_xlat28;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1916.x, x_1916.y, x_1916.z) * x_1918);
  let x_1920 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : vec3<f32> = u_xlat4;
  let x_1923 : vec3<f32> = u_xlat21;
  let x_1925 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_1922 * x_1923) + vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1928 : f32 = u_xlat65;
  let x_1931 : f32 = x_95.unity_LightData.z;
  u_xlat60 = (x_1928 * x_1931);
  let x_1933 : vec3<f32> = u_xlat2;
  let x_1935 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat62 = dot(x_1933, vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
  let x_1938 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1938, 0.0f, 1.0f);
  let x_1940 : f32 = u_xlat60;
  let x_1941 : f32 = u_xlat62;
  u_xlat60 = (x_1940 * x_1941);
  let x_1943 : f32 = u_xlat60;
  let x_1945 : vec4<f32> = u_xlat6;
  let x_1947 : vec3<f32> = (vec3<f32>(x_1943, x_1943, x_1943) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  let x_1950 : vec3<f32> = u_xlat3;
  let x_1952 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1954 : vec3<f32> = (x_1950 + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1957 : vec4<f32> = u_xlat7;
  let x_1959 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1957.x, x_1957.y, x_1957.z), vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : f32 = u_xlat60;
  u_xlat60 = max(x_1962, 1.17549435e-37f);
  let x_1965 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1965);
  let x_1967 : f32 = u_xlat60;
  let x_1969 : vec4<f32> = u_xlat7;
  let x_1971 : vec3<f32> = (vec3<f32>(x_1967, x_1967, x_1967) * vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
  let x_1974 : vec3<f32> = u_xlat2;
  let x_1975 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1974, vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1978, 0.0f, 1.0f);
  let x_1981 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1983 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(vec3<f32>(x_1981.x, x_1981.y, x_1981.z), vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
  let x_1986 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1986, 0.0f, 1.0f);
  let x_1988 : f32 = u_xlat60;
  let x_1989 : f32 = u_xlat60;
  u_xlat60 = (x_1988 * x_1989);
  let x_1991 : f32 = u_xlat60;
  let x_1993 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1991 * x_1993) + 1.000010014f);
  let x_1997 : f32 = u_xlat62;
  let x_1998 : f32 = u_xlat62;
  u_xlat62 = (x_1997 * x_1998);
  let x_2000 : f32 = u_xlat60;
  let x_2001 : f32 = u_xlat60;
  u_xlat60 = (x_2000 * x_2001);
  let x_2003 : f32 = u_xlat62;
  u_xlat62 = max(x_2003, 0.100000001f);
  let x_2006 : f32 = u_xlat60;
  let x_2007 : f32 = u_xlat62;
  u_xlat60 = (x_2006 * x_2007);
  let x_2009 : f32 = u_xlat25;
  let x_2010 : f32 = u_xlat60;
  u_xlat60 = (x_2009 * x_2010);
  let x_2012 : f32 = u_xlat64;
  let x_2013 : f32 = u_xlat60;
  u_xlat60 = (x_2012 / x_2013);
  let x_2015 : vec4<f32> = u_xlat0;
  let x_2017 : f32 = u_xlat60;
  let x_2020 : vec3<f32> = u_xlat21;
  let x_2021 : vec3<f32> = ((vec3<f32>(x_2015.x, x_2015.y, x_2015.z) * vec3<f32>(x_2017, x_2017, x_2017)) + x_2020);
  let x_2022 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : vec4<f32> = u_xlat6;
  let x_2026 : vec4<f32> = u_xlat7;
  let x_2028 : vec3<f32> = (vec3<f32>(x_2024.x, x_2024.y, x_2024.z) * vec3<f32>(x_2026.x, x_2026.y, x_2026.z));
  let x_2029 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
  let x_2032 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2034 : f32 = x_95.unity_LightData.y;
  u_xlat60 = min(x_2032, x_2034);
  let x_2038 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2038));
  let x_2042 : f32 = x_1676.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2044 : f32 = x_1676.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2046 : f32 = x_1676.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2048 : f32 = x_1676.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2049 : vec4<f32> = vec4<f32>(x_2042, x_2044, x_2046, x_2048);
  let x_2055 : vec4<bool> = (vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2049.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2055.x, x_2055.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2066 : u32 = u_xlatu_loop_1;
    let x_2067 : u32 = u_xlatu60;
    if ((x_2066 < x_2067)) {
    } else {
      break;
    }
    let x_2070 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2070 >> 2u);
    let x_2074 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2074 & 3u));
    let x_2077 : u32 = u_xlatu63;
    let x_2080 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_2077)];
    let x_2090 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2095 : vec4<u32> = indexable[x_2090];
    u_xlat63 = dot(x_2080, bitcast<vec4<f32>>(x_2095));
    let x_2098 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2098));
    let x_2101 : vec3<f32> = vs_TEXCOORD1;
    let x_2113 : u32 = u_xlatu63;
    let x_2116 : vec4<f32> = x_2112.x_AdditionalLightsPosition[bitcast<i32>(x_2113)];
    let x_2119 : u32 = u_xlatu63;
    let x_2122 : vec4<f32> = x_2112.x_AdditionalLightsPosition[bitcast<i32>(x_2119)];
    let x_2124 : vec3<f32> = ((-(x_2101) * vec3<f32>(x_2116.w, x_2116.w, x_2116.w)) + vec3<f32>(x_2122.x, x_2122.y, x_2122.z));
    let x_2125 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
    let x_2127 : vec4<f32> = u_xlat9;
    let x_2129 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2127.x, x_2127.y, x_2127.z), vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
    let x_2132 : f32 = u_xlat65;
    u_xlat65 = max(x_2132, 6.10351562e-05f);
    let x_2135 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2135);
    let x_2137 : f32 = u_xlat66;
    let x_2139 : vec4<f32> = u_xlat9;
    let x_2141 : vec3<f32> = (vec3<f32>(x_2137, x_2137, x_2137) * vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
    let x_2142 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
    let x_2145 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2145);
    let x_2148 : f32 = u_xlat65;
    let x_2149 : u32 = u_xlatu63;
    let x_2152 : f32 = x_2112.x_AdditionalLightsAttenuation[bitcast<i32>(x_2149)].x;
    u_xlat65 = (x_2148 * x_2152);
    let x_2154 : f32 = u_xlat65;
    let x_2156 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2154) * x_2156) + 1.0f);
    let x_2159 : f32 = u_xlat65;
    u_xlat65 = max(x_2159, 0.0f);
    let x_2161 : f32 = u_xlat65;
    let x_2162 : f32 = u_xlat65;
    u_xlat65 = (x_2161 * x_2162);
    let x_2164 : f32 = u_xlat65;
    let x_2166 : f32 = u_xlat47.x;
    u_xlat65 = (x_2164 * x_2166);
    let x_2168 : u32 = u_xlatu63;
    let x_2171 : vec4<f32> = x_2112.x_AdditionalLightsSpotDir[bitcast<i32>(x_2168)];
    let x_2173 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2171.x, x_2171.y, x_2171.z), vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
    let x_2178 : f32 = u_xlat47.x;
    let x_2179 : u32 = u_xlatu63;
    let x_2182 : f32 = x_2112.x_AdditionalLightsAttenuation[bitcast<i32>(x_2179)].z;
    let x_2184 : u32 = u_xlatu63;
    let x_2187 : f32 = x_2112.x_AdditionalLightsAttenuation[bitcast<i32>(x_2184)].w;
    u_xlat47.x = ((x_2178 * x_2182) + x_2187);
    let x_2191 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2191, 0.0f, 1.0f);
    let x_2195 : f32 = u_xlat47.x;
    let x_2197 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2195 * x_2197);
    let x_2200 : f32 = u_xlat65;
    let x_2202 : f32 = u_xlat47.x;
    u_xlat65 = (x_2200 * x_2202);
    let x_2205 : u32 = u_xlatu63;
    u_xlatu47 = (x_2205 >> 5u);
    let x_2208 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2208) & 31i)));
    let x_2214 : i32 = u_xlati67;
    let x_2216 : u32 = u_xlatu47;
    let x_2219 : f32 = x_1676.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2216)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2214) & bitcast<u32>(x_2219)));
    let x_2223 : i32 = u_xlati47;
    if ((x_2223 != 0i)) {
      let x_2233 : u32 = u_xlatu63;
      let x_2236 : f32 = x_2232.x_AdditionalLightsLightTypes[bitcast<i32>(x_2233)].el;
      u_xlati47 = i32(x_2236);
      let x_2238 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2238 != 0i));
      let x_2242 : u32 = u_xlatu63;
      u_xlati69 = (bitcast<i32>(x_2242) << bitcast<u32>(2i));
      let x_2245 : i32 = u_xlati67;
      if ((x_2245 != 0i)) {
        let x_2249 : vec3<f32> = vs_TEXCOORD1;
        let x_2251 : i32 = u_xlati69;
        let x_2254 : i32 = u_xlati69;
        let x_2258 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2251 + 1i) / 4i)][((x_2254 + 1i) % 4i)];
        let x_2260 : vec3<f32> = (vec3<f32>(x_2249.y, x_2249.y, x_2249.y) * vec3<f32>(x_2258.x, x_2258.y, x_2258.w));
        let x_2261 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
        let x_2263 : i32 = u_xlati69;
        let x_2265 : i32 = u_xlati69;
        let x_2268 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[(x_2263 / 4i)][(x_2265 % 4i)];
        let x_2270 : vec3<f32> = vs_TEXCOORD1;
        let x_2273 : vec4<f32> = u_xlat11;
        let x_2275 : vec3<f32> = ((vec3<f32>(x_2268.x, x_2268.y, x_2268.w) * vec3<f32>(x_2270.x, x_2270.x, x_2270.x)) + vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
        let x_2276 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
        let x_2278 : i32 = u_xlati69;
        let x_2281 : i32 = u_xlati69;
        let x_2285 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2278 + 2i) / 4i)][((x_2281 + 2i) % 4i)];
        let x_2287 : vec3<f32> = vs_TEXCOORD1;
        let x_2290 : vec4<f32> = u_xlat11;
        let x_2292 : vec3<f32> = ((vec3<f32>(x_2285.x, x_2285.y, x_2285.w) * vec3<f32>(x_2287.z, x_2287.z, x_2287.z)) + vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
        let x_2293 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
        let x_2295 : vec4<f32> = u_xlat11;
        let x_2297 : i32 = u_xlati69;
        let x_2300 : i32 = u_xlati69;
        let x_2304 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2297 + 3i) / 4i)][((x_2300 + 3i) % 4i)];
        let x_2306 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) + vec3<f32>(x_2304.x, x_2304.y, x_2304.w));
        let x_2307 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
        let x_2309 : vec4<f32> = u_xlat11;
        let x_2311 : vec4<f32> = u_xlat11;
        let x_2313 : vec2<f32> = (vec2<f32>(x_2309.x, x_2309.y) / vec2<f32>(x_2311.z, x_2311.z));
        let x_2314 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2313.x, x_2313.y, x_2314.z, x_2314.w);
        let x_2316 : vec4<f32> = u_xlat11;
        let x_2319 : vec2<f32> = ((vec2<f32>(x_2316.x, x_2316.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2320 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2319.x, x_2319.y, x_2320.z, x_2320.w);
        let x_2322 : vec4<f32> = u_xlat11;
        let x_2326 : vec2<f32> = clamp(vec2<f32>(x_2322.x, x_2322.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2327 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2326.x, x_2326.y, x_2327.z, x_2327.w);
        let x_2329 : u32 = u_xlatu63;
        let x_2332 : vec4<f32> = x_2232.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2329)];
        let x_2334 : vec4<f32> = u_xlat11;
        let x_2337 : u32 = u_xlatu63;
        let x_2340 : vec4<f32> = x_2232.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2337)];
        let x_2342 : vec2<f32> = ((vec2<f32>(x_2332.x, x_2332.y) * vec2<f32>(x_2334.x, x_2334.y)) + vec2<f32>(x_2340.z, x_2340.w));
        let x_2343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
      } else {
        let x_2347 : i32 = u_xlati47;
        u_xlatb47 = (x_2347 == 1i);
        let x_2349 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2349);
        let x_2351 : i32 = u_xlati47;
        if ((x_2351 != 0i)) {
          let x_2355 : vec3<f32> = vs_TEXCOORD1;
          let x_2357 : i32 = u_xlati69;
          let x_2360 : i32 = u_xlati69;
          let x_2364 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2357 + 1i) / 4i)][((x_2360 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2355.y, x_2355.y) * vec2<f32>(x_2364.x, x_2364.y));
          let x_2367 : i32 = u_xlati69;
          let x_2369 : i32 = u_xlati69;
          let x_2372 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[(x_2367 / 4i)][(x_2369 % 4i)];
          let x_2374 : vec3<f32> = vs_TEXCOORD1;
          let x_2377 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2372.x, x_2372.y) * vec2<f32>(x_2374.x, x_2374.x)) + x_2377);
          let x_2379 : i32 = u_xlati69;
          let x_2382 : i32 = u_xlati69;
          let x_2386 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2379 + 2i) / 4i)][((x_2382 + 2i) % 4i)];
          let x_2388 : vec3<f32> = vs_TEXCOORD1;
          let x_2391 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2386.x, x_2386.y) * vec2<f32>(x_2388.z, x_2388.z)) + x_2391);
          let x_2393 : vec2<f32> = u_xlat47;
          let x_2394 : i32 = u_xlati69;
          let x_2397 : i32 = u_xlati69;
          let x_2401 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2394 + 3i) / 4i)][((x_2397 + 3i) % 4i)];
          u_xlat47 = (x_2393 + vec2<f32>(x_2401.x, x_2401.y));
          let x_2404 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2404 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2407 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2407);
          let x_2409 : u32 = u_xlatu63;
          let x_2412 : vec4<f32> = x_2232.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2409)];
          let x_2414 : vec2<f32> = u_xlat47;
          let x_2416 : u32 = u_xlatu63;
          let x_2419 : vec4<f32> = x_2232.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2416)];
          let x_2421 : vec2<f32> = ((vec2<f32>(x_2412.x, x_2412.y) * x_2414) + vec2<f32>(x_2419.z, x_2419.w));
          let x_2422 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2421.x, x_2421.y, x_2422.z, x_2422.w);
        } else {
          let x_2425 : vec3<f32> = vs_TEXCOORD1;
          let x_2427 : i32 = u_xlati69;
          let x_2430 : i32 = u_xlati69;
          let x_2434 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2427 + 1i) / 4i)][((x_2430 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2425.y, x_2425.y, x_2425.y, x_2425.y) * x_2434);
          let x_2436 : i32 = u_xlati69;
          let x_2438 : i32 = u_xlati69;
          let x_2441 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[(x_2436 / 4i)][(x_2438 % 4i)];
          let x_2442 : vec3<f32> = vs_TEXCOORD1;
          let x_2445 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2441 * vec4<f32>(x_2442.x, x_2442.x, x_2442.x, x_2442.x)) + x_2445);
          let x_2447 : i32 = u_xlati69;
          let x_2450 : i32 = u_xlati69;
          let x_2454 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2447 + 2i) / 4i)][((x_2450 + 2i) % 4i)];
          let x_2455 : vec3<f32> = vs_TEXCOORD1;
          let x_2458 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2454 * vec4<f32>(x_2455.z, x_2455.z, x_2455.z, x_2455.z)) + x_2458);
          let x_2460 : vec4<f32> = u_xlat12;
          let x_2461 : i32 = u_xlati69;
          let x_2464 : i32 = u_xlati69;
          let x_2468 : vec4<f32> = x_2232.x_AdditionalLightsWorldToLights[((x_2461 + 3i) / 4i)][((x_2464 + 3i) % 4i)];
          u_xlat12 = (x_2460 + x_2468);
          let x_2470 : vec4<f32> = u_xlat12;
          let x_2472 : vec4<f32> = u_xlat12;
          let x_2474 : vec3<f32> = (vec3<f32>(x_2470.x, x_2470.y, x_2470.z) / vec3<f32>(x_2472.w, x_2472.w, x_2472.w));
          let x_2475 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
          let x_2477 : vec4<f32> = u_xlat12;
          let x_2479 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2477.x, x_2477.y, x_2477.z), vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
          let x_2484 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2484);
          let x_2487 : vec2<f32> = u_xlat47;
          let x_2489 : vec4<f32> = u_xlat12;
          let x_2491 : vec3<f32> = (vec3<f32>(x_2487.x, x_2487.x, x_2487.x) * vec3<f32>(x_2489.x, x_2489.y, x_2489.z));
          let x_2492 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2491.x, x_2491.y, x_2491.z, x_2492.w);
          let x_2494 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2494.x, x_2494.y, x_2494.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2501 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2501, 0.000001f);
          let x_2506 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2506);
          let x_2509 : vec2<f32> = u_xlat47;
          let x_2511 : vec4<f32> = u_xlat12;
          let x_2513 : vec3<f32> = (vec3<f32>(x_2509.x, x_2509.x, x_2509.x) * vec3<f32>(x_2511.z, x_2511.x, x_2511.y));
          let x_2514 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2514.w);
          let x_2517 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2517);
          let x_2521 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2521, 0.0f, 1.0f);
          let x_2525 : vec4<f32> = u_xlat13;
          let x_2528 : vec4<bool> = (vec4<f32>(x_2525.y, x_2525.z, x_2525.y, x_2525.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2528.x, x_2528.y);
          let x_2532 : bool = u_xlatb51.x;
          if (x_2532) {
            let x_2537 : f32 = u_xlat13.x;
            x_2533 = x_2537;
          } else {
            let x_2540 : f32 = u_xlat13.x;
            x_2533 = -(x_2540);
          }
          let x_2542 : f32 = x_2533;
          u_xlat51.x = x_2542;
          let x_2545 : bool = u_xlatb51.y;
          if (x_2545) {
            let x_2550 : f32 = u_xlat13.x;
            x_2546 = x_2550;
          } else {
            let x_2553 : f32 = u_xlat13.x;
            x_2546 = -(x_2553);
          }
          let x_2555 : f32 = x_2546;
          u_xlat51.y = x_2555;
          let x_2557 : vec4<f32> = u_xlat12;
          let x_2559 : vec2<f32> = u_xlat47;
          let x_2562 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2557.x, x_2557.y) * vec2<f32>(x_2559.x, x_2559.x)) + x_2562);
          let x_2564 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2564 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2567 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2567, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2571 : u32 = u_xlatu63;
          let x_2574 : vec4<f32> = x_2232.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2571)];
          let x_2576 : vec2<f32> = u_xlat47;
          let x_2578 : u32 = u_xlatu63;
          let x_2581 : vec4<f32> = x_2232.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2578)];
          let x_2583 : vec2<f32> = ((vec2<f32>(x_2574.x, x_2574.y) * x_2576) + vec2<f32>(x_2581.z, x_2581.w));
          let x_2584 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
        }
      }
      let x_2591 : vec4<f32> = u_xlat11;
      let x_2594 : f32 = x_44.x_GlobalMipBias.x;
      let x_2595 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2591.x, x_2591.y), x_2594);
      u_xlat11 = x_2595;
      let x_2597 : bool = u_xlatb7.y;
      if (x_2597) {
        let x_2602 : f32 = u_xlat11.w;
        x_2598 = x_2602;
      } else {
        let x_2605 : f32 = u_xlat11.x;
        x_2598 = x_2605;
      }
      let x_2606 : f32 = x_2598;
      u_xlat47.x = x_2606;
      let x_2609 : bool = u_xlatb7.x;
      if (x_2609) {
        let x_2613 : vec4<f32> = u_xlat11;
        x_2610 = vec3<f32>(x_2613.x, x_2613.y, x_2613.z);
      } else {
        let x_2616 : vec2<f32> = u_xlat47;
        x_2610 = vec3<f32>(x_2616.x, x_2616.x, x_2616.x);
      }
      let x_2618 : vec3<f32> = x_2610;
      let x_2619 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2618.x, x_2618.y, x_2618.z, x_2619.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2625 : vec4<f32> = u_xlat11;
    let x_2627 : u32 = u_xlatu63;
    let x_2630 : vec4<f32> = x_2112.x_AdditionalLightsColor[bitcast<i32>(x_2627)];
    let x_2632 : vec3<f32> = (vec3<f32>(x_2625.x, x_2625.y, x_2625.z) * vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);
    let x_2635 : f32 = u_xlat45;
    let x_2637 : vec4<f32> = u_xlat11;
    let x_2639 : vec3<f32> = (vec3<f32>(x_2635, x_2635, x_2635) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
    let x_2640 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
    let x_2642 : vec3<f32> = u_xlat2;
    let x_2643 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_2642, vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
    let x_2646 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2646, 0.0f, 1.0f);
    let x_2648 : f32 = u_xlat63;
    let x_2649 : f32 = u_xlat65;
    u_xlat63 = (x_2648 * x_2649);
    let x_2651 : f32 = u_xlat63;
    let x_2653 : vec4<f32> = u_xlat11;
    let x_2655 : vec3<f32> = (vec3<f32>(x_2651, x_2651, x_2651) * vec3<f32>(x_2653.x, x_2653.y, x_2653.z));
    let x_2656 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2655.x, x_2655.y, x_2655.z, x_2656.w);
    let x_2658 : vec4<f32> = u_xlat9;
    let x_2660 : f32 = u_xlat66;
    let x_2663 : vec3<f32> = u_xlat3;
    let x_2664 : vec3<f32> = ((vec3<f32>(x_2658.x, x_2658.y, x_2658.z) * vec3<f32>(x_2660, x_2660, x_2660)) + x_2663);
    let x_2665 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2664.x, x_2664.y, x_2664.z, x_2665.w);
    let x_2667 : vec4<f32> = u_xlat9;
    let x_2669 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(vec3<f32>(x_2667.x, x_2667.y, x_2667.z), vec3<f32>(x_2669.x, x_2669.y, x_2669.z));
    let x_2672 : f32 = u_xlat63;
    u_xlat63 = max(x_2672, 1.17549435e-37f);
    let x_2674 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2674);
    let x_2676 : f32 = u_xlat63;
    let x_2678 : vec4<f32> = u_xlat9;
    let x_2680 : vec3<f32> = (vec3<f32>(x_2676, x_2676, x_2676) * vec3<f32>(x_2678.x, x_2678.y, x_2678.z));
    let x_2681 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2680.x, x_2680.y, x_2680.z, x_2681.w);
    let x_2683 : vec3<f32> = u_xlat2;
    let x_2684 : vec4<f32> = u_xlat9;
    u_xlat63 = dot(x_2683, vec3<f32>(x_2684.x, x_2684.y, x_2684.z));
    let x_2687 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2687, 0.0f, 1.0f);
    let x_2689 : vec4<f32> = u_xlat10;
    let x_2691 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2689.x, x_2689.y, x_2689.z), vec3<f32>(x_2691.x, x_2691.y, x_2691.z));
    let x_2694 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2694, 0.0f, 1.0f);
    let x_2696 : f32 = u_xlat63;
    let x_2697 : f32 = u_xlat63;
    u_xlat63 = (x_2696 * x_2697);
    let x_2699 : f32 = u_xlat63;
    let x_2701 : f32 = u_xlat8.x;
    u_xlat63 = ((x_2699 * x_2701) + 1.000010014f);
    let x_2704 : f32 = u_xlat65;
    let x_2705 : f32 = u_xlat65;
    u_xlat65 = (x_2704 * x_2705);
    let x_2707 : f32 = u_xlat63;
    let x_2708 : f32 = u_xlat63;
    u_xlat63 = (x_2707 * x_2708);
    let x_2710 : f32 = u_xlat65;
    u_xlat65 = max(x_2710, 0.100000001f);
    let x_2712 : f32 = u_xlat63;
    let x_2713 : f32 = u_xlat65;
    u_xlat63 = (x_2712 * x_2713);
    let x_2715 : f32 = u_xlat25;
    let x_2716 : f32 = u_xlat63;
    u_xlat63 = (x_2715 * x_2716);
    let x_2718 : f32 = u_xlat64;
    let x_2719 : f32 = u_xlat63;
    u_xlat63 = (x_2718 / x_2719);
    let x_2721 : vec4<f32> = u_xlat0;
    let x_2723 : f32 = u_xlat63;
    let x_2726 : vec3<f32> = u_xlat21;
    let x_2727 : vec3<f32> = ((vec3<f32>(x_2721.x, x_2721.y, x_2721.z) * vec3<f32>(x_2723, x_2723, x_2723)) + x_2726);
    let x_2728 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2728.w);
    let x_2730 : vec4<f32> = u_xlat9;
    let x_2732 : vec4<f32> = u_xlat11;
    let x_2735 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2730.x, x_2730.y, x_2730.z) * vec3<f32>(x_2732.x, x_2732.y, x_2732.z)) + x_2735);

    continuing {
      let x_2737 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2737 + bitcast<u32>(1i));
    }
  }
  let x_2739 : vec3<f32> = u_xlat4;
  let x_2740 : vec3<f32> = u_xlat5;
  let x_2743 : vec4<f32> = u_xlat6;
  let x_2745 : vec3<f32> = ((x_2739 * vec3<f32>(x_2740.x, x_2740.x, x_2740.x)) + vec3<f32>(x_2743.x, x_2743.y, x_2743.z));
  let x_2746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2745.x, x_2745.y, x_2745.z, x_2746.w);
  let x_2750 : vec3<f32> = u_xlat28;
  let x_2751 : vec4<f32> = u_xlat0;
  let x_2753 : vec3<f32> = (x_2750 + vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
  let x_2754 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
  let x_2759 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2759 == 1.0f);
  let x_2761 : bool = u_xlatb0;
  if (x_2761) {
    let x_2766 : f32 = u_xlat1.x;
    x_2762 = x_2766;
  } else {
    x_2762 = 1.0f;
  }
  let x_2768 : f32 = x_2762;
  SV_Target0.w = x_2768;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

