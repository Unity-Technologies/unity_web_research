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

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

@group(0) @binding(8) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_106 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_214 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1893 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2304 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2409 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1845 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat49 : f32;
  var x_1960 : f32;
  var x_1971 : vec3<f32>;
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
  var x_2724 : f32;
  var x_2737 : f32;
  var x_2799 : f32;
  var x_2810 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2964 : f32;
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
  let x_409 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_406, x_408);
  let x_410 : vec3<f32> = vec3<f32>(x_409.x, x_409.y, x_409.z);
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_415 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_416 : vec2<f32> = vec2<f32>(x_415.x, x_415.y);
  let x_420 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_416.x, x_416.y));
  let x_421 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_420.x, x_420.y, x_421.z);
  let x_423 : vec3<f32> = u_xlat7;
  let x_425 : vec4<f32> = hlslcc_FragCoord;
  let x_427 : vec2<f32> = (vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_425.x, x_425.y));
  let x_428 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_427.x, x_427.y, x_428.z);
  let x_431 : f32 = u_xlat7.y;
  let x_434 : f32 = x_44.x_ScaleBiasRt.x;
  let x_437 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat66 = ((x_431 * x_434) + x_437);
  let x_439 : f32 = u_xlat66;
  u_xlat7.z = (-(x_439) + 1.0f);
  let x_444 : f32 = x_57.x_Metallic;
  u_xlat66 = ((-(x_444) * 0.959999979f) + 0.959999979f);
  let x_449 : f32 = u_xlat66;
  let x_452 : f32 = x_57.x_Smoothness;
  u_xlat68 = (-(x_449) + x_452);
  let x_455 : f32 = u_xlat66;
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat23 = (vec3<f32>(x_455, x_455, x_455) * vec3<f32>(x_457.y, x_457.z, x_457.w));
  let x_460 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = x_57.x_BaseColor;
  let x_468 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_463.x, x_463.y, x_463.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_469 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : f32 = x_57.x_Metallic;
  let x_474 : f32 = x_57.x_Metallic;
  let x_476 : f32 = x_57.x_Metallic;
  let x_477 : vec3<f32> = vec3<f32>(x_472, x_474, x_476);
  let x_482 : vec4<f32> = u_xlat0;
  let x_487 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_482.x, x_482.y, x_482.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_488 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_491 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_491) + 1.0f);
  let x_495 : f32 = u_xlat66;
  let x_496 : f32 = u_xlat66;
  u_xlat69 = (x_495 * x_496);
  let x_498 : f32 = u_xlat69;
  u_xlat69 = max(x_498, 0.0078125f);
  let x_502 : f32 = u_xlat69;
  let x_503 : f32 = u_xlat69;
  u_xlat70 = (x_502 * x_503);
  let x_505 : f32 = u_xlat68;
  u_xlat68 = (x_505 + 1.0f);
  let x_507 : f32 = u_xlat68;
  u_xlat68 = clamp(x_507, 0.0f, 1.0f);
  let x_510 : f32 = u_xlat69;
  u_xlat71 = ((x_510 * 4.0f) + 2.0f);
  let x_519 : vec3<f32> = u_xlat7;
  let x_522 : f32 = x_44.x_GlobalMipBias.x;
  let x_523 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_519.x, x_519.z), x_522);
  u_xlat72 = x_523.x;
  let x_525 : f32 = u_xlat72;
  u_xlat7.x = (x_525 + -1.0f);
  let x_529 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_531 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_529 * x_531) + 1.0f);
  let x_535 : f32 = u_xlat72;
  u_xlat72 = min(x_535, 1.0f);
  let x_541 : f32 = x_214.x_MainLightShadowParams.y;
  u_xlatb29.x = (0.0f < x_541);
  let x_545 : bool = u_xlatb29.x;
  if (x_545) {
    let x_549 : f32 = x_214.x_MainLightShadowParams.y;
    u_xlatb29.x = (x_549 == 1.0f);
    let x_553 : bool = u_xlatb29.x;
    if (x_553) {
      let x_556 : vec4<f32> = u_xlat5;
      let x_559 : vec4<f32> = x_214.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y) + x_559);
      let x_562 : vec4<f32> = u_xlat8;
      let x_563 : vec2<f32> = vec2<f32>(x_562.x, x_562.y);
      let x_565 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_563.x, x_563.y, x_565);
      let x_578 : vec3<f32> = txVec0;
      let x_580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_578.xy, x_578.z);
      u_xlat9.x = x_580;
      let x_583 : vec4<f32> = u_xlat8;
      let x_584 : vec2<f32> = vec2<f32>(x_583.z, x_583.w);
      let x_586 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_584.x, x_584.y, x_586);
      let x_593 : vec3<f32> = txVec1;
      let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_593.xy, x_593.z);
      u_xlat9.y = x_595;
      let x_597 : vec4<f32> = u_xlat5;
      let x_600 : vec4<f32> = x_214.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y) + x_600);
      let x_603 : vec4<f32> = u_xlat8;
      let x_604 : vec2<f32> = vec2<f32>(x_603.x, x_603.y);
      let x_606 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_604.x, x_604.y, x_606);
      let x_613 : vec3<f32> = txVec2;
      let x_615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_613.xy, x_613.z);
      u_xlat9.z = x_615;
      let x_618 : vec4<f32> = u_xlat8;
      let x_619 : vec2<f32> = vec2<f32>(x_618.z, x_618.w);
      let x_621 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_619.x, x_619.y, x_621);
      let x_628 : vec3<f32> = txVec3;
      let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_628.xy, x_628.z);
      u_xlat9.w = x_630;
      let x_633 : vec4<f32> = u_xlat9;
      u_xlat29.x = dot(x_633, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_641 : f32 = x_214.x_MainLightShadowParams.y;
      u_xlatb51 = (x_641 == 2.0f);
      let x_643 : bool = u_xlatb51;
      if (x_643) {
        let x_648 : vec4<f32> = u_xlat5;
        let x_651 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat51 = ((vec2<f32>(x_648.x, x_648.y) * vec2<f32>(x_651.z, x_651.w)) + vec2<f32>(0.5f, 0.5f));
        let x_657 : vec2<f32> = u_xlat51;
        u_xlat51 = floor(x_657);
        let x_659 : vec4<f32> = u_xlat5;
        let x_662 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_665 : vec2<f32> = u_xlat51;
        let x_667 : vec2<f32> = ((vec2<f32>(x_659.x, x_659.y) * vec2<f32>(x_662.z, x_662.w)) + -(x_665));
        let x_668 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
        let x_670 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_670.x, x_670.x, x_670.y, x_670.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_675 : vec4<f32> = u_xlat9;
        let x_677 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_675.x, x_675.x, x_675.z, x_675.z) * vec4<f32>(x_677.x, x_677.x, x_677.z, x_677.z));
        let x_681 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_681.y, x_681.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_686 : vec4<f32> = u_xlat10;
        let x_689 : vec4<f32> = u_xlat8;
        let x_692 : vec2<f32> = ((vec2<f32>(x_686.x, x_686.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_689.x, x_689.y)));
        let x_693 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_692.x, x_693.y, x_692.y, x_693.w);
        let x_695 : vec4<f32> = u_xlat8;
        let x_698 : vec2<f32> = (-(vec2<f32>(x_695.x, x_695.y)) + vec2<f32>(1.0f, 1.0f));
        let x_699 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_699.w);
        let x_702 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_702.x, x_702.y), vec2<f32>(0.0f, 0.0f));
        let x_706 : vec2<f32> = u_xlat54;
        let x_708 : vec2<f32> = u_xlat54;
        let x_710 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_706) * x_708) + vec2<f32>(x_710.x, x_710.y));
        let x_713 : vec4<f32> = u_xlat8;
        let x_715 : vec2<f32> = max(vec2<f32>(x_713.x, x_713.y), vec2<f32>(0.0f, 0.0f));
        let x_716 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_718 : vec4<f32> = u_xlat8;
        let x_721 : vec4<f32> = u_xlat8;
        let x_724 : vec4<f32> = u_xlat9;
        let x_726 : vec2<f32> = ((-(vec2<f32>(x_718.x, x_718.y)) * vec2<f32>(x_721.x, x_721.y)) + vec2<f32>(x_724.y, x_724.w));
        let x_727 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_729 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_729 + vec2<f32>(1.0f, 1.0f));
        let x_731 : vec4<f32> = u_xlat8;
        let x_733 : vec2<f32> = (vec2<f32>(x_731.x, x_731.y) + vec2<f32>(1.0f, 1.0f));
        let x_734 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_737 : vec4<f32> = u_xlat9;
        let x_741 : vec2<f32> = (vec2<f32>(x_737.x, x_737.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
        let x_745 : vec4<f32> = u_xlat10;
        let x_747 : vec2<f32> = (vec2<f32>(x_745.x, x_745.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_748 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
        let x_750 : vec2<f32> = u_xlat54;
        let x_751 : vec2<f32> = (x_750 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_752 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
        let x_755 : vec4<f32> = u_xlat8;
        let x_757 : vec2<f32> = (vec2<f32>(x_755.x, x_755.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_758 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat9;
        let x_762 : vec2<f32> = (vec2<f32>(x_760.y, x_760.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_763 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_762.x, x_762.y, x_763.z, x_763.w);
        let x_766 : f32 = u_xlat10.x;
        u_xlat11.z = x_766;
        let x_769 : f32 = u_xlat8.x;
        u_xlat11.w = x_769;
        let x_772 : f32 = u_xlat13.x;
        u_xlat12.z = x_772;
        let x_775 : f32 = u_xlat52.x;
        u_xlat12.w = x_775;
        let x_777 : vec4<f32> = u_xlat11;
        let x_779 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_777.z, x_777.w, x_777.x, x_777.z) + vec4<f32>(x_779.z, x_779.w, x_779.x, x_779.z));
        let x_783 : f32 = u_xlat11.y;
        u_xlat10.z = x_783;
        let x_786 : f32 = u_xlat8.y;
        u_xlat10.w = x_786;
        let x_789 : f32 = u_xlat12.y;
        u_xlat13.z = x_789;
        let x_792 : f32 = u_xlat52.y;
        u_xlat13.w = x_792;
        let x_794 : vec4<f32> = u_xlat10;
        let x_796 : vec4<f32> = u_xlat13;
        let x_798 : vec3<f32> = (vec3<f32>(x_794.z, x_794.y, x_794.w) + vec3<f32>(x_796.z, x_796.y, x_796.w));
        let x_799 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat12;
        let x_803 : vec4<f32> = u_xlat9;
        let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.z, x_801.w) / vec3<f32>(x_803.z, x_803.w, x_803.y));
        let x_806 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
        let x_808 : vec4<f32> = u_xlat10;
        let x_814 : vec3<f32> = (vec3<f32>(x_808.x, x_808.y, x_808.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_815 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_817 : vec4<f32> = u_xlat13;
        let x_819 : vec4<f32> = u_xlat8;
        let x_821 : vec3<f32> = (vec3<f32>(x_817.z, x_817.y, x_817.w) / vec3<f32>(x_819.x, x_819.y, x_819.z));
        let x_822 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat11;
        let x_826 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_827 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat10;
        let x_832 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_834 : vec3<f32> = (vec3<f32>(x_829.y, x_829.x, x_829.z) * vec3<f32>(x_832.x, x_832.x, x_832.x));
        let x_835 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat11;
        let x_840 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_842 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(x_840.y, x_840.y, x_840.y));
        let x_843 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
        let x_846 : f32 = u_xlat11.x;
        u_xlat10.w = x_846;
        let x_848 : vec2<f32> = u_xlat51;
        let x_851 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_854 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y) * vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y)) + vec4<f32>(x_854.y, x_854.w, x_854.x, x_854.w));
        let x_857 : vec2<f32> = u_xlat51;
        let x_859 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat10;
        let x_864 : vec2<f32> = ((x_857 * vec2<f32>(x_859.x, x_859.y)) + vec2<f32>(x_862.z, x_862.w));
        let x_865 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_868 : f32 = u_xlat10.y;
        u_xlat11.w = x_868;
        let x_870 : vec4<f32> = u_xlat11;
        let x_871 : vec2<f32> = vec2<f32>(x_870.y, x_870.z);
        let x_872 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_872.x, x_871.x, x_872.z, x_871.y);
        let x_875 : vec2<f32> = u_xlat51;
        let x_878 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_881 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_875.x, x_875.y, x_875.x, x_875.y) * vec4<f32>(x_878.x, x_878.y, x_878.x, x_878.y)) + vec4<f32>(x_881.x, x_881.y, x_881.z, x_881.y));
        let x_884 : vec2<f32> = u_xlat51;
        let x_887 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_890 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_884.x, x_884.y, x_884.x, x_884.y) * vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y)) + vec4<f32>(x_890.w, x_890.y, x_890.w, x_890.z));
        let x_893 : vec2<f32> = u_xlat51;
        let x_896 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_899 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_893.x, x_893.y, x_893.x, x_893.y) * vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y)) + vec4<f32>(x_899.x, x_899.w, x_899.z, x_899.w));
        let x_903 : vec4<f32> = u_xlat8;
        let x_905 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_903.x, x_903.x, x_903.x, x_903.y) * vec4<f32>(x_905.z, x_905.w, x_905.y, x_905.z));
        let x_909 : vec4<f32> = u_xlat8;
        let x_911 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_909.y, x_909.y, x_909.z, x_909.z) * x_911);
        let x_914 : f32 = u_xlat8.z;
        let x_916 : f32 = u_xlat9.y;
        u_xlat51.x = (x_914 * x_916);
        let x_920 : vec4<f32> = u_xlat12;
        let x_921 : vec2<f32> = vec2<f32>(x_920.x, x_920.y);
        let x_923 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_931 : vec3<f32> = txVec4;
        let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_931.xy, x_931.z);
        u_xlat73 = x_933;
        let x_935 : vec4<f32> = u_xlat12;
        let x_936 : vec2<f32> = vec2<f32>(x_935.z, x_935.w);
        let x_938 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_936.x, x_936.y, x_938);
        let x_945 : vec3<f32> = txVec5;
        let x_947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_945.xy, x_945.z);
        u_xlat8.x = x_947;
        let x_950 : f32 = u_xlat8.x;
        let x_952 : f32 = u_xlat15.y;
        u_xlat8.x = (x_950 * x_952);
        let x_956 : f32 = u_xlat15.x;
        let x_957 : f32 = u_xlat73;
        let x_960 : f32 = u_xlat8.x;
        u_xlat73 = ((x_956 * x_957) + x_960);
        let x_963 : vec4<f32> = u_xlat13;
        let x_964 : vec2<f32> = vec2<f32>(x_963.x, x_963.y);
        let x_966 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec6;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_973.xy, x_973.z);
        u_xlat8.x = x_975;
        let x_978 : f32 = u_xlat15.z;
        let x_980 : f32 = u_xlat8.x;
        let x_982 : f32 = u_xlat73;
        u_xlat73 = ((x_978 * x_980) + x_982);
        let x_985 : vec4<f32> = u_xlat11;
        let x_986 : vec2<f32> = vec2<f32>(x_985.x, x_985.y);
        let x_988 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec7;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
        u_xlat8.x = x_997;
        let x_1000 : f32 = u_xlat15.w;
        let x_1002 : f32 = u_xlat8.x;
        let x_1004 : f32 = u_xlat73;
        u_xlat73 = ((x_1000 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat14;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec8;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
        u_xlat8.x = x_1019;
        let x_1022 : f32 = u_xlat16.x;
        let x_1024 : f32 = u_xlat8.x;
        let x_1026 : f32 = u_xlat73;
        u_xlat73 = ((x_1022 * x_1024) + x_1026);
        let x_1029 : vec4<f32> = u_xlat14;
        let x_1030 : vec2<f32> = vec2<f32>(x_1029.z, x_1029.w);
        let x_1032 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1030.x, x_1030.y, x_1032);
        let x_1039 : vec3<f32> = txVec9;
        let x_1041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1039.xy, x_1039.z);
        u_xlat8.x = x_1041;
        let x_1044 : f32 = u_xlat16.y;
        let x_1046 : f32 = u_xlat8.x;
        let x_1048 : f32 = u_xlat73;
        u_xlat73 = ((x_1044 * x_1046) + x_1048);
        let x_1051 : vec4<f32> = u_xlat11;
        let x_1052 : vec2<f32> = vec2<f32>(x_1051.z, x_1051.w);
        let x_1054 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1052.x, x_1052.y, x_1054);
        let x_1061 : vec3<f32> = txVec10;
        let x_1063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1061.xy, x_1061.z);
        u_xlat8.x = x_1063;
        let x_1066 : f32 = u_xlat16.z;
        let x_1068 : f32 = u_xlat8.x;
        let x_1070 : f32 = u_xlat73;
        u_xlat73 = ((x_1066 * x_1068) + x_1070);
        let x_1073 : vec4<f32> = u_xlat10;
        let x_1074 : vec2<f32> = vec2<f32>(x_1073.x, x_1073.y);
        let x_1076 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1074.x, x_1074.y, x_1076);
        let x_1083 : vec3<f32> = txVec11;
        let x_1085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1083.xy, x_1083.z);
        u_xlat8.x = x_1085;
        let x_1088 : f32 = u_xlat16.w;
        let x_1090 : f32 = u_xlat8.x;
        let x_1092 : f32 = u_xlat73;
        u_xlat73 = ((x_1088 * x_1090) + x_1092);
        let x_1095 : vec4<f32> = u_xlat10;
        let x_1096 : vec2<f32> = vec2<f32>(x_1095.z, x_1095.w);
        let x_1098 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1096.x, x_1096.y, x_1098);
        let x_1105 : vec3<f32> = txVec12;
        let x_1107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1105.xy, x_1105.z);
        u_xlat8.x = x_1107;
        let x_1110 : f32 = u_xlat51.x;
        let x_1112 : f32 = u_xlat8.x;
        let x_1114 : f32 = u_xlat73;
        u_xlat29.x = ((x_1110 * x_1112) + x_1114);
      } else {
        let x_1118 : vec4<f32> = u_xlat5;
        let x_1121 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat51 = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.z, x_1121.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1125 : vec2<f32> = u_xlat51;
        u_xlat51 = floor(x_1125);
        let x_1127 : vec4<f32> = u_xlat5;
        let x_1130 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1133 : vec2<f32> = u_xlat51;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.z, x_1130.w)) + -(x_1133));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1138 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1138.x, x_1138.x, x_1138.y, x_1138.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1141 : vec4<f32> = u_xlat9;
        let x_1143 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1141.x, x_1141.x, x_1141.z, x_1141.z) * vec4<f32>(x_1143.x, x_1143.x, x_1143.z, x_1143.z));
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1150 : vec2<f32> = (vec2<f32>(x_1146.y, x_1146.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1151 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1151.x, x_1150.x, x_1151.z, x_1150.y);
        let x_1153 : vec4<f32> = u_xlat10;
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1153.x, x_1153.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1156.x, x_1156.y)));
        let x_1160 : vec4<f32> = u_xlat8;
        let x_1163 : vec2<f32> = (-(vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1164 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1163.x, x_1164.y, x_1163.y, x_1164.w);
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1168 : vec2<f32> = min(vec2<f32>(x_1166.x, x_1166.y), vec2<f32>(0.0f, 0.0f));
        let x_1169 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1168.x, x_1168.y, x_1169.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1174 : vec4<f32> = u_xlat10;
        let x_1177 : vec4<f32> = u_xlat9;
        let x_1179 : vec2<f32> = ((-(vec2<f32>(x_1171.x, x_1171.y)) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1177.x, x_1177.z));
        let x_1180 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1179.x, x_1180.y, x_1179.y, x_1180.w);
        let x_1182 : vec4<f32> = u_xlat8;
        let x_1184 : vec2<f32> = max(vec2<f32>(x_1182.x, x_1182.y), vec2<f32>(0.0f, 0.0f));
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1193 : vec4<f32> = u_xlat9;
        let x_1195 : vec2<f32> = ((-(vec2<f32>(x_1187.x, x_1187.y)) * vec2<f32>(x_1190.x, x_1190.y)) + vec2<f32>(x_1193.y, x_1193.w));
        let x_1196 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1195.x, x_1196.z, x_1195.y);
        let x_1198 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1198 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1202 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1202 * 0.081632003f);
        let x_1206 : vec2<f32> = u_xlat52;
        let x_1209 : vec2<f32> = (vec2<f32>(x_1206.y, x_1206.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1210 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1209.x, x_1209.y, x_1210.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1212.x, x_1212.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1216 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1216 * 0.081632003f);
        let x_1220 : f32 = u_xlat12.y;
        u_xlat10.x = x_1220;
        let x_1222 : vec4<f32> = u_xlat8;
        let x_1229 : vec2<f32> = ((vec2<f32>(x_1222.x, x_1222.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1230 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1230.x, x_1229.x, x_1230.z, x_1229.y);
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1236 : vec2<f32> = ((vec2<f32>(x_1232.x, x_1232.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1236.x, x_1237.y, x_1236.y, x_1237.w);
        let x_1240 : f32 = u_xlat52.x;
        u_xlat9.y = x_1240;
        let x_1243 : f32 = u_xlat11.y;
        u_xlat9.w = x_1243;
        let x_1245 : vec4<f32> = u_xlat9;
        let x_1246 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1245 + x_1246);
        let x_1248 : vec4<f32> = u_xlat8;
        let x_1251 : vec2<f32> = ((vec2<f32>(x_1248.y, x_1248.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1252 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1252.x, x_1251.x, x_1252.z, x_1251.y);
        let x_1254 : vec4<f32> = u_xlat8;
        let x_1257 : vec2<f32> = ((vec2<f32>(x_1254.y, x_1254.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1258 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1257.x, x_1258.y, x_1257.y, x_1258.w);
        let x_1261 : f32 = u_xlat52.y;
        u_xlat11.y = x_1261;
        let x_1263 : vec4<f32> = u_xlat11;
        let x_1264 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1263 + x_1264);
        let x_1266 : vec4<f32> = u_xlat9;
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1266 / x_1267);
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1269 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1275 : vec4<f32> = u_xlat11;
        let x_1276 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1275 / x_1276);
        let x_1278 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1278 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1280 : vec4<f32> = u_xlat9;
        let x_1283 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1280.w, x_1280.x, x_1280.y, x_1280.z) * vec4<f32>(x_1283.x, x_1283.x, x_1283.x, x_1283.x));
        let x_1286 : vec4<f32> = u_xlat11;
        let x_1289 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1286.x, x_1286.w, x_1286.y, x_1286.z) * vec4<f32>(x_1289.y, x_1289.y, x_1289.y, x_1289.y));
        let x_1292 : vec4<f32> = u_xlat9;
        let x_1293 : vec3<f32> = vec3<f32>(x_1292.y, x_1292.z, x_1292.w);
        let x_1294 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1293.x, x_1294.y, x_1293.y, x_1293.z);
        let x_1297 : f32 = u_xlat11.x;
        u_xlat12.y = x_1297;
        let x_1299 : vec2<f32> = u_xlat51;
        let x_1302 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y) * vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y)) + vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1305.y));
        let x_1308 : vec2<f32> = u_xlat51;
        let x_1310 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat12;
        let x_1315 : vec2<f32> = ((x_1308 * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.w, x_1313.y));
        let x_1316 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1319 : f32 = u_xlat12.y;
        u_xlat9.y = x_1319;
        let x_1322 : f32 = u_xlat11.z;
        u_xlat12.y = x_1322;
        let x_1324 : vec2<f32> = u_xlat51;
        let x_1327 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1330 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1324.x, x_1324.y, x_1324.x, x_1324.y) * vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y)) + vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1330.y));
        let x_1334 : vec2<f32> = u_xlat51;
        let x_1336 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1339 : vec4<f32> = u_xlat12;
        u_xlat58 = ((x_1334 * vec2<f32>(x_1336.x, x_1336.y)) + vec2<f32>(x_1339.w, x_1339.y));
        let x_1343 : f32 = u_xlat12.y;
        u_xlat9.z = x_1343;
        let x_1345 : vec2<f32> = u_xlat51;
        let x_1348 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y) * vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y)) + vec4<f32>(x_1351.x, x_1351.y, x_1351.x, x_1351.z));
        let x_1355 : f32 = u_xlat11.w;
        u_xlat12.y = x_1355;
        let x_1358 : vec2<f32> = u_xlat51;
        let x_1361 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y) * vec4<f32>(x_1361.x, x_1361.y, x_1361.x, x_1361.y)) + vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1364.y));
        let x_1368 : vec2<f32> = u_xlat51;
        let x_1370 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1373 : vec4<f32> = u_xlat12;
        let x_1375 : vec2<f32> = ((x_1368 * vec2<f32>(x_1370.x, x_1370.y)) + vec2<f32>(x_1373.w, x_1373.y));
        let x_1376 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1375.x, x_1375.y, x_1376.z);
        let x_1379 : f32 = u_xlat12.y;
        u_xlat9.w = x_1379;
        let x_1382 : vec2<f32> = u_xlat51;
        let x_1384 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1387 : vec4<f32> = u_xlat9;
        u_xlat18 = ((x_1382 * vec2<f32>(x_1384.x, x_1384.y)) + vec2<f32>(x_1387.x, x_1387.w));
        let x_1390 : vec4<f32> = u_xlat12;
        let x_1391 : vec3<f32> = vec3<f32>(x_1390.x, x_1390.z, x_1390.w);
        let x_1392 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1391.x, x_1392.y, x_1391.y, x_1391.z);
        let x_1394 : vec2<f32> = u_xlat51;
        let x_1397 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1400 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1394.x, x_1394.y, x_1394.x, x_1394.y) * vec4<f32>(x_1397.x, x_1397.y, x_1397.x, x_1397.y)) + vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1400.y));
        let x_1404 : vec2<f32> = u_xlat51;
        let x_1406 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1409 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1404 * vec2<f32>(x_1406.x, x_1406.y)) + vec2<f32>(x_1409.w, x_1409.y));
        let x_1413 : f32 = u_xlat9.x;
        u_xlat11.x = x_1413;
        let x_1415 : vec2<f32> = u_xlat51;
        let x_1417 : vec4<f32> = x_214.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat11;
        u_xlat51 = ((x_1415 * vec2<f32>(x_1417.x, x_1417.y)) + vec2<f32>(x_1420.x, x_1420.y));
        let x_1424 : vec4<f32> = u_xlat8;
        let x_1426 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1424.x, x_1424.x, x_1424.x, x_1424.x) * x_1426);
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1429.y, x_1429.y, x_1429.y, x_1429.y) * x_1431);
        let x_1434 : vec4<f32> = u_xlat8;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1434.z, x_1434.z, x_1434.z, x_1434.z) * x_1436);
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1440 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1438.w, x_1438.w, x_1438.w, x_1438.w) * x_1440);
        let x_1443 : vec4<f32> = u_xlat13;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.x, x_1443.y);
        let x_1446 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec13;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1453.xy, x_1453.z);
        u_xlat9.x = x_1455;
        let x_1458 : vec4<f32> = u_xlat13;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.z, x_1458.w);
        let x_1461 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1469 : vec3<f32> = txVec14;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1469.xy, x_1469.z);
        u_xlat75 = x_1471;
        let x_1472 : f32 = u_xlat75;
        let x_1474 : f32 = u_xlat19.y;
        u_xlat75 = (x_1472 * x_1474);
        let x_1477 : f32 = u_xlat19.x;
        let x_1479 : f32 = u_xlat9.x;
        let x_1481 : f32 = u_xlat75;
        u_xlat9.x = ((x_1477 * x_1479) + x_1481);
        let x_1485 : vec4<f32> = u_xlat14;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec15;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat75 = x_1497;
        let x_1499 : f32 = u_xlat19.z;
        let x_1500 : f32 = u_xlat75;
        let x_1503 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1499 * x_1500) + x_1503);
        let x_1507 : vec4<f32> = u_xlat16;
        let x_1508 : vec2<f32> = vec2<f32>(x_1507.x, x_1507.y);
        let x_1510 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1508.x, x_1508.y, x_1510);
        let x_1517 : vec3<f32> = txVec16;
        let x_1519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1517.xy, x_1517.z);
        u_xlat75 = x_1519;
        let x_1521 : f32 = u_xlat19.w;
        let x_1522 : f32 = u_xlat75;
        let x_1525 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1521 * x_1522) + x_1525);
        let x_1529 : vec4<f32> = u_xlat15;
        let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
        let x_1532 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec17;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1539.xy, x_1539.z);
        u_xlat75 = x_1541;
        let x_1543 : f32 = u_xlat20.x;
        let x_1544 : f32 = u_xlat75;
        let x_1547 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1543 * x_1544) + x_1547);
        let x_1551 : vec4<f32> = u_xlat15;
        let x_1552 : vec2<f32> = vec2<f32>(x_1551.z, x_1551.w);
        let x_1554 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1552.x, x_1552.y, x_1554);
        let x_1561 : vec3<f32> = txVec18;
        let x_1563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1561.xy, x_1561.z);
        u_xlat75 = x_1563;
        let x_1565 : f32 = u_xlat20.y;
        let x_1566 : f32 = u_xlat75;
        let x_1569 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1565 * x_1566) + x_1569);
        let x_1573 : vec2<f32> = u_xlat58;
        let x_1575 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1573.x, x_1573.y, x_1575);
        let x_1582 : vec3<f32> = txVec19;
        let x_1584 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1582.xy, x_1582.z);
        u_xlat75 = x_1584;
        let x_1586 : f32 = u_xlat20.z;
        let x_1587 : f32 = u_xlat75;
        let x_1590 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1586 * x_1587) + x_1590);
        let x_1594 : vec4<f32> = u_xlat16;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.z, x_1594.w);
        let x_1597 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec20;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1604.xy, x_1604.z);
        u_xlat75 = x_1606;
        let x_1608 : f32 = u_xlat20.w;
        let x_1609 : f32 = u_xlat75;
        let x_1612 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1608 * x_1609) + x_1612);
        let x_1616 : vec4<f32> = u_xlat17;
        let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
        let x_1619 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec21;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat75 = x_1628;
        let x_1630 : f32 = u_xlat21.x;
        let x_1631 : f32 = u_xlat75;
        let x_1634 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1630 * x_1631) + x_1634);
        let x_1638 : vec4<f32> = u_xlat17;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.z, x_1638.w);
        let x_1641 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec22;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1648.xy, x_1648.z);
        u_xlat75 = x_1650;
        let x_1652 : f32 = u_xlat21.y;
        let x_1653 : f32 = u_xlat75;
        let x_1656 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1652 * x_1653) + x_1656);
        let x_1660 : vec3<f32> = u_xlat31;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec23;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1670.xy, x_1670.z);
        u_xlat31.x = x_1672;
        let x_1675 : f32 = u_xlat21.z;
        let x_1677 : f32 = u_xlat31.x;
        let x_1680 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1675 * x_1677) + x_1680);
        let x_1684 : vec2<f32> = u_xlat18;
        let x_1686 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec24;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1693.xy, x_1693.z);
        u_xlat31.x = x_1695;
        let x_1698 : f32 = u_xlat21.w;
        let x_1700 : f32 = u_xlat31.x;
        let x_1703 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1698 * x_1700) + x_1703);
        let x_1707 : vec4<f32> = u_xlat12;
        let x_1708 : vec2<f32> = vec2<f32>(x_1707.x, x_1707.y);
        let x_1710 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
        let x_1717 : vec3<f32> = txVec25;
        let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1717.xy, x_1717.z);
        u_xlat31.x = x_1719;
        let x_1722 : f32 = u_xlat8.x;
        let x_1724 : f32 = u_xlat31.x;
        let x_1727 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_1722 * x_1724) + x_1727);
        let x_1731 : vec4<f32> = u_xlat12;
        let x_1732 : vec2<f32> = vec2<f32>(x_1731.z, x_1731.w);
        let x_1734 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec26;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1741.xy, x_1741.z);
        u_xlat9.x = x_1743;
        let x_1746 : f32 = u_xlat8.y;
        let x_1748 : f32 = u_xlat9.x;
        let x_1751 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1746 * x_1748) + x_1751);
        let x_1755 : vec2<f32> = u_xlat55;
        let x_1757 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1755.x, x_1755.y, x_1757);
        let x_1765 : vec3<f32> = txVec27;
        let x_1767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1765.xy, x_1765.z);
        u_xlat30 = x_1767;
        let x_1769 : f32 = u_xlat8.z;
        let x_1770 : f32 = u_xlat30;
        let x_1773 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1769 * x_1770) + x_1773);
        let x_1777 : vec2<f32> = u_xlat51;
        let x_1779 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1777.x, x_1777.y, x_1779);
        let x_1786 : vec3<f32> = txVec28;
        let x_1788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1786.xy, x_1786.z);
        u_xlat51.x = x_1788;
        let x_1791 : f32 = u_xlat8.w;
        let x_1793 : f32 = u_xlat51.x;
        let x_1796 : f32 = u_xlat8.x;
        u_xlat29.x = ((x_1791 * x_1793) + x_1796);
      }
    }
  } else {
    let x_1801 : vec4<f32> = u_xlat5;
    let x_1802 : vec2<f32> = vec2<f32>(x_1801.x, x_1801.y);
    let x_1804 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1802.x, x_1802.y, x_1804);
    let x_1811 : vec3<f32> = txVec29;
    let x_1813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1811.xy, x_1811.z);
    u_xlat29.x = x_1813;
  }
  let x_1816 : f32 = x_214.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1816) + 1.0f);
  let x_1821 : f32 = u_xlat29.x;
  let x_1823 : f32 = x_214.x_MainLightShadowParams.x;
  let x_1826 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1821 * x_1823) + x_1826);
  let x_1831 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1831);
  let x_1836 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1836 >= 1.0f);
  let x_1838 : bool = u_xlatb49;
  let x_1840 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1838 | x_1840);
  let x_1844 : bool = u_xlatb27.x;
  if (x_1844) {
    x_1845 = 1.0f;
  } else {
    let x_1850 : f32 = u_xlat5.x;
    x_1845 = x_1850;
  }
  let x_1851 : f32 = x_1845;
  u_xlat5.x = x_1851;
  let x_1853 : vec3<f32> = vs_TEXCOORD1;
  let x_1855 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat29 = (x_1853 + -(x_1855));
  let x_1859 : vec3<f32> = u_xlat29;
  let x_1860 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1859, x_1860);
  let x_1864 : f32 = u_xlat27.x;
  let x_1866 : f32 = x_214.x_MainLightShadowParams.z;
  let x_1869 : f32 = x_214.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1864 * x_1866) + x_1869);
  let x_1873 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1873, 0.0f, 1.0f);
  let x_1878 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1878) + 1.0f);
  let x_1882 : f32 = u_xlat27.x;
  let x_1883 : f32 = u_xlat49;
  let x_1886 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1882 * x_1883) + x_1886);
  let x_1895 : f32 = x_1893.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1895 == -1.0f));
  let x_1899 : bool = u_xlatb27.x;
  if (x_1899) {
    let x_1902 : vec3<f32> = vs_TEXCOORD1;
    let x_1905 : vec4<f32> = x_1893.x_MainLightWorldToLight[1i];
    u_xlat27 = (vec2<f32>(x_1902.y, x_1902.y) * vec2<f32>(x_1905.x, x_1905.y));
    let x_1909 : vec4<f32> = x_1893.x_MainLightWorldToLight[0i];
    let x_1911 : vec3<f32> = vs_TEXCOORD1;
    let x_1914 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1909.x, x_1909.y) * vec2<f32>(x_1911.x, x_1911.x)) + x_1914);
    let x_1917 : vec4<f32> = x_1893.x_MainLightWorldToLight[2i];
    let x_1919 : vec3<f32> = vs_TEXCOORD1;
    let x_1922 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1917.x, x_1917.y) * vec2<f32>(x_1919.z, x_1919.z)) + x_1922);
    let x_1924 : vec2<f32> = u_xlat27;
    let x_1926 : vec4<f32> = x_1893.x_MainLightWorldToLight[3i];
    u_xlat27 = (x_1924 + vec2<f32>(x_1926.x, x_1926.y));
    let x_1929 : vec2<f32> = u_xlat27;
    u_xlat27 = ((x_1929 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1937 : vec2<f32> = u_xlat27;
    let x_1939 : f32 = x_44.x_GlobalMipBias.x;
    let x_1940 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1937, x_1939);
    u_xlat8 = x_1940;
    let x_1942 : f32 = x_1893.x_MainLightCookieTextureFormat;
    let x_1944 : f32 = x_1893.x_MainLightCookieTextureFormat;
    let x_1946 : f32 = x_1893.x_MainLightCookieTextureFormat;
    let x_1948 : f32 = x_1893.x_MainLightCookieTextureFormat;
    let x_1949 : vec4<f32> = vec4<f32>(x_1942, x_1944, x_1946, x_1948);
    let x_1956 : vec4<bool> = (vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1949.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1956.x, x_1956.y);
    let x_1959 : bool = u_xlatb27.y;
    if (x_1959) {
      let x_1964 : f32 = u_xlat8.w;
      x_1960 = x_1964;
    } else {
      let x_1967 : f32 = u_xlat8.x;
      x_1960 = x_1967;
    }
    let x_1968 : f32 = x_1960;
    u_xlat49 = x_1968;
    let x_1970 : bool = u_xlatb27.x;
    if (x_1970) {
      let x_1974 : vec4<f32> = u_xlat8;
      x_1971 = vec3<f32>(x_1974.x, x_1974.y, x_1974.z);
    } else {
      let x_1977 : f32 = u_xlat49;
      x_1971 = vec3<f32>(x_1977, x_1977, x_1977);
    }
    let x_1979 : vec3<f32> = x_1971;
    u_xlat29 = x_1979;
  } else {
    u_xlat29.x = 1.0f;
    u_xlat29.y = 1.0f;
    u_xlat29.z = 1.0f;
  }
  let x_1984 : vec3<f32> = u_xlat29;
  let x_1986 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat29 = (x_1984 * vec3<f32>(x_1986.x, x_1986.y, x_1986.z));
  let x_1989 : vec3<f32> = u_xlat7;
  let x_1991 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1989.x, x_1989.x, x_1989.x) * x_1991);
  let x_1993 : vec3<f32> = u_xlat4;
  let x_1995 : vec3<f32> = u_xlat3;
  u_xlat27.x = dot(-(x_1993), x_1995);
  let x_1999 : f32 = u_xlat27.x;
  let x_2001 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1999 + x_2001);
  let x_2004 : vec3<f32> = u_xlat3;
  let x_2005 : vec2<f32> = u_xlat27;
  let x_2009 : vec3<f32> = u_xlat4;
  let x_2011 : vec3<f32> = ((x_2004 * -(vec3<f32>(x_2005.x, x_2005.x, x_2005.x))) + -(x_2009));
  let x_2012 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
  let x_2014 : vec3<f32> = u_xlat3;
  let x_2015 : vec3<f32> = u_xlat4;
  u_xlat27.x = dot(x_2014, x_2015);
  let x_2019 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2019, 0.0f, 1.0f);
  let x_2023 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_2023) + 1.0f);
  let x_2028 : f32 = u_xlat27.x;
  let x_2030 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2028 * x_2030);
  let x_2034 : f32 = u_xlat27.x;
  let x_2036 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2034 * x_2036);
  let x_2039 : f32 = u_xlat66;
  u_xlat49 = ((-(x_2039) * 0.699999988f) + 1.700000048f);
  let x_2045 : f32 = u_xlat66;
  let x_2046 : f32 = u_xlat49;
  u_xlat66 = (x_2045 * x_2046);
  let x_2048 : f32 = u_xlat66;
  u_xlat66 = (x_2048 * 6.0f);
  let x_2059 : vec4<f32> = u_xlat8;
  let x_2061 : f32 = u_xlat66;
  let x_2062 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2059.x, x_2059.y, x_2059.z), x_2061);
  u_xlat8 = x_2062;
  let x_2064 : f32 = u_xlat8.w;
  u_xlat66 = (x_2064 + -1.0f);
  let x_2067 : f32 = x_106.unity_SpecCube0_HDR.w;
  let x_2068 : f32 = u_xlat66;
  u_xlat66 = ((x_2067 * x_2068) + 1.0f);
  let x_2071 : f32 = u_xlat66;
  u_xlat66 = max(x_2071, 0.0f);
  let x_2073 : f32 = u_xlat66;
  u_xlat66 = log2(x_2073);
  let x_2075 : f32 = u_xlat66;
  let x_2077 : f32 = x_106.unity_SpecCube0_HDR.y;
  u_xlat66 = (x_2075 * x_2077);
  let x_2079 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2079);
  let x_2081 : f32 = u_xlat66;
  let x_2083 : f32 = x_106.unity_SpecCube0_HDR.x;
  u_xlat66 = (x_2081 * x_2083);
  let x_2085 : vec4<f32> = u_xlat8;
  let x_2087 : f32 = u_xlat66;
  let x_2089 : vec3<f32> = (vec3<f32>(x_2085.x, x_2085.y, x_2085.z) * vec3<f32>(x_2087, x_2087, x_2087));
  let x_2090 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2092 : f32 = u_xlat69;
  let x_2094 : f32 = u_xlat69;
  let x_2098 : vec2<f32> = ((vec2<f32>(x_2092, x_2092) * vec2<f32>(x_2094, x_2094)) + vec2<f32>(-1.0f, 1.0f));
  let x_2099 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2098.x, x_2098.y, x_2099.z, x_2099.w);
  let x_2102 : f32 = u_xlat9.y;
  u_xlat66 = (1.0f / x_2102);
  let x_2104 : vec4<f32> = u_xlat0;
  let x_2107 : f32 = u_xlat68;
  u_xlat31 = (-(vec3<f32>(x_2104.x, x_2104.y, x_2104.z)) + vec3<f32>(x_2107, x_2107, x_2107));
  let x_2110 : vec2<f32> = u_xlat27;
  let x_2112 : vec3<f32> = u_xlat31;
  let x_2114 : vec4<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2110.x, x_2110.x, x_2110.x) * x_2112) + vec3<f32>(x_2114.x, x_2114.y, x_2114.z));
  let x_2117 : f32 = u_xlat66;
  let x_2119 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2117, x_2117, x_2117) * x_2119);
  let x_2121 : vec4<f32> = u_xlat8;
  let x_2123 : vec3<f32> = u_xlat31;
  let x_2124 : vec3<f32> = (vec3<f32>(x_2121.x, x_2121.y, x_2121.z) * x_2123);
  let x_2125 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
  let x_2127 : vec4<f32> = u_xlat6;
  let x_2129 : vec3<f32> = u_xlat23;
  let x_2131 : vec4<f32> = u_xlat8;
  let x_2133 : vec3<f32> = ((vec3<f32>(x_2127.x, x_2127.y, x_2127.z) * x_2129) + vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
  let x_2134 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
  let x_2137 : f32 = u_xlat5.x;
  let x_2139 : f32 = x_106.unity_LightData.z;
  u_xlat66 = (x_2137 * x_2139);
  let x_2141 : vec3<f32> = u_xlat3;
  let x_2143 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat68 = dot(x_2141, vec3<f32>(x_2143.x, x_2143.y, x_2143.z));
  let x_2146 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2146, 0.0f, 1.0f);
  let x_2148 : f32 = u_xlat66;
  let x_2149 : f32 = u_xlat68;
  u_xlat66 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat66;
  let x_2153 : vec3<f32> = u_xlat29;
  let x_2154 : vec3<f32> = (vec3<f32>(x_2151, x_2151, x_2151) * x_2153);
  let x_2155 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2154.x, x_2154.y, x_2154.z, x_2155.w);
  let x_2157 : vec3<f32> = u_xlat4;
  let x_2159 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = (x_2157 + vec3<f32>(x_2159.x, x_2159.y, x_2159.z));
  let x_2162 : vec3<f32> = u_xlat29;
  let x_2163 : vec3<f32> = u_xlat29;
  u_xlat66 = dot(x_2162, x_2163);
  let x_2165 : f32 = u_xlat66;
  u_xlat66 = max(x_2165, 1.17549435e-37f);
  let x_2168 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_2168);
  let x_2170 : f32 = u_xlat66;
  let x_2172 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2170, x_2170, x_2170) * x_2172);
  let x_2174 : vec3<f32> = u_xlat3;
  let x_2175 : vec3<f32> = u_xlat29;
  u_xlat66 = dot(x_2174, x_2175);
  let x_2177 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2177, 0.0f, 1.0f);
  let x_2180 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2182 : vec3<f32> = u_xlat29;
  u_xlat68 = dot(vec3<f32>(x_2180.x, x_2180.y, x_2180.z), x_2182);
  let x_2184 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2184, 0.0f, 1.0f);
  let x_2186 : f32 = u_xlat66;
  let x_2187 : f32 = u_xlat66;
  u_xlat66 = (x_2186 * x_2187);
  let x_2189 : f32 = u_xlat66;
  let x_2191 : f32 = u_xlat9.x;
  u_xlat66 = ((x_2189 * x_2191) + 1.000010014f);
  let x_2195 : f32 = u_xlat68;
  let x_2196 : f32 = u_xlat68;
  u_xlat68 = (x_2195 * x_2196);
  let x_2198 : f32 = u_xlat66;
  let x_2199 : f32 = u_xlat66;
  u_xlat66 = (x_2198 * x_2199);
  let x_2201 : f32 = u_xlat68;
  u_xlat68 = max(x_2201, 0.100000001f);
  let x_2204 : f32 = u_xlat66;
  let x_2205 : f32 = u_xlat68;
  u_xlat66 = (x_2204 * x_2205);
  let x_2207 : f32 = u_xlat71;
  let x_2208 : f32 = u_xlat66;
  u_xlat66 = (x_2207 * x_2208);
  let x_2210 : f32 = u_xlat70;
  let x_2211 : f32 = u_xlat66;
  u_xlat66 = (x_2210 / x_2211);
  let x_2213 : vec4<f32> = u_xlat0;
  let x_2215 : f32 = u_xlat66;
  let x_2218 : vec3<f32> = u_xlat23;
  u_xlat29 = ((vec3<f32>(x_2213.x, x_2213.y, x_2213.z) * vec3<f32>(x_2215, x_2215, x_2215)) + x_2218);
  let x_2220 : vec4<f32> = u_xlat5;
  let x_2222 : vec3<f32> = u_xlat29;
  let x_2223 : vec3<f32> = (vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * x_2222);
  let x_2224 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2223.x, x_2223.y, x_2223.z, x_2224.w);
  let x_2227 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2229 : f32 = x_106.unity_LightData.y;
  u_xlat66 = min(x_2227, x_2229);
  let x_2231 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_2231));
  let x_2235 : f32 = x_1893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2237 : f32 = x_1893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2239 : f32 = x_1893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2241 : f32 = x_1893.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2242 : vec4<f32> = vec4<f32>(x_2235, x_2237, x_2239, x_2241);
  let x_2248 : vec4<bool> = (vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2242.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb29 = vec2<bool>(x_2248.x, x_2248.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2259 : u32 = u_xlatu_loop_1;
    let x_2260 : u32 = u_xlatu66;
    if ((x_2259 < x_2260)) {
    } else {
      break;
    }
    let x_2263 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2263 >> 2u);
    let x_2266 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2266 & 3u));
    let x_2269 : u32 = u_xlatu69;
    let x_2272 : vec4<f32> = x_106.unity_LightIndices[bitcast<i32>(x_2269)];
    let x_2282 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2287 : vec4<u32> = indexable[x_2282];
    u_xlat69 = dot(x_2272, bitcast<vec4<f32>>(x_2287));
    let x_2290 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2290));
    let x_2293 : vec3<f32> = vs_TEXCOORD1;
    let x_2305 : u32 = u_xlatu69;
    let x_2308 : vec4<f32> = x_2304.x_AdditionalLightsPosition[bitcast<i32>(x_2305)];
    let x_2311 : u32 = u_xlatu69;
    let x_2314 : vec4<f32> = x_2304.x_AdditionalLightsPosition[bitcast<i32>(x_2311)];
    u_xlat31 = ((-(x_2293) * vec3<f32>(x_2308.w, x_2308.w, x_2308.w)) + vec3<f32>(x_2314.x, x_2314.y, x_2314.z));
    let x_2317 : vec3<f32> = u_xlat31;
    let x_2318 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2317, x_2318);
    let x_2320 : f32 = u_xlat73;
    u_xlat73 = max(x_2320, 6.10351562e-05f);
    let x_2324 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2324);
    let x_2326 : f32 = u_xlat74;
    let x_2328 : vec3<f32> = u_xlat31;
    let x_2329 : vec3<f32> = (vec3<f32>(x_2326, x_2326, x_2326) * x_2328);
    let x_2330 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
    let x_2333 : f32 = u_xlat73;
    u_xlat76 = (1.0f / x_2333);
    let x_2335 : f32 = u_xlat73;
    let x_2336 : u32 = u_xlatu69;
    let x_2339 : f32 = x_2304.x_AdditionalLightsAttenuation[bitcast<i32>(x_2336)].x;
    u_xlat73 = (x_2335 * x_2339);
    let x_2341 : f32 = u_xlat73;
    let x_2343 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2341) * x_2343) + 1.0f);
    let x_2346 : f32 = u_xlat73;
    u_xlat73 = max(x_2346, 0.0f);
    let x_2348 : f32 = u_xlat73;
    let x_2349 : f32 = u_xlat73;
    u_xlat73 = (x_2348 * x_2349);
    let x_2351 : f32 = u_xlat73;
    let x_2352 : f32 = u_xlat76;
    u_xlat73 = (x_2351 * x_2352);
    let x_2354 : u32 = u_xlatu69;
    let x_2357 : vec4<f32> = x_2304.x_AdditionalLightsSpotDir[bitcast<i32>(x_2354)];
    let x_2359 : vec4<f32> = u_xlat10;
    u_xlat76 = dot(vec3<f32>(x_2357.x, x_2357.y, x_2357.z), vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
    let x_2362 : f32 = u_xlat76;
    let x_2363 : u32 = u_xlatu69;
    let x_2366 : f32 = x_2304.x_AdditionalLightsAttenuation[bitcast<i32>(x_2363)].z;
    let x_2368 : u32 = u_xlatu69;
    let x_2371 : f32 = x_2304.x_AdditionalLightsAttenuation[bitcast<i32>(x_2368)].w;
    u_xlat76 = ((x_2362 * x_2366) + x_2371);
    let x_2373 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2373, 0.0f, 1.0f);
    let x_2375 : f32 = u_xlat76;
    let x_2376 : f32 = u_xlat76;
    u_xlat76 = (x_2375 * x_2376);
    let x_2378 : f32 = u_xlat73;
    let x_2379 : f32 = u_xlat76;
    u_xlat73 = (x_2378 * x_2379);
    let x_2382 : u32 = u_xlatu69;
    u_xlatu76 = (x_2382 >> 5u);
    let x_2385 : u32 = u_xlatu69;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_2385) & 31i)));
    let x_2391 : i32 = u_xlati11;
    let x_2393 : u32 = u_xlatu76;
    let x_2396 : f32 = x_1893.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2393)].el;
    u_xlati76 = bitcast<i32>((bitcast<u32>(x_2391) & bitcast<u32>(x_2396)));
    let x_2400 : i32 = u_xlati76;
    if ((x_2400 != 0i)) {
      let x_2410 : u32 = u_xlatu69;
      let x_2413 : f32 = x_2409.x_AdditionalLightsLightTypes[bitcast<i32>(x_2410)].el;
      u_xlati76 = i32(x_2413);
      let x_2415 : i32 = u_xlati76;
      u_xlati11 = select(1i, 0i, (x_2415 != 0i));
      let x_2419 : u32 = u_xlatu69;
      u_xlati33 = (bitcast<i32>(x_2419) << bitcast<u32>(2i));
      let x_2422 : i32 = u_xlati11;
      if ((x_2422 != 0i)) {
        let x_2426 : vec3<f32> = vs_TEXCOORD1;
        let x_2428 : i32 = u_xlati33;
        let x_2431 : i32 = u_xlati33;
        let x_2435 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2428 + 1i) / 4i)][((x_2431 + 1i) % 4i)];
        let x_2437 : vec3<f32> = (vec3<f32>(x_2426.y, x_2426.y, x_2426.y) * vec3<f32>(x_2435.x, x_2435.y, x_2435.w));
        let x_2438 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2437.x, x_2438.y, x_2437.y, x_2437.z);
        let x_2440 : i32 = u_xlati33;
        let x_2442 : i32 = u_xlati33;
        let x_2445 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[(x_2440 / 4i)][(x_2442 % 4i)];
        let x_2447 : vec3<f32> = vs_TEXCOORD1;
        let x_2450 : vec4<f32> = u_xlat11;
        let x_2452 : vec3<f32> = ((vec3<f32>(x_2445.x, x_2445.y, x_2445.w) * vec3<f32>(x_2447.x, x_2447.x, x_2447.x)) + vec3<f32>(x_2450.x, x_2450.z, x_2450.w));
        let x_2453 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2452.x, x_2453.y, x_2452.y, x_2452.z);
        let x_2455 : i32 = u_xlati33;
        let x_2458 : i32 = u_xlati33;
        let x_2462 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2455 + 2i) / 4i)][((x_2458 + 2i) % 4i)];
        let x_2464 : vec3<f32> = vs_TEXCOORD1;
        let x_2467 : vec4<f32> = u_xlat11;
        let x_2469 : vec3<f32> = ((vec3<f32>(x_2462.x, x_2462.y, x_2462.w) * vec3<f32>(x_2464.z, x_2464.z, x_2464.z)) + vec3<f32>(x_2467.x, x_2467.z, x_2467.w));
        let x_2470 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2469.x, x_2470.y, x_2469.y, x_2469.z);
        let x_2472 : vec4<f32> = u_xlat11;
        let x_2474 : i32 = u_xlati33;
        let x_2477 : i32 = u_xlati33;
        let x_2481 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2474 + 3i) / 4i)][((x_2477 + 3i) % 4i)];
        let x_2483 : vec3<f32> = (vec3<f32>(x_2472.x, x_2472.z, x_2472.w) + vec3<f32>(x_2481.x, x_2481.y, x_2481.w));
        let x_2484 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2483.x, x_2484.y, x_2483.y, x_2483.z);
        let x_2486 : vec4<f32> = u_xlat11;
        let x_2488 : vec4<f32> = u_xlat11;
        let x_2490 : vec2<f32> = (vec2<f32>(x_2486.x, x_2486.z) / vec2<f32>(x_2488.w, x_2488.w));
        let x_2491 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2490.x, x_2491.y, x_2490.y, x_2491.w);
        let x_2493 : vec4<f32> = u_xlat11;
        let x_2496 : vec2<f32> = ((vec2<f32>(x_2493.x, x_2493.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2497 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2496.x, x_2497.y, x_2496.y, x_2497.w);
        let x_2499 : vec4<f32> = u_xlat11;
        let x_2503 : vec2<f32> = clamp(vec2<f32>(x_2499.x, x_2499.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2503.x, x_2504.y, x_2503.y, x_2504.w);
        let x_2506 : u32 = u_xlatu69;
        let x_2509 : vec4<f32> = x_2409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2506)];
        let x_2511 : vec4<f32> = u_xlat11;
        let x_2514 : u32 = u_xlatu69;
        let x_2517 : vec4<f32> = x_2409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2514)];
        let x_2519 : vec2<f32> = ((vec2<f32>(x_2509.x, x_2509.y) * vec2<f32>(x_2511.x, x_2511.z)) + vec2<f32>(x_2517.z, x_2517.w));
        let x_2520 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2519.x, x_2520.y, x_2519.y, x_2520.w);
      } else {
        let x_2524 : i32 = u_xlati76;
        u_xlatb76 = (x_2524 == 1i);
        let x_2526 : bool = u_xlatb76;
        u_xlati76 = select(0i, 1i, x_2526);
        let x_2528 : i32 = u_xlati76;
        if ((x_2528 != 0i)) {
          let x_2532 : vec3<f32> = vs_TEXCOORD1;
          let x_2534 : i32 = u_xlati33;
          let x_2537 : i32 = u_xlati33;
          let x_2541 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2534 + 1i) / 4i)][((x_2537 + 1i) % 4i)];
          let x_2543 : vec2<f32> = (vec2<f32>(x_2532.y, x_2532.y) * vec2<f32>(x_2541.x, x_2541.y));
          let x_2544 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
          let x_2546 : i32 = u_xlati33;
          let x_2548 : i32 = u_xlati33;
          let x_2551 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[(x_2546 / 4i)][(x_2548 % 4i)];
          let x_2553 : vec3<f32> = vs_TEXCOORD1;
          let x_2556 : vec4<f32> = u_xlat12;
          let x_2558 : vec2<f32> = ((vec2<f32>(x_2551.x, x_2551.y) * vec2<f32>(x_2553.x, x_2553.x)) + vec2<f32>(x_2556.x, x_2556.y));
          let x_2559 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2558.x, x_2558.y, x_2559.z, x_2559.w);
          let x_2561 : i32 = u_xlati33;
          let x_2564 : i32 = u_xlati33;
          let x_2568 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2561 + 2i) / 4i)][((x_2564 + 2i) % 4i)];
          let x_2570 : vec3<f32> = vs_TEXCOORD1;
          let x_2573 : vec4<f32> = u_xlat12;
          let x_2575 : vec2<f32> = ((vec2<f32>(x_2568.x, x_2568.y) * vec2<f32>(x_2570.z, x_2570.z)) + vec2<f32>(x_2573.x, x_2573.y));
          let x_2576 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2575.x, x_2575.y, x_2576.z, x_2576.w);
          let x_2578 : vec4<f32> = u_xlat12;
          let x_2580 : i32 = u_xlati33;
          let x_2583 : i32 = u_xlati33;
          let x_2587 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2580 + 3i) / 4i)][((x_2583 + 3i) % 4i)];
          let x_2589 : vec2<f32> = (vec2<f32>(x_2578.x, x_2578.y) + vec2<f32>(x_2587.x, x_2587.y));
          let x_2590 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2589.x, x_2589.y, x_2590.z, x_2590.w);
          let x_2592 : vec4<f32> = u_xlat12;
          let x_2595 : vec2<f32> = ((vec2<f32>(x_2592.x, x_2592.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2596 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2595.x, x_2595.y, x_2596.z, x_2596.w);
          let x_2598 : vec4<f32> = u_xlat12;
          let x_2600 : vec2<f32> = fract(vec2<f32>(x_2598.x, x_2598.y));
          let x_2601 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
          let x_2603 : u32 = u_xlatu69;
          let x_2606 : vec4<f32> = x_2409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2603)];
          let x_2608 : vec4<f32> = u_xlat12;
          let x_2611 : u32 = u_xlatu69;
          let x_2614 : vec4<f32> = x_2409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2611)];
          let x_2616 : vec2<f32> = ((vec2<f32>(x_2606.x, x_2606.y) * vec2<f32>(x_2608.x, x_2608.y)) + vec2<f32>(x_2614.z, x_2614.w));
          let x_2617 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2616.x, x_2617.y, x_2616.y, x_2617.w);
        } else {
          let x_2620 : vec3<f32> = vs_TEXCOORD1;
          let x_2622 : i32 = u_xlati33;
          let x_2625 : i32 = u_xlati33;
          let x_2629 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2622 + 1i) / 4i)][((x_2625 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2620.y, x_2620.y, x_2620.y, x_2620.y) * x_2629);
          let x_2631 : i32 = u_xlati33;
          let x_2633 : i32 = u_xlati33;
          let x_2636 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[(x_2631 / 4i)][(x_2633 % 4i)];
          let x_2637 : vec3<f32> = vs_TEXCOORD1;
          let x_2640 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2636 * vec4<f32>(x_2637.x, x_2637.x, x_2637.x, x_2637.x)) + x_2640);
          let x_2642 : i32 = u_xlati33;
          let x_2645 : i32 = u_xlati33;
          let x_2649 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2642 + 2i) / 4i)][((x_2645 + 2i) % 4i)];
          let x_2650 : vec3<f32> = vs_TEXCOORD1;
          let x_2653 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2649 * vec4<f32>(x_2650.z, x_2650.z, x_2650.z, x_2650.z)) + x_2653);
          let x_2655 : vec4<f32> = u_xlat12;
          let x_2656 : i32 = u_xlati33;
          let x_2659 : i32 = u_xlati33;
          let x_2663 : vec4<f32> = x_2409.x_AdditionalLightsWorldToLights[((x_2656 + 3i) / 4i)][((x_2659 + 3i) % 4i)];
          u_xlat12 = (x_2655 + x_2663);
          let x_2665 : vec4<f32> = u_xlat12;
          let x_2667 : vec4<f32> = u_xlat12;
          let x_2669 : vec3<f32> = (vec3<f32>(x_2665.x, x_2665.y, x_2665.z) / vec3<f32>(x_2667.w, x_2667.w, x_2667.w));
          let x_2670 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2669.x, x_2669.y, x_2669.z, x_2670.w);
          let x_2672 : vec4<f32> = u_xlat12;
          let x_2674 : vec4<f32> = u_xlat12;
          u_xlat76 = dot(vec3<f32>(x_2672.x, x_2672.y, x_2672.z), vec3<f32>(x_2674.x, x_2674.y, x_2674.z));
          let x_2677 : f32 = u_xlat76;
          u_xlat76 = inverseSqrt(x_2677);
          let x_2679 : f32 = u_xlat76;
          let x_2681 : vec4<f32> = u_xlat12;
          let x_2683 : vec3<f32> = (vec3<f32>(x_2679, x_2679, x_2679) * vec3<f32>(x_2681.x, x_2681.y, x_2681.z));
          let x_2684 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2683.x, x_2683.y, x_2683.z, x_2684.w);
          let x_2686 : vec4<f32> = u_xlat12;
          u_xlat76 = dot(abs(vec3<f32>(x_2686.x, x_2686.y, x_2686.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2691 : f32 = u_xlat76;
          u_xlat76 = max(x_2691, 0.000001f);
          let x_2694 : f32 = u_xlat76;
          u_xlat76 = (1.0f / x_2694);
          let x_2696 : f32 = u_xlat76;
          let x_2698 : vec4<f32> = u_xlat12;
          let x_2700 : vec3<f32> = (vec3<f32>(x_2696, x_2696, x_2696) * vec3<f32>(x_2698.z, x_2698.x, x_2698.y));
          let x_2701 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2700.x, x_2700.y, x_2700.z, x_2701.w);
          let x_2704 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2704);
          let x_2708 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2708, 0.0f, 1.0f);
          let x_2714 : vec4<f32> = u_xlat13;
          let x_2717 : vec4<bool> = (vec4<f32>(x_2714.y, x_2714.y, x_2714.z, x_2714.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2718 : vec2<bool> = vec2<bool>(x_2717.x, x_2717.z);
          let x_2719 : vec3<bool> = u_xlatb33;
          u_xlatb33 = vec3<bool>(x_2718.x, x_2719.y, x_2718.y);
          let x_2723 : bool = u_xlatb33.x;
          if (x_2723) {
            let x_2728 : f32 = u_xlat13.x;
            x_2724 = x_2728;
          } else {
            let x_2731 : f32 = u_xlat13.x;
            x_2724 = -(x_2731);
          }
          let x_2733 : f32 = x_2724;
          u_xlat33.x = x_2733;
          let x_2736 : bool = u_xlatb33.z;
          if (x_2736) {
            let x_2741 : f32 = u_xlat13.x;
            x_2737 = x_2741;
          } else {
            let x_2744 : f32 = u_xlat13.x;
            x_2737 = -(x_2744);
          }
          let x_2746 : f32 = x_2737;
          u_xlat33.z = x_2746;
          let x_2748 : vec4<f32> = u_xlat12;
          let x_2750 : f32 = u_xlat76;
          let x_2753 : vec3<f32> = u_xlat33;
          let x_2755 : vec2<f32> = ((vec2<f32>(x_2748.x, x_2748.y) * vec2<f32>(x_2750, x_2750)) + vec2<f32>(x_2753.x, x_2753.z));
          let x_2756 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2755.x, x_2756.y, x_2755.y);
          let x_2758 : vec3<f32> = u_xlat33;
          let x_2761 : vec2<f32> = ((vec2<f32>(x_2758.x, x_2758.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2762 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2761.x, x_2762.y, x_2761.y);
          let x_2764 : vec3<f32> = u_xlat33;
          let x_2768 : vec2<f32> = clamp(vec2<f32>(x_2764.x, x_2764.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2769 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2768.x, x_2769.y, x_2768.y);
          let x_2771 : u32 = u_xlatu69;
          let x_2774 : vec4<f32> = x_2409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2771)];
          let x_2776 : vec3<f32> = u_xlat33;
          let x_2779 : u32 = u_xlatu69;
          let x_2782 : vec4<f32> = x_2409.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2779)];
          let x_2784 : vec2<f32> = ((vec2<f32>(x_2774.x, x_2774.y) * vec2<f32>(x_2776.x, x_2776.z)) + vec2<f32>(x_2782.z, x_2782.w));
          let x_2785 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2784.x, x_2785.y, x_2784.y, x_2785.w);
        }
      }
      let x_2792 : vec4<f32> = u_xlat11;
      let x_2795 : f32 = x_44.x_GlobalMipBias.x;
      let x_2796 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2792.x, x_2792.z), x_2795);
      u_xlat11 = x_2796;
      let x_2798 : bool = u_xlatb29.y;
      if (x_2798) {
        let x_2803 : f32 = u_xlat11.w;
        x_2799 = x_2803;
      } else {
        let x_2806 : f32 = u_xlat11.x;
        x_2799 = x_2806;
      }
      let x_2807 : f32 = x_2799;
      u_xlat76 = x_2807;
      let x_2809 : bool = u_xlatb29.x;
      if (x_2809) {
        let x_2813 : vec4<f32> = u_xlat11;
        x_2810 = vec3<f32>(x_2813.x, x_2813.y, x_2813.z);
      } else {
        let x_2816 : f32 = u_xlat76;
        x_2810 = vec3<f32>(x_2816, x_2816, x_2816);
      }
      let x_2818 : vec3<f32> = x_2810;
      let x_2819 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2818.x, x_2818.y, x_2818.z, x_2819.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2825 : vec4<f32> = u_xlat11;
    let x_2827 : u32 = u_xlatu69;
    let x_2830 : vec4<f32> = x_2304.x_AdditionalLightsColor[bitcast<i32>(x_2827)];
    let x_2832 : vec3<f32> = (vec3<f32>(x_2825.x, x_2825.y, x_2825.z) * vec3<f32>(x_2830.x, x_2830.y, x_2830.z));
    let x_2833 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2833.w);
    let x_2835 : vec3<f32> = u_xlat7;
    let x_2837 : vec4<f32> = u_xlat11;
    let x_2839 : vec3<f32> = (vec3<f32>(x_2835.x, x_2835.x, x_2835.x) * vec3<f32>(x_2837.x, x_2837.y, x_2837.z));
    let x_2840 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2839.x, x_2839.y, x_2839.z, x_2840.w);
    let x_2842 : vec3<f32> = u_xlat3;
    let x_2843 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(x_2842, vec3<f32>(x_2843.x, x_2843.y, x_2843.z));
    let x_2846 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2846, 0.0f, 1.0f);
    let x_2848 : f32 = u_xlat69;
    let x_2849 : f32 = u_xlat73;
    u_xlat69 = (x_2848 * x_2849);
    let x_2851 : f32 = u_xlat69;
    let x_2853 : vec4<f32> = u_xlat11;
    let x_2855 : vec3<f32> = (vec3<f32>(x_2851, x_2851, x_2851) * vec3<f32>(x_2853.x, x_2853.y, x_2853.z));
    let x_2856 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2855.x, x_2855.y, x_2855.z, x_2856.w);
    let x_2858 : vec3<f32> = u_xlat31;
    let x_2859 : f32 = u_xlat74;
    let x_2862 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2858 * vec3<f32>(x_2859, x_2859, x_2859)) + x_2862);
    let x_2864 : vec3<f32> = u_xlat31;
    let x_2865 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(x_2864, x_2865);
    let x_2867 : f32 = u_xlat69;
    u_xlat69 = max(x_2867, 1.17549435e-37f);
    let x_2869 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2869);
    let x_2871 : f32 = u_xlat69;
    let x_2873 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2871, x_2871, x_2871) * x_2873);
    let x_2875 : vec3<f32> = u_xlat3;
    let x_2876 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(x_2875, x_2876);
    let x_2878 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2878, 0.0f, 1.0f);
    let x_2880 : vec4<f32> = u_xlat10;
    let x_2882 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2880.x, x_2880.y, x_2880.z), x_2882);
    let x_2884 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2884, 0.0f, 1.0f);
    let x_2886 : f32 = u_xlat69;
    let x_2887 : f32 = u_xlat69;
    u_xlat69 = (x_2886 * x_2887);
    let x_2889 : f32 = u_xlat69;
    let x_2891 : f32 = u_xlat9.x;
    u_xlat69 = ((x_2889 * x_2891) + 1.000010014f);
    let x_2894 : f32 = u_xlat73;
    let x_2895 : f32 = u_xlat73;
    u_xlat73 = (x_2894 * x_2895);
    let x_2897 : f32 = u_xlat69;
    let x_2898 : f32 = u_xlat69;
    u_xlat69 = (x_2897 * x_2898);
    let x_2900 : f32 = u_xlat73;
    u_xlat73 = max(x_2900, 0.100000001f);
    let x_2902 : f32 = u_xlat69;
    let x_2903 : f32 = u_xlat73;
    u_xlat69 = (x_2902 * x_2903);
    let x_2905 : f32 = u_xlat71;
    let x_2906 : f32 = u_xlat69;
    u_xlat69 = (x_2905 * x_2906);
    let x_2908 : f32 = u_xlat70;
    let x_2909 : f32 = u_xlat69;
    u_xlat69 = (x_2908 / x_2909);
    let x_2911 : vec4<f32> = u_xlat0;
    let x_2913 : f32 = u_xlat69;
    let x_2916 : vec3<f32> = u_xlat23;
    u_xlat31 = ((vec3<f32>(x_2911.x, x_2911.y, x_2911.z) * vec3<f32>(x_2913, x_2913, x_2913)) + x_2916);
    let x_2918 : vec3<f32> = u_xlat31;
    let x_2919 : vec4<f32> = u_xlat11;
    let x_2922 : vec4<f32> = u_xlat8;
    let x_2924 : vec3<f32> = ((x_2918 * vec3<f32>(x_2919.x, x_2919.y, x_2919.z)) + vec3<f32>(x_2922.x, x_2922.y, x_2922.z));
    let x_2925 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2924.x, x_2924.y, x_2924.z, x_2925.w);

    continuing {
      let x_2927 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2927 + bitcast<u32>(1i));
    }
  }
  let x_2929 : vec4<f32> = u_xlat6;
  let x_2931 : f32 = u_xlat72;
  let x_2934 : vec4<f32> = u_xlat5;
  let x_2936 : vec3<f32> = ((vec3<f32>(x_2929.x, x_2929.y, x_2929.z) * vec3<f32>(x_2931, x_2931, x_2931)) + vec3<f32>(x_2934.x, x_2934.y, x_2934.z));
  let x_2937 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2936.x, x_2936.y, x_2936.z, x_2937.w);
  let x_2939 : vec4<f32> = u_xlat8;
  let x_2941 : vec4<f32> = u_xlat0;
  let x_2943 : vec3<f32> = (vec3<f32>(x_2939.x, x_2939.y, x_2939.z) + vec3<f32>(x_2941.x, x_2941.y, x_2941.z));
  let x_2944 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2944.w);
  let x_2948 : vec3<f32> = u_xlat2;
  let x_2950 : vec4<f32> = x_57.x_EmissionColor;
  let x_2953 : vec4<f32> = u_xlat0;
  let x_2955 : vec3<f32> = ((x_2948 * vec3<f32>(x_2950.x, x_2950.y, x_2950.z)) + vec3<f32>(x_2953.x, x_2953.y, x_2953.z));
  let x_2956 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2956.w);
  let x_2961 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2961 == 1.0f);
  let x_2963 : bool = u_xlatb0;
  if (x_2963) {
    let x_2968 : f32 = u_xlat1.x;
    x_2964 = x_2968;
  } else {
    x_2964 = 1.0f;
  }
  let x_2970 : f32 = x_2964;
  SV_Target0.w = x_2970;
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

