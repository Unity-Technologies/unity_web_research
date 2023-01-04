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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_EmissionMap : sampler;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_214 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1928 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2339 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2444 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlatb68 : bool;
  var x_112 : f32;
  var u_xlatb66 : bool;
  var u_xlat68 : f32;
  var u_xlat4 : vec3<f32>;
  var x_164 : f32;
  var x_176 : f32;
  var x_188 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu66 : u32;
  var u_xlati66 : i32;
  var u_xlat23 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlatb29 : vec2<bool>;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlatb51 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat73 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat58 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat75 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
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
  var u_xlat30 : f32;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlatb49 : bool;
  var x_1880 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat49 : f32;
  var x_1995 : f32;
  var x_2006 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu69 : u32;
  var u_xlati73 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat74 : f32;
  var u_xlat76 : f32;
  var u_xlatu76 : u32;
  var u_xlati11 : i32;
  var u_xlati76 : i32;
  var u_xlati33 : i32;
  var u_xlatb76 : bool;
  var u_xlatb33 : vec3<bool>;
  var u_xlat33 : vec3<f32>;
  var x_2759 : f32;
  var x_2772 : f32;
  var x_2834 : f32;
  var x_2845 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2999 : f32;
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
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_77 : vec4<f32> = hlslcc_FragCoord;
  let x_81 : f32 = x_44.x_DitheringTextureInvSize;
  let x_83 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_81, x_81));
  let x_84 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_93 : vec3<f32> = u_xlat3;
  let x_96 : f32 = x_44.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_93.x, x_93.y), x_96);
  u_xlat66 = x_97.w;
  let x_108 : f32 = x_106.unity_LODFade.x;
  u_xlatb68 = (x_108 >= 0.0f);
  let x_111 : bool = u_xlatb68;
  if (x_111) {
    let x_115 : f32 = u_xlat66;
    x_112 = abs(x_115);
  } else {
    let x_118 : f32 = u_xlat66;
    x_112 = -(abs(x_118));
  }
  let x_121 : f32 = x_112;
  u_xlat66 = x_121;
  let x_122 : f32 = u_xlat66;
  let x_125 : f32 = x_106.unity_LODFade.x;
  u_xlat66 = (-(x_122) + x_125);
  let x_128 : f32 = u_xlat66;
  u_xlatb66 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb66;
  if (((select(0i, 1i, x_130) * -1i) != 0i)) {
    discard;
  }
  let x_141 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb66 = (x_141 == 0.0f);
  let x_145 : vec3<f32> = vs_TEXCOORD1;
  let x_150 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_145) + x_150);
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = u_xlat3;
  u_xlat68 = dot(x_153, x_154);
  let x_156 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat68;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158, x_158, x_158) * x_160);
  let x_163 : bool = u_xlatb66;
  if (x_163) {
    let x_168 : f32 = u_xlat3.x;
    x_164 = x_168;
  } else {
    let x_172 : f32 = x_44.unity_MatrixV[0i].z;
    x_164 = x_172;
  }
  let x_173 : f32 = x_164;
  u_xlat4.x = x_173;
  let x_175 : bool = u_xlatb66;
  if (x_175) {
    let x_181 : f32 = u_xlat3.y;
    x_176 = x_181;
  } else {
    let x_184 : f32 = x_44.unity_MatrixV[1i].z;
    x_176 = x_184;
  }
  let x_185 : f32 = x_176;
  u_xlat4.y = x_185;
  let x_187 : bool = u_xlatb66;
  if (x_187) {
    let x_192 : f32 = u_xlat3.z;
    x_188 = x_192;
  } else {
    let x_195 : f32 = x_44.unity_MatrixV[2i].z;
    x_188 = x_195;
  }
  let x_196 : f32 = x_188;
  u_xlat4.z = x_196;
  let x_199 : vec3<f32> = vs_TEXCOORD2;
  let x_200 : vec3<f32> = vs_TEXCOORD2;
  u_xlat66 = dot(x_199, x_200);
  let x_202 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat66;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_204, x_204, x_204) * x_206);
  let x_209 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres0;
  let x_219 : vec3<f32> = (x_209 + -(vec3<f32>(x_216.x, x_216.y, x_216.z)));
  let x_220 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec3<f32> = vs_TEXCOORD1;
  let x_225 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres1;
  let x_228 : vec3<f32> = (x_223 + -(vec3<f32>(x_225.x, x_225.y, x_225.z)));
  let x_229 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_235 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_232 + -(vec3<f32>(x_235.x, x_235.y, x_235.z)));
  let x_240 : vec3<f32> = vs_TEXCOORD1;
  let x_243 : vec4<f32> = x_214.x_CascadeShadowSplitSpheres3;
  let x_246 : vec3<f32> = (x_240 + -(vec3<f32>(x_243.x, x_243.y, x_243.z)));
  let x_247 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat5;
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_255 : vec4<f32> = u_xlat6;
  let x_257 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_261 : vec3<f32> = u_xlat7;
  let x_262 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_261, x_262);
  let x_265 : vec4<f32> = u_xlat8;
  let x_267 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_274 : vec4<f32> = u_xlat5;
  let x_277 : vec4<f32> = x_214.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_274 < x_277);
  let x_280 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_280);
  let x_284 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_284);
  let x_288 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_288);
  let x_292 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_292);
  let x_296 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_296);
  let x_302 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_302);
  let x_306 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_306);
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat6;
  let x_313 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + vec3<f32>(x_311.y, x_311.z, x_311.w));
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat5;
  let x_319 : vec3<f32> = max(vec3<f32>(x_316.x, x_316.y, x_316.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_320 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_320.x, x_319.x, x_319.y, x_319.z);
  let x_322 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_322, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_328 : f32 = u_xlat66;
  u_xlat66 = (-(x_328) + 4.0f);
  let x_333 : f32 = u_xlat66;
  u_xlatu66 = u32(x_333);
  let x_337 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_337) << bitcast<u32>(2i));
  let x_340 : vec3<f32> = vs_TEXCOORD1;
  let x_342 : i32 = u_xlati66;
  let x_345 : i32 = u_xlati66;
  let x_349 : vec4<f32> = x_214.x_MainLightWorldToShadow[((x_342 + 1i) / 4i)][((x_345 + 1i) % 4i)];
  let x_351 : vec3<f32> = (vec3<f32>(x_340.y, x_340.y, x_340.y) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : i32 = u_xlati66;
  let x_356 : i32 = u_xlati66;
  let x_359 : vec4<f32> = x_214.x_MainLightWorldToShadow[(x_354 / 4i)][(x_356 % 4i)];
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = u_xlat5;
  let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : i32 = u_xlati66;
  let x_372 : i32 = u_xlati66;
  let x_376 : vec4<f32> = x_214.x_MainLightWorldToShadow[((x_369 + 2i) / 4i)][((x_372 + 2i) % 4i)];
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_381 : vec4<f32> = u_xlat5;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.z, x_378.z, x_378.z)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : i32 = u_xlati66;
  let x_391 : i32 = u_xlati66;
  let x_395 : vec4<f32> = x_214.x_MainLightWorldToShadow[((x_388 + 3i) / 4i)][((x_391 + 3i) % 4i)];
  let x_397 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_406 : vec2<f32> = vs_TEXCOORD8;
  let x_408 : f32 = x_44.x_GlobalMipBias.x;
  let x_409 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_406, x_408);
  u_xlat6 = x_409;
  let x_414 : vec2<f32> = vs_TEXCOORD8;
  let x_416 : f32 = x_44.x_GlobalMipBias.x;
  let x_417 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_414, x_416);
  u_xlat7 = vec3<f32>(x_417.x, x_417.y, x_417.z);
  let x_419 : vec4<f32> = u_xlat6;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_424 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec3<f32> = u_xlat3;
  let x_427 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_426, vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : f32 = u_xlat66;
  u_xlat66 = (x_430 + 0.5f);
  let x_433 : f32 = u_xlat66;
  let x_435 : vec3<f32> = u_xlat7;
  let x_436 : vec3<f32> = (vec3<f32>(x_433, x_433, x_433) * x_435);
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : f32 = u_xlat6.w;
  u_xlat66 = max(x_440, 0.0001f);
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : f32 = u_xlat66;
  let x_447 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) / vec3<f32>(x_445, x_445, x_445));
  let x_448 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_452 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_453 : vec2<f32> = vec2<f32>(x_452.x, x_452.y);
  let x_457 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_453.x, x_453.y));
  let x_458 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_457.x, x_457.y, x_458.z);
  let x_460 : vec3<f32> = u_xlat7;
  let x_462 : vec4<f32> = hlslcc_FragCoord;
  let x_464 : vec2<f32> = (vec2<f32>(x_460.x, x_460.y) * vec2<f32>(x_462.x, x_462.y));
  let x_465 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_464.x, x_464.y, x_465.z);
  let x_468 : f32 = u_xlat7.y;
  let x_471 : f32 = x_44.x_ScaleBiasRt.x;
  let x_474 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat66 = ((x_468 * x_471) + x_474);
  let x_476 : f32 = u_xlat66;
  u_xlat7.z = (-(x_476) + 1.0f);
  let x_481 : f32 = x_57.x_Metallic;
  u_xlat66 = ((-(x_481) * 0.959999979f) + 0.959999979f);
  let x_486 : f32 = u_xlat66;
  let x_489 : f32 = x_57.x_Smoothness;
  u_xlat68 = (-(x_486) + x_489);
  let x_492 : f32 = u_xlat66;
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat23 = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_494.y, x_494.z, x_494.w));
  let x_497 : vec4<f32> = u_xlat0;
  let x_500 : vec4<f32> = x_57.x_BaseColor;
  let x_505 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_500.x, x_500.y, x_500.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_509 : f32 = x_57.x_Metallic;
  let x_511 : f32 = x_57.x_Metallic;
  let x_513 : f32 = x_57.x_Metallic;
  let x_514 : vec3<f32> = vec3<f32>(x_509, x_511, x_513);
  let x_519 : vec4<f32> = u_xlat0;
  let x_524 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(x_519.x, x_519.y, x_519.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_525 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_528 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat66;
  let x_533 : f32 = u_xlat66;
  u_xlat69 = (x_532 * x_533);
  let x_535 : f32 = u_xlat69;
  u_xlat69 = max(x_535, 0.0078125f);
  let x_539 : f32 = u_xlat69;
  let x_540 : f32 = u_xlat69;
  u_xlat70 = (x_539 * x_540);
  let x_542 : f32 = u_xlat68;
  u_xlat68 = (x_542 + 1.0f);
  let x_544 : f32 = u_xlat68;
  u_xlat68 = clamp(x_544, 0.0f, 1.0f);
  let x_547 : f32 = u_xlat69;
  u_xlat71 = ((x_547 * 4.0f) + 2.0f);
  let x_556 : vec3<f32> = u_xlat7;
  let x_559 : f32 = x_44.x_GlobalMipBias.x;
  let x_560 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_556.x, x_556.z), x_559);
  u_xlat72 = x_560.x;
  let x_562 : f32 = u_xlat72;
  u_xlat7.x = (x_562 + -1.0f);
  let x_566 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_568 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_566 * x_568) + 1.0f);
  let x_572 : f32 = u_xlat72;
  u_xlat72 = min(x_572, 1.0f);
  let x_578 : f32 = x_214.x_MainLightShadowParams.y;
  u_xlatb29.x = (0.0f < x_578);
  let x_582 : bool = u_xlatb29.x;
  if (x_582) {
    let x_586 : f32 = x_214.x_MainLightShadowParams.y;
    u_xlatb29.x = (x_586 == 1.0f);
    let x_590 : bool = u_xlatb29.x;
    if (x_590) {
      let x_593 : vec4<f32> = u_xlat5;
      let x_596 : vec4<f32> = x_214.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_593.x, x_593.y, x_593.x, x_593.y) + x_596);
      let x_599 : vec4<f32> = u_xlat8;
      let x_600 : vec2<f32> = vec2<f32>(x_599.x, x_599.y);
      let x_602 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_600.x, x_600.y, x_602);
      let x_615 : vec3<f32> = txVec0;
      let x_617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_615.xy, x_615.z);
      u_xlat9.x = x_617;
      let x_620 : vec4<f32> = u_xlat8;
      let x_621 : vec2<f32> = vec2<f32>(x_620.z, x_620.w);
      let x_623 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_621.x, x_621.y, x_623);
      let x_630 : vec3<f32> = txVec1;
      let x_632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_630.xy, x_630.z);
      u_xlat9.y = x_632;
      let x_634 : vec4<f32> = u_xlat5;
      let x_637 : vec4<f32> = x_214.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) + x_637);
      let x_640 : vec4<f32> = u_xlat8;
      let x_641 : vec2<f32> = vec2<f32>(x_640.x, x_640.y);
      let x_643 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_641.x, x_641.y, x_643);
      let x_650 : vec3<f32> = txVec2;
      let x_652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_650.xy, x_650.z);
      u_xlat9.z = x_652;
      let x_655 : vec4<f32> = u_xlat8;
      let x_656 : vec2<f32> = vec2<f32>(x_655.z, x_655.w);
      let x_658 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_656.x, x_656.y, x_658);
      let x_665 : vec3<f32> = txVec3;
      let x_667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_665.xy, x_665.z);
      u_xlat9.w = x_667;
      let x_670 : vec4<f32> = u_xlat9;
      u_xlat29.x = dot(x_670, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_678 : f32 = x_214.x_MainLightShadowParams.y;
      u_xlatb51 = (x_678 == 2.0f);
      let x_680 : bool = u_xlatb51;
      if (x_680) {
        let x_685 : vec4<f32> = u_xlat5;
        let x_688 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat51 = ((vec2<f32>(x_685.x, x_685.y) * vec2<f32>(x_688.z, x_688.w)) + vec2<f32>(0.5f, 0.5f));
        let x_693 : vec2<f32> = u_xlat51;
        u_xlat51 = floor(x_693);
        let x_695 : vec4<f32> = u_xlat5;
        let x_698 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_701 : vec2<f32> = u_xlat51;
        let x_703 : vec2<f32> = ((vec2<f32>(x_695.x, x_695.y) * vec2<f32>(x_698.z, x_698.w)) + -(x_701));
        let x_704 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_704.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_706.x, x_706.x, x_706.y, x_706.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_711 : vec4<f32> = u_xlat9;
        let x_713 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_711.x, x_711.x, x_711.z, x_711.z) * vec4<f32>(x_713.x, x_713.x, x_713.z, x_713.z));
        let x_717 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_717.y, x_717.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_722 : vec4<f32> = u_xlat10;
        let x_725 : vec4<f32> = u_xlat8;
        let x_728 : vec2<f32> = ((vec2<f32>(x_722.x, x_722.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_725.x, x_725.y)));
        let x_729 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_728.x, x_729.y, x_728.y, x_729.w);
        let x_731 : vec4<f32> = u_xlat8;
        let x_734 : vec2<f32> = (-(vec2<f32>(x_731.x, x_731.y)) + vec2<f32>(1.0f, 1.0f));
        let x_735 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_734.x, x_734.y, x_735.z, x_735.w);
        let x_738 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_738.x, x_738.y), vec2<f32>(0.0f, 0.0f));
        let x_742 : vec2<f32> = u_xlat54;
        let x_744 : vec2<f32> = u_xlat54;
        let x_746 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_742) * x_744) + vec2<f32>(x_746.x, x_746.y));
        let x_749 : vec4<f32> = u_xlat8;
        let x_751 : vec2<f32> = max(vec2<f32>(x_749.x, x_749.y), vec2<f32>(0.0f, 0.0f));
        let x_752 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat8;
        let x_757 : vec4<f32> = u_xlat8;
        let x_760 : vec4<f32> = u_xlat9;
        let x_762 : vec2<f32> = ((-(vec2<f32>(x_754.x, x_754.y)) * vec2<f32>(x_757.x, x_757.y)) + vec2<f32>(x_760.y, x_760.w));
        let x_763 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_765 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_765 + vec2<f32>(1.0f, 1.0f));
        let x_767 : vec4<f32> = u_xlat8;
        let x_769 : vec2<f32> = (vec2<f32>(x_767.x, x_767.y) + vec2<f32>(1.0f, 1.0f));
        let x_770 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_773 : vec4<f32> = u_xlat9;
        let x_777 : vec2<f32> = (vec2<f32>(x_773.x, x_773.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_778 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
        let x_781 : vec4<f32> = u_xlat10;
        let x_783 : vec2<f32> = (vec2<f32>(x_781.x, x_781.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_784 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : vec2<f32> = u_xlat54;
        let x_787 : vec2<f32> = (x_786 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_788 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_791 : vec4<f32> = u_xlat8;
        let x_793 : vec2<f32> = (vec2<f32>(x_791.x, x_791.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_794 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_793.x, x_793.y, x_794.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat9;
        let x_798 : vec2<f32> = (vec2<f32>(x_796.y, x_796.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_799 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
        let x_802 : f32 = u_xlat10.x;
        u_xlat11.z = x_802;
        let x_805 : f32 = u_xlat8.x;
        u_xlat11.w = x_805;
        let x_808 : f32 = u_xlat13.x;
        u_xlat12.z = x_808;
        let x_811 : f32 = u_xlat52.x;
        u_xlat12.w = x_811;
        let x_813 : vec4<f32> = u_xlat11;
        let x_815 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_813.z, x_813.w, x_813.x, x_813.z) + vec4<f32>(x_815.z, x_815.w, x_815.x, x_815.z));
        let x_819 : f32 = u_xlat11.y;
        u_xlat10.z = x_819;
        let x_822 : f32 = u_xlat8.y;
        u_xlat10.w = x_822;
        let x_825 : f32 = u_xlat12.y;
        u_xlat13.z = x_825;
        let x_828 : f32 = u_xlat52.y;
        u_xlat13.w = x_828;
        let x_830 : vec4<f32> = u_xlat10;
        let x_832 : vec4<f32> = u_xlat13;
        let x_834 : vec3<f32> = (vec3<f32>(x_830.z, x_830.y, x_830.w) + vec3<f32>(x_832.z, x_832.y, x_832.w));
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat12;
        let x_839 : vec4<f32> = u_xlat9;
        let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.z, x_837.w) / vec3<f32>(x_839.z, x_839.w, x_839.y));
        let x_842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat10;
        let x_849 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_850 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
        let x_852 : vec4<f32> = u_xlat13;
        let x_854 : vec4<f32> = u_xlat8;
        let x_856 : vec3<f32> = (vec3<f32>(x_852.z, x_852.y, x_852.w) / vec3<f32>(x_854.x, x_854.y, x_854.z));
        let x_857 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
        let x_859 : vec4<f32> = u_xlat11;
        let x_861 : vec3<f32> = (vec3<f32>(x_859.x, x_859.y, x_859.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat10;
        let x_867 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_869 : vec3<f32> = (vec3<f32>(x_864.y, x_864.x, x_864.z) * vec3<f32>(x_867.x, x_867.x, x_867.x));
        let x_870 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
        let x_872 : vec4<f32> = u_xlat11;
        let x_875 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_877 : vec3<f32> = (vec3<f32>(x_872.x, x_872.y, x_872.z) * vec3<f32>(x_875.y, x_875.y, x_875.y));
        let x_878 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
        let x_881 : f32 = u_xlat11.x;
        u_xlat10.w = x_881;
        let x_883 : vec2<f32> = u_xlat51;
        let x_886 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_889 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_883.x, x_883.y, x_883.x, x_883.y) * vec4<f32>(x_886.x, x_886.y, x_886.x, x_886.y)) + vec4<f32>(x_889.y, x_889.w, x_889.x, x_889.w));
        let x_892 : vec2<f32> = u_xlat51;
        let x_894 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_897 : vec4<f32> = u_xlat10;
        let x_899 : vec2<f32> = ((x_892 * vec2<f32>(x_894.x, x_894.y)) + vec2<f32>(x_897.z, x_897.w));
        let x_900 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
        let x_903 : f32 = u_xlat10.y;
        u_xlat11.w = x_903;
        let x_905 : vec4<f32> = u_xlat11;
        let x_906 : vec2<f32> = vec2<f32>(x_905.y, x_905.z);
        let x_907 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_907.x, x_906.x, x_907.z, x_906.y);
        let x_910 : vec2<f32> = u_xlat51;
        let x_913 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_916 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_910.x, x_910.y, x_910.x, x_910.y) * vec4<f32>(x_913.x, x_913.y, x_913.x, x_913.y)) + vec4<f32>(x_916.x, x_916.y, x_916.z, x_916.y));
        let x_919 : vec2<f32> = u_xlat51;
        let x_922 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_925 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_919.x, x_919.y, x_919.x, x_919.y) * vec4<f32>(x_922.x, x_922.y, x_922.x, x_922.y)) + vec4<f32>(x_925.w, x_925.y, x_925.w, x_925.z));
        let x_928 : vec2<f32> = u_xlat51;
        let x_931 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_934 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_928.x, x_928.y, x_928.x, x_928.y) * vec4<f32>(x_931.x, x_931.y, x_931.x, x_931.y)) + vec4<f32>(x_934.x, x_934.w, x_934.z, x_934.w));
        let x_938 : vec4<f32> = u_xlat8;
        let x_940 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_938.x, x_938.x, x_938.x, x_938.y) * vec4<f32>(x_940.z, x_940.w, x_940.y, x_940.z));
        let x_944 : vec4<f32> = u_xlat8;
        let x_946 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_944.y, x_944.y, x_944.z, x_944.z) * x_946);
        let x_949 : f32 = u_xlat8.z;
        let x_951 : f32 = u_xlat9.y;
        u_xlat51.x = (x_949 * x_951);
        let x_955 : vec4<f32> = u_xlat12;
        let x_956 : vec2<f32> = vec2<f32>(x_955.x, x_955.y);
        let x_958 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_956.x, x_956.y, x_958);
        let x_966 : vec3<f32> = txVec4;
        let x_968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_966.xy, x_966.z);
        u_xlat73 = x_968;
        let x_970 : vec4<f32> = u_xlat12;
        let x_971 : vec2<f32> = vec2<f32>(x_970.z, x_970.w);
        let x_973 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_971.x, x_971.y, x_973);
        let x_980 : vec3<f32> = txVec5;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_980.xy, x_980.z);
        u_xlat8.x = x_982;
        let x_985 : f32 = u_xlat8.x;
        let x_987 : f32 = u_xlat15.y;
        u_xlat8.x = (x_985 * x_987);
        let x_991 : f32 = u_xlat15.x;
        let x_992 : f32 = u_xlat73;
        let x_995 : f32 = u_xlat8.x;
        u_xlat73 = ((x_991 * x_992) + x_995);
        let x_998 : vec4<f32> = u_xlat13;
        let x_999 : vec2<f32> = vec2<f32>(x_998.x, x_998.y);
        let x_1001 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_999.x, x_999.y, x_1001);
        let x_1008 : vec3<f32> = txVec6;
        let x_1010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1008.xy, x_1008.z);
        u_xlat8.x = x_1010;
        let x_1013 : f32 = u_xlat15.z;
        let x_1015 : f32 = u_xlat8.x;
        let x_1017 : f32 = u_xlat73;
        u_xlat73 = ((x_1013 * x_1015) + x_1017);
        let x_1020 : vec4<f32> = u_xlat11;
        let x_1021 : vec2<f32> = vec2<f32>(x_1020.x, x_1020.y);
        let x_1023 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1021.x, x_1021.y, x_1023);
        let x_1030 : vec3<f32> = txVec7;
        let x_1032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1030.xy, x_1030.z);
        u_xlat8.x = x_1032;
        let x_1035 : f32 = u_xlat15.w;
        let x_1037 : f32 = u_xlat8.x;
        let x_1039 : f32 = u_xlat73;
        u_xlat73 = ((x_1035 * x_1037) + x_1039);
        let x_1042 : vec4<f32> = u_xlat14;
        let x_1043 : vec2<f32> = vec2<f32>(x_1042.x, x_1042.y);
        let x_1045 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1043.x, x_1043.y, x_1045);
        let x_1052 : vec3<f32> = txVec8;
        let x_1054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1052.xy, x_1052.z);
        u_xlat8.x = x_1054;
        let x_1057 : f32 = u_xlat16.x;
        let x_1059 : f32 = u_xlat8.x;
        let x_1061 : f32 = u_xlat73;
        u_xlat73 = ((x_1057 * x_1059) + x_1061);
        let x_1064 : vec4<f32> = u_xlat14;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.z, x_1064.w);
        let x_1067 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec9;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1074.xy, x_1074.z);
        u_xlat8.x = x_1076;
        let x_1079 : f32 = u_xlat16.y;
        let x_1081 : f32 = u_xlat8.x;
        let x_1083 : f32 = u_xlat73;
        u_xlat73 = ((x_1079 * x_1081) + x_1083);
        let x_1086 : vec4<f32> = u_xlat11;
        let x_1087 : vec2<f32> = vec2<f32>(x_1086.z, x_1086.w);
        let x_1089 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1087.x, x_1087.y, x_1089);
        let x_1096 : vec3<f32> = txVec10;
        let x_1098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1096.xy, x_1096.z);
        u_xlat8.x = x_1098;
        let x_1101 : f32 = u_xlat16.z;
        let x_1103 : f32 = u_xlat8.x;
        let x_1105 : f32 = u_xlat73;
        u_xlat73 = ((x_1101 * x_1103) + x_1105);
        let x_1108 : vec4<f32> = u_xlat10;
        let x_1109 : vec2<f32> = vec2<f32>(x_1108.x, x_1108.y);
        let x_1111 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1109.x, x_1109.y, x_1111);
        let x_1118 : vec3<f32> = txVec11;
        let x_1120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1118.xy, x_1118.z);
        u_xlat8.x = x_1120;
        let x_1123 : f32 = u_xlat16.w;
        let x_1125 : f32 = u_xlat8.x;
        let x_1127 : f32 = u_xlat73;
        u_xlat73 = ((x_1123 * x_1125) + x_1127);
        let x_1130 : vec4<f32> = u_xlat10;
        let x_1131 : vec2<f32> = vec2<f32>(x_1130.z, x_1130.w);
        let x_1133 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1131.x, x_1131.y, x_1133);
        let x_1140 : vec3<f32> = txVec12;
        let x_1142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1140.xy, x_1140.z);
        u_xlat8.x = x_1142;
        let x_1145 : f32 = u_xlat51.x;
        let x_1147 : f32 = u_xlat8.x;
        let x_1149 : f32 = u_xlat73;
        u_xlat29.x = ((x_1145 * x_1147) + x_1149);
      } else {
        let x_1153 : vec4<f32> = u_xlat5;
        let x_1156 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat51 = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.z, x_1156.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1160 : vec2<f32> = u_xlat51;
        u_xlat51 = floor(x_1160);
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1165 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1168 : vec2<f32> = u_xlat51;
        let x_1170 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.z, x_1165.w)) + -(x_1168));
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1170.y, x_1171.z, x_1171.w);
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1173.x, x_1173.x, x_1173.y, x_1173.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1176.x, x_1176.x, x_1176.z, x_1176.z) * vec4<f32>(x_1178.x, x_1178.x, x_1178.z, x_1178.z));
        let x_1181 : vec4<f32> = u_xlat10;
        let x_1185 : vec2<f32> = (vec2<f32>(x_1181.y, x_1181.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1186 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1186.x, x_1185.x, x_1186.z, x_1185.y);
        let x_1188 : vec4<f32> = u_xlat10;
        let x_1191 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1188.x, x_1188.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1191.x, x_1191.y)));
        let x_1195 : vec4<f32> = u_xlat8;
        let x_1198 : vec2<f32> = (-(vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1199 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1198.x, x_1199.y, x_1198.y, x_1199.w);
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1203 : vec2<f32> = min(vec2<f32>(x_1201.x, x_1201.y), vec2<f32>(0.0f, 0.0f));
        let x_1204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
        let x_1206 : vec4<f32> = u_xlat10;
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1214 : vec2<f32> = ((-(vec2<f32>(x_1206.x, x_1206.y)) * vec2<f32>(x_1209.x, x_1209.y)) + vec2<f32>(x_1212.x, x_1212.z));
        let x_1215 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1214.x, x_1215.y, x_1214.y, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat8;
        let x_1219 : vec2<f32> = max(vec2<f32>(x_1217.x, x_1217.y), vec2<f32>(0.0f, 0.0f));
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
        let x_1222 : vec4<f32> = u_xlat10;
        let x_1225 : vec4<f32> = u_xlat10;
        let x_1228 : vec4<f32> = u_xlat9;
        let x_1230 : vec2<f32> = ((-(vec2<f32>(x_1222.x, x_1222.y)) * vec2<f32>(x_1225.x, x_1225.y)) + vec2<f32>(x_1228.y, x_1228.w));
        let x_1231 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1231.x, x_1230.x, x_1231.z, x_1230.y);
        let x_1233 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1233 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1237 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1237 * 0.081632003f);
        let x_1241 : vec2<f32> = u_xlat52;
        let x_1244 : vec2<f32> = (vec2<f32>(x_1241.y, x_1241.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1245 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1244.x, x_1244.y, x_1245.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1247.x, x_1247.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1251 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1251 * 0.081632003f);
        let x_1255 : f32 = u_xlat12.y;
        u_xlat10.x = x_1255;
        let x_1257 : vec4<f32> = u_xlat8;
        let x_1264 : vec2<f32> = ((vec2<f32>(x_1257.x, x_1257.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1265 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1265.x, x_1264.x, x_1265.z, x_1264.y);
        let x_1267 : vec4<f32> = u_xlat8;
        let x_1271 : vec2<f32> = ((vec2<f32>(x_1267.x, x_1267.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1272 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1271.x, x_1272.y, x_1271.y, x_1272.w);
        let x_1275 : f32 = u_xlat52.x;
        u_xlat9.y = x_1275;
        let x_1278 : f32 = u_xlat11.y;
        u_xlat9.w = x_1278;
        let x_1280 : vec4<f32> = u_xlat9;
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1280 + x_1281);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1286 : vec2<f32> = ((vec2<f32>(x_1283.y, x_1283.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1287 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1287.x, x_1286.x, x_1287.z, x_1286.y);
        let x_1289 : vec4<f32> = u_xlat8;
        let x_1292 : vec2<f32> = ((vec2<f32>(x_1289.y, x_1289.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1293 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1292.x, x_1293.y, x_1292.y, x_1293.w);
        let x_1296 : f32 = u_xlat52.y;
        u_xlat11.y = x_1296;
        let x_1298 : vec4<f32> = u_xlat11;
        let x_1299 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1298 + x_1299);
        let x_1301 : vec4<f32> = u_xlat9;
        let x_1302 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1301 / x_1302);
        let x_1304 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1304 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1310 : vec4<f32> = u_xlat11;
        let x_1311 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1310 / x_1311);
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1313 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1315 : vec4<f32> = u_xlat9;
        let x_1318 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1315.w, x_1315.x, x_1315.y, x_1315.z) * vec4<f32>(x_1318.x, x_1318.x, x_1318.x, x_1318.x));
        let x_1321 : vec4<f32> = u_xlat11;
        let x_1324 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1321.x, x_1321.w, x_1321.y, x_1321.z) * vec4<f32>(x_1324.y, x_1324.y, x_1324.y, x_1324.y));
        let x_1327 : vec4<f32> = u_xlat9;
        let x_1328 : vec3<f32> = vec3<f32>(x_1327.y, x_1327.z, x_1327.w);
        let x_1329 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1328.x, x_1329.y, x_1328.y, x_1328.z);
        let x_1332 : f32 = u_xlat11.x;
        u_xlat12.y = x_1332;
        let x_1334 : vec2<f32> = u_xlat51;
        let x_1337 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1340 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y) * vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.y)) + vec4<f32>(x_1340.x, x_1340.y, x_1340.z, x_1340.y));
        let x_1343 : vec2<f32> = u_xlat51;
        let x_1345 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1348 : vec4<f32> = u_xlat12;
        let x_1350 : vec2<f32> = ((x_1343 * vec2<f32>(x_1345.x, x_1345.y)) + vec2<f32>(x_1348.w, x_1348.y));
        let x_1351 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1354 : f32 = u_xlat12.y;
        u_xlat9.y = x_1354;
        let x_1357 : f32 = u_xlat11.z;
        u_xlat12.y = x_1357;
        let x_1359 : vec2<f32> = u_xlat51;
        let x_1362 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1365.y));
        let x_1369 : vec2<f32> = u_xlat51;
        let x_1371 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1374 : vec4<f32> = u_xlat12;
        u_xlat58 = ((x_1369 * vec2<f32>(x_1371.x, x_1371.y)) + vec2<f32>(x_1374.w, x_1374.y));
        let x_1378 : f32 = u_xlat12.y;
        u_xlat9.z = x_1378;
        let x_1380 : vec2<f32> = u_xlat51;
        let x_1383 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1386 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1380.x, x_1380.y, x_1380.x, x_1380.y) * vec4<f32>(x_1383.x, x_1383.y, x_1383.x, x_1383.y)) + vec4<f32>(x_1386.x, x_1386.y, x_1386.x, x_1386.z));
        let x_1390 : f32 = u_xlat11.w;
        u_xlat12.y = x_1390;
        let x_1393 : vec2<f32> = u_xlat51;
        let x_1396 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1399 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y) * vec4<f32>(x_1396.x, x_1396.y, x_1396.x, x_1396.y)) + vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1399.y));
        let x_1403 : vec2<f32> = u_xlat51;
        let x_1405 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat12;
        let x_1410 : vec2<f32> = ((x_1403 * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1408.w, x_1408.y));
        let x_1411 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1410.x, x_1410.y, x_1411.z);
        let x_1414 : f32 = u_xlat12.y;
        u_xlat9.w = x_1414;
        let x_1417 : vec2<f32> = u_xlat51;
        let x_1419 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1422 : vec4<f32> = u_xlat9;
        u_xlat18 = ((x_1417 * vec2<f32>(x_1419.x, x_1419.y)) + vec2<f32>(x_1422.x, x_1422.w));
        let x_1425 : vec4<f32> = u_xlat12;
        let x_1426 : vec3<f32> = vec3<f32>(x_1425.x, x_1425.z, x_1425.w);
        let x_1427 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1426.x, x_1427.y, x_1426.y, x_1426.z);
        let x_1429 : vec2<f32> = u_xlat51;
        let x_1432 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1429.x, x_1429.y, x_1429.x, x_1429.y) * vec4<f32>(x_1432.x, x_1432.y, x_1432.x, x_1432.y)) + vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1435.y));
        let x_1439 : vec2<f32> = u_xlat51;
        let x_1441 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1439 * vec2<f32>(x_1441.x, x_1441.y)) + vec2<f32>(x_1444.w, x_1444.y));
        let x_1448 : f32 = u_xlat9.x;
        u_xlat11.x = x_1448;
        let x_1450 : vec2<f32> = u_xlat51;
        let x_1452 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1455 : vec4<f32> = u_xlat11;
        u_xlat51 = ((x_1450 * vec2<f32>(x_1452.x, x_1452.y)) + vec2<f32>(x_1455.x, x_1455.y));
        let x_1459 : vec4<f32> = u_xlat8;
        let x_1461 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1459.x, x_1459.x, x_1459.x, x_1459.x) * x_1461);
        let x_1464 : vec4<f32> = u_xlat8;
        let x_1466 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1464.y, x_1464.y, x_1464.y, x_1464.y) * x_1466);
        let x_1469 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1469.z, x_1469.z, x_1469.z, x_1469.z) * x_1471);
        let x_1473 : vec4<f32> = u_xlat8;
        let x_1475 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1473.w, x_1473.w, x_1473.w, x_1473.w) * x_1475);
        let x_1478 : vec4<f32> = u_xlat13;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec13;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat9.x = x_1490;
        let x_1493 : vec4<f32> = u_xlat13;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.z, x_1493.w);
        let x_1496 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1504 : vec3<f32> = txVec14;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat75 = x_1506;
        let x_1507 : f32 = u_xlat75;
        let x_1509 : f32 = u_xlat19.y;
        u_xlat75 = (x_1507 * x_1509);
        let x_1512 : f32 = u_xlat19.x;
        let x_1514 : f32 = u_xlat9.x;
        let x_1516 : f32 = u_xlat75;
        u_xlat9.x = ((x_1512 * x_1514) + x_1516);
        let x_1520 : vec4<f32> = u_xlat14;
        let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
        let x_1523 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
        let x_1530 : vec3<f32> = txVec15;
        let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
        u_xlat75 = x_1532;
        let x_1534 : f32 = u_xlat19.z;
        let x_1535 : f32 = u_xlat75;
        let x_1538 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1534 * x_1535) + x_1538);
        let x_1542 : vec4<f32> = u_xlat16;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
        let x_1545 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec16;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1552.xy, x_1552.z);
        u_xlat75 = x_1554;
        let x_1556 : f32 = u_xlat19.w;
        let x_1557 : f32 = u_xlat75;
        let x_1560 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1556 * x_1557) + x_1560);
        let x_1564 : vec4<f32> = u_xlat15;
        let x_1565 : vec2<f32> = vec2<f32>(x_1564.x, x_1564.y);
        let x_1567 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec17;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1574.xy, x_1574.z);
        u_xlat75 = x_1576;
        let x_1578 : f32 = u_xlat20.x;
        let x_1579 : f32 = u_xlat75;
        let x_1582 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1578 * x_1579) + x_1582);
        let x_1586 : vec4<f32> = u_xlat15;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.z, x_1586.w);
        let x_1589 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec18;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1596.xy, x_1596.z);
        u_xlat75 = x_1598;
        let x_1600 : f32 = u_xlat20.y;
        let x_1601 : f32 = u_xlat75;
        let x_1604 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1600 * x_1601) + x_1604);
        let x_1608 : vec2<f32> = u_xlat58;
        let x_1610 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec19;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat75 = x_1619;
        let x_1621 : f32 = u_xlat20.z;
        let x_1622 : f32 = u_xlat75;
        let x_1625 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1621 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat16;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.z, x_1629.w);
        let x_1632 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec20;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat75 = x_1641;
        let x_1643 : f32 = u_xlat20.w;
        let x_1644 : f32 = u_xlat75;
        let x_1647 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1643 * x_1644) + x_1647);
        let x_1651 : vec4<f32> = u_xlat17;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
        let x_1654 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec21;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat75 = x_1663;
        let x_1665 : f32 = u_xlat21.x;
        let x_1666 : f32 = u_xlat75;
        let x_1669 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1665 * x_1666) + x_1669);
        let x_1673 : vec4<f32> = u_xlat17;
        let x_1674 : vec2<f32> = vec2<f32>(x_1673.z, x_1673.w);
        let x_1676 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1674.x, x_1674.y, x_1676);
        let x_1683 : vec3<f32> = txVec22;
        let x_1685 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1683.xy, x_1683.z);
        u_xlat75 = x_1685;
        let x_1687 : f32 = u_xlat21.y;
        let x_1688 : f32 = u_xlat75;
        let x_1691 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1687 * x_1688) + x_1691);
        let x_1695 : vec3<f32> = u_xlat31;
        let x_1696 : vec2<f32> = vec2<f32>(x_1695.x, x_1695.y);
        let x_1698 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1696.x, x_1696.y, x_1698);
        let x_1705 : vec3<f32> = txVec23;
        let x_1707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1705.xy, x_1705.z);
        u_xlat31.x = x_1707;
        let x_1710 : f32 = u_xlat21.z;
        let x_1712 : f32 = u_xlat31.x;
        let x_1715 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1710 * x_1712) + x_1715);
        let x_1719 : vec2<f32> = u_xlat18;
        let x_1721 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec24;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
        u_xlat31.x = x_1730;
        let x_1733 : f32 = u_xlat21.w;
        let x_1735 : f32 = u_xlat31.x;
        let x_1738 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1733 * x_1735) + x_1738);
        let x_1742 : vec4<f32> = u_xlat12;
        let x_1743 : vec2<f32> = vec2<f32>(x_1742.x, x_1742.y);
        let x_1745 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1752 : vec3<f32> = txVec25;
        let x_1754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1752.xy, x_1752.z);
        u_xlat31.x = x_1754;
        let x_1757 : f32 = u_xlat8.x;
        let x_1759 : f32 = u_xlat31.x;
        let x_1762 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_1757 * x_1759) + x_1762);
        let x_1766 : vec4<f32> = u_xlat12;
        let x_1767 : vec2<f32> = vec2<f32>(x_1766.z, x_1766.w);
        let x_1769 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1767.x, x_1767.y, x_1769);
        let x_1776 : vec3<f32> = txVec26;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1776.xy, x_1776.z);
        u_xlat9.x = x_1778;
        let x_1781 : f32 = u_xlat8.y;
        let x_1783 : f32 = u_xlat9.x;
        let x_1786 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1781 * x_1783) + x_1786);
        let x_1790 : vec2<f32> = u_xlat55;
        let x_1792 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1790.x, x_1790.y, x_1792);
        let x_1800 : vec3<f32> = txVec27;
        let x_1802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1800.xy, x_1800.z);
        u_xlat30 = x_1802;
        let x_1804 : f32 = u_xlat8.z;
        let x_1805 : f32 = u_xlat30;
        let x_1808 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1804 * x_1805) + x_1808);
        let x_1812 : vec2<f32> = u_xlat51;
        let x_1814 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1812.x, x_1812.y, x_1814);
        let x_1821 : vec3<f32> = txVec28;
        let x_1823 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1821.xy, x_1821.z);
        u_xlat51.x = x_1823;
        let x_1826 : f32 = u_xlat8.w;
        let x_1828 : f32 = u_xlat51.x;
        let x_1831 : f32 = u_xlat8.x;
        u_xlat29.x = ((x_1826 * x_1828) + x_1831);
      }
    }
  } else {
    let x_1836 : vec4<f32> = u_xlat5;
    let x_1837 : vec2<f32> = vec2<f32>(x_1836.x, x_1836.y);
    let x_1839 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1837.x, x_1837.y, x_1839);
    let x_1846 : vec3<f32> = txVec29;
    let x_1848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1846.xy, x_1846.z);
    u_xlat29.x = x_1848;
  }
  let x_1851 : f32 = x_214.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1851) + 1.0f);
  let x_1856 : f32 = u_xlat29.x;
  let x_1858 : f32 = x_214.x_MainLightShadowParams.x;
  let x_1861 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1856 * x_1858) + x_1861);
  let x_1866 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1866);
  let x_1871 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1871 >= 1.0f);
  let x_1873 : bool = u_xlatb49;
  let x_1875 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1873 | x_1875);
  let x_1879 : bool = u_xlatb27.x;
  if (x_1879) {
    x_1880 = 1.0f;
  } else {
    let x_1885 : f32 = u_xlat5.x;
    x_1880 = x_1885;
  }
  let x_1886 : f32 = x_1880;
  u_xlat5.x = x_1886;
  let x_1888 : vec3<f32> = vs_TEXCOORD1;
  let x_1890 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat29 = (x_1888 + -(x_1890));
  let x_1894 : vec3<f32> = u_xlat29;
  let x_1895 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1894, x_1895);
  let x_1899 : f32 = u_xlat27.x;
  let x_1901 : f32 = x_214.x_MainLightShadowParams.z;
  let x_1904 : f32 = x_214.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1899 * x_1901) + x_1904);
  let x_1908 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1908, 0.0f, 1.0f);
  let x_1913 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1913) + 1.0f);
  let x_1917 : f32 = u_xlat27.x;
  let x_1918 : f32 = u_xlat49;
  let x_1921 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1917 * x_1918) + x_1921);
  let x_1930 : f32 = x_1928.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1930 == -1.0f));
  let x_1934 : bool = u_xlatb27.x;
  if (x_1934) {
    let x_1937 : vec3<f32> = vs_TEXCOORD1;
    let x_1940 : vec4<f32> = x_1928.x_MainLightWorldToLight[1i];
    u_xlat27 = (vec2<f32>(x_1937.y, x_1937.y) * vec2<f32>(x_1940.x, x_1940.y));
    let x_1944 : vec4<f32> = x_1928.x_MainLightWorldToLight[0i];
    let x_1946 : vec3<f32> = vs_TEXCOORD1;
    let x_1949 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1944.x, x_1944.y) * vec2<f32>(x_1946.x, x_1946.x)) + x_1949);
    let x_1952 : vec4<f32> = x_1928.x_MainLightWorldToLight[2i];
    let x_1954 : vec3<f32> = vs_TEXCOORD1;
    let x_1957 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1952.x, x_1952.y) * vec2<f32>(x_1954.z, x_1954.z)) + x_1957);
    let x_1959 : vec2<f32> = u_xlat27;
    let x_1961 : vec4<f32> = x_1928.x_MainLightWorldToLight[3i];
    u_xlat27 = (x_1959 + vec2<f32>(x_1961.x, x_1961.y));
    let x_1964 : vec2<f32> = u_xlat27;
    u_xlat27 = ((x_1964 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1972 : vec2<f32> = u_xlat27;
    let x_1974 : f32 = x_44.x_GlobalMipBias.x;
    let x_1975 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1972, x_1974);
    u_xlat8 = x_1975;
    let x_1977 : f32 = x_1928.x_MainLightCookieTextureFormat;
    let x_1979 : f32 = x_1928.x_MainLightCookieTextureFormat;
    let x_1981 : f32 = x_1928.x_MainLightCookieTextureFormat;
    let x_1983 : f32 = x_1928.x_MainLightCookieTextureFormat;
    let x_1984 : vec4<f32> = vec4<f32>(x_1977, x_1979, x_1981, x_1983);
    let x_1991 : vec4<bool> = (vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1984.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1991.x, x_1991.y);
    let x_1994 : bool = u_xlatb27.y;
    if (x_1994) {
      let x_1999 : f32 = u_xlat8.w;
      x_1995 = x_1999;
    } else {
      let x_2002 : f32 = u_xlat8.x;
      x_1995 = x_2002;
    }
    let x_2003 : f32 = x_1995;
    u_xlat49 = x_2003;
    let x_2005 : bool = u_xlatb27.x;
    if (x_2005) {
      let x_2009 : vec4<f32> = u_xlat8;
      x_2006 = vec3<f32>(x_2009.x, x_2009.y, x_2009.z);
    } else {
      let x_2012 : f32 = u_xlat49;
      x_2006 = vec3<f32>(x_2012, x_2012, x_2012);
    }
    let x_2014 : vec3<f32> = x_2006;
    u_xlat29 = x_2014;
  } else {
    u_xlat29.x = 1.0f;
    u_xlat29.y = 1.0f;
    u_xlat29.z = 1.0f;
  }
  let x_2019 : vec3<f32> = u_xlat29;
  let x_2021 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat29 = (x_2019 * vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
  let x_2024 : vec3<f32> = u_xlat7;
  let x_2026 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2024.x, x_2024.x, x_2024.x) * x_2026);
  let x_2028 : vec3<f32> = u_xlat4;
  let x_2030 : vec3<f32> = u_xlat3;
  u_xlat27.x = dot(-(x_2028), x_2030);
  let x_2034 : f32 = u_xlat27.x;
  let x_2036 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2034 + x_2036);
  let x_2039 : vec3<f32> = u_xlat3;
  let x_2040 : vec2<f32> = u_xlat27;
  let x_2044 : vec3<f32> = u_xlat4;
  let x_2046 : vec3<f32> = ((x_2039 * -(vec3<f32>(x_2040.x, x_2040.x, x_2040.x))) + -(x_2044));
  let x_2047 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2046.x, x_2046.y, x_2046.z, x_2047.w);
  let x_2049 : vec3<f32> = u_xlat3;
  let x_2050 : vec3<f32> = u_xlat4;
  u_xlat27.x = dot(x_2049, x_2050);
  let x_2054 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2054, 0.0f, 1.0f);
  let x_2058 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_2058) + 1.0f);
  let x_2063 : f32 = u_xlat27.x;
  let x_2065 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2063 * x_2065);
  let x_2069 : f32 = u_xlat27.x;
  let x_2071 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2069 * x_2071);
  let x_2074 : f32 = u_xlat66;
  u_xlat49 = ((-(x_2074) * 0.699999988f) + 1.700000048f);
  let x_2080 : f32 = u_xlat66;
  let x_2081 : f32 = u_xlat49;
  u_xlat66 = (x_2080 * x_2081);
  let x_2083 : f32 = u_xlat66;
  u_xlat66 = (x_2083 * 6.0f);
  let x_2094 : vec4<f32> = u_xlat8;
  let x_2096 : f32 = u_xlat66;
  let x_2097 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2094.x, x_2094.y, x_2094.z), x_2096);
  u_xlat8 = x_2097;
  let x_2099 : f32 = u_xlat8.w;
  u_xlat66 = (x_2099 + -1.0f);
  let x_2102 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_2103 : f32 = u_xlat66;
  u_xlat66 = ((x_2102 * x_2103) + 1.0f);
  let x_2106 : f32 = u_xlat66;
  u_xlat66 = max(x_2106, 0.0f);
  let x_2108 : f32 = u_xlat66;
  u_xlat66 = log2(x_2108);
  let x_2110 : f32 = u_xlat66;
  let x_2112 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat66 = (x_2110 * x_2112);
  let x_2114 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2114);
  let x_2116 : f32 = u_xlat66;
  let x_2118 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat66 = (x_2116 * x_2118);
  let x_2120 : vec4<f32> = u_xlat8;
  let x_2122 : f32 = u_xlat66;
  let x_2124 : vec3<f32> = (vec3<f32>(x_2120.x, x_2120.y, x_2120.z) * vec3<f32>(x_2122, x_2122, x_2122));
  let x_2125 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  let x_2127 : f32 = u_xlat69;
  let x_2129 : f32 = u_xlat69;
  let x_2133 : vec2<f32> = ((vec2<f32>(x_2127, x_2127) * vec2<f32>(x_2129, x_2129)) + vec2<f32>(-1.0f, 1.0f));
  let x_2134 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2133.x, x_2133.y, x_2134.z, x_2134.w);
  let x_2137 : f32 = u_xlat9.y;
  u_xlat66 = (1.0f / x_2137);
  let x_2139 : vec4<f32> = u_xlat0;
  let x_2142 : f32 = u_xlat68;
  u_xlat31 = (-(vec3<f32>(x_2139.x, x_2139.y, x_2139.z)) + vec3<f32>(x_2142, x_2142, x_2142));
  let x_2145 : vec2<f32> = u_xlat27;
  let x_2147 : vec3<f32> = u_xlat31;
  let x_2149 : vec4<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2145.x, x_2145.x, x_2145.x) * x_2147) + vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2152 : f32 = u_xlat66;
  let x_2154 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2152, x_2152, x_2152) * x_2154);
  let x_2156 : vec4<f32> = u_xlat8;
  let x_2158 : vec3<f32> = u_xlat31;
  let x_2159 : vec3<f32> = (vec3<f32>(x_2156.x, x_2156.y, x_2156.z) * x_2158);
  let x_2160 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
  let x_2162 : vec4<f32> = u_xlat6;
  let x_2164 : vec3<f32> = u_xlat23;
  let x_2166 : vec4<f32> = u_xlat8;
  let x_2168 : vec3<f32> = ((vec3<f32>(x_2162.x, x_2162.y, x_2162.z) * x_2164) + vec3<f32>(x_2166.x, x_2166.y, x_2166.z));
  let x_2169 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2168.x, x_2168.y, x_2168.z, x_2169.w);
  let x_2172 : f32 = u_xlat5.x;
  let x_2174 : f32 = x_106.unity_LightData.z;
  u_xlat66 = (x_2172 * x_2174);
  let x_2176 : vec3<f32> = u_xlat3;
  let x_2178 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat68 = dot(x_2176, vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
  let x_2181 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2181, 0.0f, 1.0f);
  let x_2183 : f32 = u_xlat66;
  let x_2184 : f32 = u_xlat68;
  u_xlat66 = (x_2183 * x_2184);
  let x_2186 : f32 = u_xlat66;
  let x_2188 : vec3<f32> = u_xlat29;
  let x_2189 : vec3<f32> = (vec3<f32>(x_2186, x_2186, x_2186) * x_2188);
  let x_2190 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);
  let x_2192 : vec3<f32> = u_xlat4;
  let x_2194 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = (x_2192 + vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2197 : vec3<f32> = u_xlat29;
  let x_2198 : vec3<f32> = u_xlat29;
  u_xlat66 = dot(x_2197, x_2198);
  let x_2200 : f32 = u_xlat66;
  u_xlat66 = max(x_2200, 1.17549435e-37f);
  let x_2203 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_2203);
  let x_2205 : f32 = u_xlat66;
  let x_2207 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2205, x_2205, x_2205) * x_2207);
  let x_2209 : vec3<f32> = u_xlat3;
  let x_2210 : vec3<f32> = u_xlat29;
  u_xlat66 = dot(x_2209, x_2210);
  let x_2212 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2212, 0.0f, 1.0f);
  let x_2215 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2217 : vec3<f32> = u_xlat29;
  u_xlat68 = dot(vec3<f32>(x_2215.x, x_2215.y, x_2215.z), x_2217);
  let x_2219 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2219, 0.0f, 1.0f);
  let x_2221 : f32 = u_xlat66;
  let x_2222 : f32 = u_xlat66;
  u_xlat66 = (x_2221 * x_2222);
  let x_2224 : f32 = u_xlat66;
  let x_2226 : f32 = u_xlat9.x;
  u_xlat66 = ((x_2224 * x_2226) + 1.000010014f);
  let x_2230 : f32 = u_xlat68;
  let x_2231 : f32 = u_xlat68;
  u_xlat68 = (x_2230 * x_2231);
  let x_2233 : f32 = u_xlat66;
  let x_2234 : f32 = u_xlat66;
  u_xlat66 = (x_2233 * x_2234);
  let x_2236 : f32 = u_xlat68;
  u_xlat68 = max(x_2236, 0.100000001f);
  let x_2239 : f32 = u_xlat66;
  let x_2240 : f32 = u_xlat68;
  u_xlat66 = (x_2239 * x_2240);
  let x_2242 : f32 = u_xlat71;
  let x_2243 : f32 = u_xlat66;
  u_xlat66 = (x_2242 * x_2243);
  let x_2245 : f32 = u_xlat70;
  let x_2246 : f32 = u_xlat66;
  u_xlat66 = (x_2245 / x_2246);
  let x_2248 : vec4<f32> = u_xlat0;
  let x_2250 : f32 = u_xlat66;
  let x_2253 : vec3<f32> = u_xlat23;
  u_xlat29 = ((vec3<f32>(x_2248.x, x_2248.y, x_2248.z) * vec3<f32>(x_2250, x_2250, x_2250)) + x_2253);
  let x_2255 : vec4<f32> = u_xlat5;
  let x_2257 : vec3<f32> = u_xlat29;
  let x_2258 : vec3<f32> = (vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * x_2257);
  let x_2259 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
  let x_2262 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2264 : f32 = x_106.unity_LightData.y;
  u_xlat66 = min(x_2262, x_2264);
  let x_2266 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_2266));
  let x_2270 : f32 = x_1928.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2272 : f32 = x_1928.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2274 : f32 = x_1928.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2276 : f32 = x_1928.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2277 : vec4<f32> = vec4<f32>(x_2270, x_2272, x_2274, x_2276);
  let x_2283 : vec4<bool> = (vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2277.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb29 = vec2<bool>(x_2283.x, x_2283.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2294 : u32 = u_xlatu_loop_1;
    let x_2295 : u32 = u_xlatu66;
    if ((x_2294 < x_2295)) {
    } else {
      break;
    }
    let x_2298 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2298 >> 2u);
    let x_2301 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2301 & 3u));
    let x_2304 : u32 = u_xlatu69;
    let x_2307 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_2304)];
    let x_2317 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2322 : vec4<u32> = indexable[x_2317];
    u_xlat69 = dot(x_2307, bitcast<vec4<f32>>(x_2322));
    let x_2325 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2325));
    let x_2328 : vec3<f32> = vs_TEXCOORD1;
    let x_2340 : u32 = u_xlatu69;
    let x_2343 : vec4<f32> = x_2339.x_AdditionalLightsPosition[bitcast<i32>(x_2340)];
    let x_2346 : u32 = u_xlatu69;
    let x_2349 : vec4<f32> = x_2339.x_AdditionalLightsPosition[bitcast<i32>(x_2346)];
    u_xlat31 = ((-(x_2328) * vec3<f32>(x_2343.w, x_2343.w, x_2343.w)) + vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
    let x_2352 : vec3<f32> = u_xlat31;
    let x_2353 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2352, x_2353);
    let x_2355 : f32 = u_xlat73;
    u_xlat73 = max(x_2355, 6.10351562e-05f);
    let x_2359 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2359);
    let x_2361 : f32 = u_xlat74;
    let x_2363 : vec3<f32> = u_xlat31;
    let x_2364 : vec3<f32> = (vec3<f32>(x_2361, x_2361, x_2361) * x_2363);
    let x_2365 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2364.x, x_2364.y, x_2364.z, x_2365.w);
    let x_2368 : f32 = u_xlat73;
    u_xlat76 = (1.0f / x_2368);
    let x_2370 : f32 = u_xlat73;
    let x_2371 : u32 = u_xlatu69;
    let x_2374 : f32 = x_2339.x_AdditionalLightsAttenuation[bitcast<i32>(x_2371)].x;
    u_xlat73 = (x_2370 * x_2374);
    let x_2376 : f32 = u_xlat73;
    let x_2378 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2376) * x_2378) + 1.0f);
    let x_2381 : f32 = u_xlat73;
    u_xlat73 = max(x_2381, 0.0f);
    let x_2383 : f32 = u_xlat73;
    let x_2384 : f32 = u_xlat73;
    u_xlat73 = (x_2383 * x_2384);
    let x_2386 : f32 = u_xlat73;
    let x_2387 : f32 = u_xlat76;
    u_xlat73 = (x_2386 * x_2387);
    let x_2389 : u32 = u_xlatu69;
    let x_2392 : vec4<f32> = x_2339.x_AdditionalLightsSpotDir[bitcast<i32>(x_2389)];
    let x_2394 : vec4<f32> = u_xlat10;
    u_xlat76 = dot(vec3<f32>(x_2392.x, x_2392.y, x_2392.z), vec3<f32>(x_2394.x, x_2394.y, x_2394.z));
    let x_2397 : f32 = u_xlat76;
    let x_2398 : u32 = u_xlatu69;
    let x_2401 : f32 = x_2339.x_AdditionalLightsAttenuation[bitcast<i32>(x_2398)].z;
    let x_2403 : u32 = u_xlatu69;
    let x_2406 : f32 = x_2339.x_AdditionalLightsAttenuation[bitcast<i32>(x_2403)].w;
    u_xlat76 = ((x_2397 * x_2401) + x_2406);
    let x_2408 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2408, 0.0f, 1.0f);
    let x_2410 : f32 = u_xlat76;
    let x_2411 : f32 = u_xlat76;
    u_xlat76 = (x_2410 * x_2411);
    let x_2413 : f32 = u_xlat73;
    let x_2414 : f32 = u_xlat76;
    u_xlat73 = (x_2413 * x_2414);
    let x_2417 : u32 = u_xlatu69;
    u_xlatu76 = (x_2417 >> 5u);
    let x_2420 : u32 = u_xlatu69;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_2420) & 31i)));
    let x_2426 : i32 = u_xlati11;
    let x_2428 : u32 = u_xlatu76;
    let x_2431 : f32 = x_1928.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2428)].el;
    u_xlati76 = bitcast<i32>((bitcast<u32>(x_2426) & bitcast<u32>(x_2431)));
    let x_2435 : i32 = u_xlati76;
    if ((x_2435 != 0i)) {
      let x_2445 : u32 = u_xlatu69;
      let x_2448 : f32 = x_2444.x_AdditionalLightsLightTypes[bitcast<i32>(x_2445)].el;
      u_xlati76 = i32(x_2448);
      let x_2450 : i32 = u_xlati76;
      u_xlati11 = select(1i, 0i, (x_2450 != 0i));
      let x_2454 : u32 = u_xlatu69;
      u_xlati33 = (bitcast<i32>(x_2454) << bitcast<u32>(2i));
      let x_2457 : i32 = u_xlati11;
      if ((x_2457 != 0i)) {
        let x_2461 : vec3<f32> = vs_TEXCOORD1;
        let x_2463 : i32 = u_xlati33;
        let x_2466 : i32 = u_xlati33;
        let x_2470 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2463 + 1i) / 4i)][((x_2466 + 1i) % 4i)];
        let x_2472 : vec3<f32> = (vec3<f32>(x_2461.y, x_2461.y, x_2461.y) * vec3<f32>(x_2470.x, x_2470.y, x_2470.w));
        let x_2473 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2472.x, x_2473.y, x_2472.y, x_2472.z);
        let x_2475 : i32 = u_xlati33;
        let x_2477 : i32 = u_xlati33;
        let x_2480 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[(x_2475 / 4i)][(x_2477 % 4i)];
        let x_2482 : vec3<f32> = vs_TEXCOORD1;
        let x_2485 : vec4<f32> = u_xlat11;
        let x_2487 : vec3<f32> = ((vec3<f32>(x_2480.x, x_2480.y, x_2480.w) * vec3<f32>(x_2482.x, x_2482.x, x_2482.x)) + vec3<f32>(x_2485.x, x_2485.z, x_2485.w));
        let x_2488 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2487.x, x_2488.y, x_2487.y, x_2487.z);
        let x_2490 : i32 = u_xlati33;
        let x_2493 : i32 = u_xlati33;
        let x_2497 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2490 + 2i) / 4i)][((x_2493 + 2i) % 4i)];
        let x_2499 : vec3<f32> = vs_TEXCOORD1;
        let x_2502 : vec4<f32> = u_xlat11;
        let x_2504 : vec3<f32> = ((vec3<f32>(x_2497.x, x_2497.y, x_2497.w) * vec3<f32>(x_2499.z, x_2499.z, x_2499.z)) + vec3<f32>(x_2502.x, x_2502.z, x_2502.w));
        let x_2505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2504.x, x_2505.y, x_2504.y, x_2504.z);
        let x_2507 : vec4<f32> = u_xlat11;
        let x_2509 : i32 = u_xlati33;
        let x_2512 : i32 = u_xlati33;
        let x_2516 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2509 + 3i) / 4i)][((x_2512 + 3i) % 4i)];
        let x_2518 : vec3<f32> = (vec3<f32>(x_2507.x, x_2507.z, x_2507.w) + vec3<f32>(x_2516.x, x_2516.y, x_2516.w));
        let x_2519 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2518.x, x_2519.y, x_2518.y, x_2518.z);
        let x_2521 : vec4<f32> = u_xlat11;
        let x_2523 : vec4<f32> = u_xlat11;
        let x_2525 : vec2<f32> = (vec2<f32>(x_2521.x, x_2521.z) / vec2<f32>(x_2523.w, x_2523.w));
        let x_2526 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2525.x, x_2526.y, x_2525.y, x_2526.w);
        let x_2528 : vec4<f32> = u_xlat11;
        let x_2531 : vec2<f32> = ((vec2<f32>(x_2528.x, x_2528.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2532 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2531.x, x_2532.y, x_2531.y, x_2532.w);
        let x_2534 : vec4<f32> = u_xlat11;
        let x_2538 : vec2<f32> = clamp(vec2<f32>(x_2534.x, x_2534.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2539 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2538.x, x_2539.y, x_2538.y, x_2539.w);
        let x_2541 : u32 = u_xlatu69;
        let x_2544 : vec4<f32> = x_2444.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2541)];
        let x_2546 : vec4<f32> = u_xlat11;
        let x_2549 : u32 = u_xlatu69;
        let x_2552 : vec4<f32> = x_2444.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2549)];
        let x_2554 : vec2<f32> = ((vec2<f32>(x_2544.x, x_2544.y) * vec2<f32>(x_2546.x, x_2546.z)) + vec2<f32>(x_2552.z, x_2552.w));
        let x_2555 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2554.x, x_2555.y, x_2554.y, x_2555.w);
      } else {
        let x_2559 : i32 = u_xlati76;
        u_xlatb76 = (x_2559 == 1i);
        let x_2561 : bool = u_xlatb76;
        u_xlati76 = select(0i, 1i, x_2561);
        let x_2563 : i32 = u_xlati76;
        if ((x_2563 != 0i)) {
          let x_2567 : vec3<f32> = vs_TEXCOORD1;
          let x_2569 : i32 = u_xlati33;
          let x_2572 : i32 = u_xlati33;
          let x_2576 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2569 + 1i) / 4i)][((x_2572 + 1i) % 4i)];
          let x_2578 : vec2<f32> = (vec2<f32>(x_2567.y, x_2567.y) * vec2<f32>(x_2576.x, x_2576.y));
          let x_2579 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2578.x, x_2578.y, x_2579.z, x_2579.w);
          let x_2581 : i32 = u_xlati33;
          let x_2583 : i32 = u_xlati33;
          let x_2586 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[(x_2581 / 4i)][(x_2583 % 4i)];
          let x_2588 : vec3<f32> = vs_TEXCOORD1;
          let x_2591 : vec4<f32> = u_xlat12;
          let x_2593 : vec2<f32> = ((vec2<f32>(x_2586.x, x_2586.y) * vec2<f32>(x_2588.x, x_2588.x)) + vec2<f32>(x_2591.x, x_2591.y));
          let x_2594 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2593.x, x_2593.y, x_2594.z, x_2594.w);
          let x_2596 : i32 = u_xlati33;
          let x_2599 : i32 = u_xlati33;
          let x_2603 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2596 + 2i) / 4i)][((x_2599 + 2i) % 4i)];
          let x_2605 : vec3<f32> = vs_TEXCOORD1;
          let x_2608 : vec4<f32> = u_xlat12;
          let x_2610 : vec2<f32> = ((vec2<f32>(x_2603.x, x_2603.y) * vec2<f32>(x_2605.z, x_2605.z)) + vec2<f32>(x_2608.x, x_2608.y));
          let x_2611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2610.x, x_2610.y, x_2611.z, x_2611.w);
          let x_2613 : vec4<f32> = u_xlat12;
          let x_2615 : i32 = u_xlati33;
          let x_2618 : i32 = u_xlati33;
          let x_2622 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2615 + 3i) / 4i)][((x_2618 + 3i) % 4i)];
          let x_2624 : vec2<f32> = (vec2<f32>(x_2613.x, x_2613.y) + vec2<f32>(x_2622.x, x_2622.y));
          let x_2625 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
          let x_2627 : vec4<f32> = u_xlat12;
          let x_2630 : vec2<f32> = ((vec2<f32>(x_2627.x, x_2627.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2631 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2630.x, x_2630.y, x_2631.z, x_2631.w);
          let x_2633 : vec4<f32> = u_xlat12;
          let x_2635 : vec2<f32> = fract(vec2<f32>(x_2633.x, x_2633.y));
          let x_2636 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
          let x_2638 : u32 = u_xlatu69;
          let x_2641 : vec4<f32> = x_2444.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2638)];
          let x_2643 : vec4<f32> = u_xlat12;
          let x_2646 : u32 = u_xlatu69;
          let x_2649 : vec4<f32> = x_2444.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2646)];
          let x_2651 : vec2<f32> = ((vec2<f32>(x_2641.x, x_2641.y) * vec2<f32>(x_2643.x, x_2643.y)) + vec2<f32>(x_2649.z, x_2649.w));
          let x_2652 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2651.x, x_2652.y, x_2651.y, x_2652.w);
        } else {
          let x_2655 : vec3<f32> = vs_TEXCOORD1;
          let x_2657 : i32 = u_xlati33;
          let x_2660 : i32 = u_xlati33;
          let x_2664 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2657 + 1i) / 4i)][((x_2660 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2655.y, x_2655.y, x_2655.y, x_2655.y) * x_2664);
          let x_2666 : i32 = u_xlati33;
          let x_2668 : i32 = u_xlati33;
          let x_2671 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[(x_2666 / 4i)][(x_2668 % 4i)];
          let x_2672 : vec3<f32> = vs_TEXCOORD1;
          let x_2675 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2671 * vec4<f32>(x_2672.x, x_2672.x, x_2672.x, x_2672.x)) + x_2675);
          let x_2677 : i32 = u_xlati33;
          let x_2680 : i32 = u_xlati33;
          let x_2684 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2677 + 2i) / 4i)][((x_2680 + 2i) % 4i)];
          let x_2685 : vec3<f32> = vs_TEXCOORD1;
          let x_2688 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2684 * vec4<f32>(x_2685.z, x_2685.z, x_2685.z, x_2685.z)) + x_2688);
          let x_2690 : vec4<f32> = u_xlat12;
          let x_2691 : i32 = u_xlati33;
          let x_2694 : i32 = u_xlati33;
          let x_2698 : vec4<f32> = x_2444.x_AdditionalLightsWorldToLights[((x_2691 + 3i) / 4i)][((x_2694 + 3i) % 4i)];
          u_xlat12 = (x_2690 + x_2698);
          let x_2700 : vec4<f32> = u_xlat12;
          let x_2702 : vec4<f32> = u_xlat12;
          let x_2704 : vec3<f32> = (vec3<f32>(x_2700.x, x_2700.y, x_2700.z) / vec3<f32>(x_2702.w, x_2702.w, x_2702.w));
          let x_2705 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2704.x, x_2704.y, x_2704.z, x_2705.w);
          let x_2707 : vec4<f32> = u_xlat12;
          let x_2709 : vec4<f32> = u_xlat12;
          u_xlat76 = dot(vec3<f32>(x_2707.x, x_2707.y, x_2707.z), vec3<f32>(x_2709.x, x_2709.y, x_2709.z));
          let x_2712 : f32 = u_xlat76;
          u_xlat76 = inverseSqrt(x_2712);
          let x_2714 : f32 = u_xlat76;
          let x_2716 : vec4<f32> = u_xlat12;
          let x_2718 : vec3<f32> = (vec3<f32>(x_2714, x_2714, x_2714) * vec3<f32>(x_2716.x, x_2716.y, x_2716.z));
          let x_2719 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
          let x_2721 : vec4<f32> = u_xlat12;
          u_xlat76 = dot(abs(vec3<f32>(x_2721.x, x_2721.y, x_2721.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2726 : f32 = u_xlat76;
          u_xlat76 = max(x_2726, 0.000001f);
          let x_2729 : f32 = u_xlat76;
          u_xlat76 = (1.0f / x_2729);
          let x_2731 : f32 = u_xlat76;
          let x_2733 : vec4<f32> = u_xlat12;
          let x_2735 : vec3<f32> = (vec3<f32>(x_2731, x_2731, x_2731) * vec3<f32>(x_2733.z, x_2733.x, x_2733.y));
          let x_2736 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2735.x, x_2735.y, x_2735.z, x_2736.w);
          let x_2739 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2739);
          let x_2743 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2743, 0.0f, 1.0f);
          let x_2749 : vec4<f32> = u_xlat13;
          let x_2752 : vec4<bool> = (vec4<f32>(x_2749.y, x_2749.y, x_2749.z, x_2749.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2753 : vec2<bool> = vec2<bool>(x_2752.x, x_2752.z);
          let x_2754 : vec3<bool> = u_xlatb33;
          u_xlatb33 = vec3<bool>(x_2753.x, x_2754.y, x_2753.y);
          let x_2758 : bool = u_xlatb33.x;
          if (x_2758) {
            let x_2763 : f32 = u_xlat13.x;
            x_2759 = x_2763;
          } else {
            let x_2766 : f32 = u_xlat13.x;
            x_2759 = -(x_2766);
          }
          let x_2768 : f32 = x_2759;
          u_xlat33.x = x_2768;
          let x_2771 : bool = u_xlatb33.z;
          if (x_2771) {
            let x_2776 : f32 = u_xlat13.x;
            x_2772 = x_2776;
          } else {
            let x_2779 : f32 = u_xlat13.x;
            x_2772 = -(x_2779);
          }
          let x_2781 : f32 = x_2772;
          u_xlat33.z = x_2781;
          let x_2783 : vec4<f32> = u_xlat12;
          let x_2785 : f32 = u_xlat76;
          let x_2788 : vec3<f32> = u_xlat33;
          let x_2790 : vec2<f32> = ((vec2<f32>(x_2783.x, x_2783.y) * vec2<f32>(x_2785, x_2785)) + vec2<f32>(x_2788.x, x_2788.z));
          let x_2791 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2790.x, x_2791.y, x_2790.y);
          let x_2793 : vec3<f32> = u_xlat33;
          let x_2796 : vec2<f32> = ((vec2<f32>(x_2793.x, x_2793.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2797 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2796.x, x_2797.y, x_2796.y);
          let x_2799 : vec3<f32> = u_xlat33;
          let x_2803 : vec2<f32> = clamp(vec2<f32>(x_2799.x, x_2799.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2804 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2803.x, x_2804.y, x_2803.y);
          let x_2806 : u32 = u_xlatu69;
          let x_2809 : vec4<f32> = x_2444.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2806)];
          let x_2811 : vec3<f32> = u_xlat33;
          let x_2814 : u32 = u_xlatu69;
          let x_2817 : vec4<f32> = x_2444.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2814)];
          let x_2819 : vec2<f32> = ((vec2<f32>(x_2809.x, x_2809.y) * vec2<f32>(x_2811.x, x_2811.z)) + vec2<f32>(x_2817.z, x_2817.w));
          let x_2820 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2819.x, x_2820.y, x_2819.y, x_2820.w);
        }
      }
      let x_2827 : vec4<f32> = u_xlat11;
      let x_2830 : f32 = x_44.x_GlobalMipBias.x;
      let x_2831 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2827.x, x_2827.z), x_2830);
      u_xlat11 = x_2831;
      let x_2833 : bool = u_xlatb29.y;
      if (x_2833) {
        let x_2838 : f32 = u_xlat11.w;
        x_2834 = x_2838;
      } else {
        let x_2841 : f32 = u_xlat11.x;
        x_2834 = x_2841;
      }
      let x_2842 : f32 = x_2834;
      u_xlat76 = x_2842;
      let x_2844 : bool = u_xlatb29.x;
      if (x_2844) {
        let x_2848 : vec4<f32> = u_xlat11;
        x_2845 = vec3<f32>(x_2848.x, x_2848.y, x_2848.z);
      } else {
        let x_2851 : f32 = u_xlat76;
        x_2845 = vec3<f32>(x_2851, x_2851, x_2851);
      }
      let x_2853 : vec3<f32> = x_2845;
      let x_2854 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2853.x, x_2853.y, x_2853.z, x_2854.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2860 : vec4<f32> = u_xlat11;
    let x_2862 : u32 = u_xlatu69;
    let x_2865 : vec4<f32> = x_2339.x_AdditionalLightsColor[bitcast<i32>(x_2862)];
    let x_2867 : vec3<f32> = (vec3<f32>(x_2860.x, x_2860.y, x_2860.z) * vec3<f32>(x_2865.x, x_2865.y, x_2865.z));
    let x_2868 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2867.x, x_2867.y, x_2867.z, x_2868.w);
    let x_2870 : vec3<f32> = u_xlat7;
    let x_2872 : vec4<f32> = u_xlat11;
    let x_2874 : vec3<f32> = (vec3<f32>(x_2870.x, x_2870.x, x_2870.x) * vec3<f32>(x_2872.x, x_2872.y, x_2872.z));
    let x_2875 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2874.x, x_2874.y, x_2874.z, x_2875.w);
    let x_2877 : vec3<f32> = u_xlat3;
    let x_2878 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(x_2877, vec3<f32>(x_2878.x, x_2878.y, x_2878.z));
    let x_2881 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2881, 0.0f, 1.0f);
    let x_2883 : f32 = u_xlat69;
    let x_2884 : f32 = u_xlat73;
    u_xlat69 = (x_2883 * x_2884);
    let x_2886 : f32 = u_xlat69;
    let x_2888 : vec4<f32> = u_xlat11;
    let x_2890 : vec3<f32> = (vec3<f32>(x_2886, x_2886, x_2886) * vec3<f32>(x_2888.x, x_2888.y, x_2888.z));
    let x_2891 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
    let x_2893 : vec3<f32> = u_xlat31;
    let x_2894 : f32 = u_xlat74;
    let x_2897 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2893 * vec3<f32>(x_2894, x_2894, x_2894)) + x_2897);
    let x_2899 : vec3<f32> = u_xlat31;
    let x_2900 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(x_2899, x_2900);
    let x_2902 : f32 = u_xlat69;
    u_xlat69 = max(x_2902, 1.17549435e-37f);
    let x_2904 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2904);
    let x_2906 : f32 = u_xlat69;
    let x_2908 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2906, x_2906, x_2906) * x_2908);
    let x_2910 : vec3<f32> = u_xlat3;
    let x_2911 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(x_2910, x_2911);
    let x_2913 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2913, 0.0f, 1.0f);
    let x_2915 : vec4<f32> = u_xlat10;
    let x_2917 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2915.x, x_2915.y, x_2915.z), x_2917);
    let x_2919 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2919, 0.0f, 1.0f);
    let x_2921 : f32 = u_xlat69;
    let x_2922 : f32 = u_xlat69;
    u_xlat69 = (x_2921 * x_2922);
    let x_2924 : f32 = u_xlat69;
    let x_2926 : f32 = u_xlat9.x;
    u_xlat69 = ((x_2924 * x_2926) + 1.000010014f);
    let x_2929 : f32 = u_xlat73;
    let x_2930 : f32 = u_xlat73;
    u_xlat73 = (x_2929 * x_2930);
    let x_2932 : f32 = u_xlat69;
    let x_2933 : f32 = u_xlat69;
    u_xlat69 = (x_2932 * x_2933);
    let x_2935 : f32 = u_xlat73;
    u_xlat73 = max(x_2935, 0.100000001f);
    let x_2937 : f32 = u_xlat69;
    let x_2938 : f32 = u_xlat73;
    u_xlat69 = (x_2937 * x_2938);
    let x_2940 : f32 = u_xlat71;
    let x_2941 : f32 = u_xlat69;
    u_xlat69 = (x_2940 * x_2941);
    let x_2943 : f32 = u_xlat70;
    let x_2944 : f32 = u_xlat69;
    u_xlat69 = (x_2943 / x_2944);
    let x_2946 : vec4<f32> = u_xlat0;
    let x_2948 : f32 = u_xlat69;
    let x_2951 : vec3<f32> = u_xlat23;
    u_xlat31 = ((vec3<f32>(x_2946.x, x_2946.y, x_2946.z) * vec3<f32>(x_2948, x_2948, x_2948)) + x_2951);
    let x_2953 : vec3<f32> = u_xlat31;
    let x_2954 : vec4<f32> = u_xlat11;
    let x_2957 : vec4<f32> = u_xlat8;
    let x_2959 : vec3<f32> = ((x_2953 * vec3<f32>(x_2954.x, x_2954.y, x_2954.z)) + vec3<f32>(x_2957.x, x_2957.y, x_2957.z));
    let x_2960 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2960.w);

    continuing {
      let x_2962 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2962 + bitcast<u32>(1i));
    }
  }
  let x_2964 : vec4<f32> = u_xlat6;
  let x_2966 : f32 = u_xlat72;
  let x_2969 : vec4<f32> = u_xlat5;
  let x_2971 : vec3<f32> = ((vec3<f32>(x_2964.x, x_2964.y, x_2964.z) * vec3<f32>(x_2966, x_2966, x_2966)) + vec3<f32>(x_2969.x, x_2969.y, x_2969.z));
  let x_2972 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
  let x_2974 : vec4<f32> = u_xlat8;
  let x_2976 : vec4<f32> = u_xlat0;
  let x_2978 : vec3<f32> = (vec3<f32>(x_2974.x, x_2974.y, x_2974.z) + vec3<f32>(x_2976.x, x_2976.y, x_2976.z));
  let x_2979 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2978.x, x_2978.y, x_2978.z, x_2979.w);
  let x_2983 : vec3<f32> = u_xlat2;
  let x_2985 : vec4<f32> = x_57.x_EmissionColor;
  let x_2988 : vec4<f32> = u_xlat0;
  let x_2990 : vec3<f32> = ((x_2983 * vec3<f32>(x_2985.x, x_2985.y, x_2985.z)) + vec3<f32>(x_2988.x, x_2988.y, x_2988.z));
  let x_2991 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2990.x, x_2990.y, x_2990.z, x_2991.w);
  let x_2996 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2996 == 1.0f);
  let x_2998 : bool = u_xlatb0;
  if (x_2998) {
    let x_3003 : f32 = u_xlat1.x;
    x_2999 = x_3003;
  } else {
    x_2999 = 1.0f;
  }
  let x_3005 : f32 = x_2999;
  SV_Target0.w = x_3005;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

