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

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_160 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1874 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2050 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2289 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2394 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb66 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat68 : f32;
  var u_xlat4 : vec3<f32>;
  var x_107 : f32;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlat66 : f32;
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
  var x_1826 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat49 : f32;
  var x_1941 : f32;
  var x_1952 : vec3<f32>;
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
  var x_2709 : f32;
  var x_2722 : f32;
  var x_2784 : f32;
  var x_2795 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_2949 : f32;
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
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb66 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat68 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat68;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_106 : bool = u_xlatb66;
  if (x_106) {
    let x_111 : f32 = u_xlat3.x;
    x_107 = x_111;
  } else {
    let x_117 : f32 = x_44.unity_MatrixV[0i].z;
    x_107 = x_117;
  }
  let x_118 : f32 = x_107;
  u_xlat4.x = x_118;
  let x_120 : bool = u_xlatb66;
  if (x_120) {
    let x_126 : f32 = u_xlat3.y;
    x_121 = x_126;
  } else {
    let x_129 : f32 = x_44.unity_MatrixV[1i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat4.y = x_130;
  let x_132 : bool = u_xlatb66;
  if (x_132) {
    let x_137 : f32 = u_xlat3.z;
    x_133 = x_137;
  } else {
    let x_140 : f32 = x_44.unity_MatrixV[2i].z;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat4.z = x_141;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  u_xlat66 = dot(x_145, x_146);
  let x_148 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat66;
  let x_152 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_150, x_150, x_150) * x_152);
  let x_155 : vec3<f32> = vs_TEXCOORD1;
  let x_162 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres0;
  let x_165 : vec3<f32> = (x_155 + -(vec3<f32>(x_162.x, x_162.y, x_162.z)));
  let x_166 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_169 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_186 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_160.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat5;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat6;
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_207 : vec3<f32> = u_xlat7;
  let x_208 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_207, x_208);
  let x_211 : vec4<f32> = u_xlat8;
  let x_213 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_220 : vec4<f32> = u_xlat5;
  let x_223 : vec4<f32> = x_160.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_220 < x_223);
  let x_226 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_226);
  let x_230 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_242);
  let x_248 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_248);
  let x_252 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_252);
  let x_255 : vec4<f32> = u_xlat5;
  let x_257 : vec4<f32> = u_xlat6;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_257.y, x_257.z, x_257.w));
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = max(vec3<f32>(x_262.x, x_262.y, x_262.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_266 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_266.x, x_265.x, x_265.y, x_265.z);
  let x_268 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_268, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_274 : f32 = u_xlat66;
  u_xlat66 = (-(x_274) + 4.0f);
  let x_279 : f32 = u_xlat66;
  u_xlatu66 = u32(x_279);
  let x_283 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : i32 = u_xlati66;
  let x_291 : i32 = u_xlati66;
  let x_295 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_288 + 1i) / 4i)][((x_291 + 1i) % 4i)];
  let x_297 : vec3<f32> = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : i32 = u_xlati66;
  let x_302 : i32 = u_xlati66;
  let x_305 : vec4<f32> = x_160.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec4<f32> = u_xlat5;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati66;
  let x_318 : i32 = u_xlati66;
  let x_322 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_315 + 2i) / 4i)][((x_318 + 2i) % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat5;
  let x_334 : i32 = u_xlati66;
  let x_337 : i32 = u_xlati66;
  let x_341 : vec4<f32> = x_160.x_MainLightWorldToShadow[((x_334 + 3i) / 4i)][((x_337 + 3i) % 4i)];
  let x_343 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_352 : vec2<f32> = vs_TEXCOORD8;
  let x_354 : f32 = x_44.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_352, x_354);
  u_xlat6 = x_355;
  let x_360 : vec2<f32> = vs_TEXCOORD8;
  let x_362 : f32 = x_44.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_360, x_362);
  u_xlat7 = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat6;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec3<f32> = u_xlat3;
  let x_373 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_372, vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat66;
  u_xlat66 = (x_376 + 0.5f);
  let x_379 : f32 = u_xlat66;
  let x_381 : vec3<f32> = u_xlat7;
  let x_382 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * x_381);
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = u_xlat6.w;
  u_xlat66 = max(x_386, 0.0001f);
  let x_389 : vec4<f32> = u_xlat6;
  let x_391 : f32 = u_xlat66;
  let x_393 : vec3<f32> = (vec3<f32>(x_389.x, x_389.y, x_389.z) / vec3<f32>(x_391, x_391, x_391));
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_398 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_399 : vec2<f32> = vec2<f32>(x_398.x, x_398.y);
  let x_403 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_399.x, x_399.y));
  let x_404 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_403.x, x_403.y, x_404.z);
  let x_406 : vec3<f32> = u_xlat7;
  let x_408 : vec4<f32> = hlslcc_FragCoord;
  let x_410 : vec2<f32> = (vec2<f32>(x_406.x, x_406.y) * vec2<f32>(x_408.x, x_408.y));
  let x_411 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_410.x, x_410.y, x_411.z);
  let x_414 : f32 = u_xlat7.y;
  let x_417 : f32 = x_44.x_ScaleBiasRt.x;
  let x_420 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat66 = ((x_414 * x_417) + x_420);
  let x_422 : f32 = u_xlat66;
  u_xlat7.z = (-(x_422) + 1.0f);
  let x_427 : f32 = x_57.x_Metallic;
  u_xlat66 = ((-(x_427) * 0.959999979f) + 0.959999979f);
  let x_432 : f32 = u_xlat66;
  let x_435 : f32 = x_57.x_Smoothness;
  u_xlat68 = (-(x_432) + x_435);
  let x_438 : f32 = u_xlat66;
  let x_440 : vec4<f32> = u_xlat1;
  u_xlat23 = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_440.y, x_440.z, x_440.w));
  let x_443 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = x_57.x_BaseColor;
  let x_451 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_446.x, x_446.y, x_446.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = x_57.x_Metallic;
  let x_457 : f32 = x_57.x_Metallic;
  let x_459 : f32 = x_57.x_Metallic;
  let x_460 : vec3<f32> = vec3<f32>(x_455, x_457, x_459);
  let x_465 : vec4<f32> = u_xlat0;
  let x_470 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : f32 = x_57.x_Smoothness;
  u_xlat66 = (-(x_474) + 1.0f);
  let x_478 : f32 = u_xlat66;
  let x_479 : f32 = u_xlat66;
  u_xlat69 = (x_478 * x_479);
  let x_481 : f32 = u_xlat69;
  u_xlat69 = max(x_481, 0.0078125f);
  let x_485 : f32 = u_xlat69;
  let x_486 : f32 = u_xlat69;
  u_xlat70 = (x_485 * x_486);
  let x_488 : f32 = u_xlat68;
  u_xlat68 = (x_488 + 1.0f);
  let x_490 : f32 = u_xlat68;
  u_xlat68 = clamp(x_490, 0.0f, 1.0f);
  let x_493 : f32 = u_xlat69;
  u_xlat71 = ((x_493 * 4.0f) + 2.0f);
  let x_502 : vec3<f32> = u_xlat7;
  let x_505 : f32 = x_44.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_502.x, x_502.z), x_505);
  u_xlat72 = x_506.x;
  let x_508 : f32 = u_xlat72;
  u_xlat7.x = (x_508 + -1.0f);
  let x_512 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_514 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_512 * x_514) + 1.0f);
  let x_518 : f32 = u_xlat72;
  u_xlat72 = min(x_518, 1.0f);
  let x_524 : f32 = x_160.x_MainLightShadowParams.y;
  u_xlatb29.x = (0.0f < x_524);
  let x_528 : bool = u_xlatb29.x;
  if (x_528) {
    let x_532 : f32 = x_160.x_MainLightShadowParams.y;
    u_xlatb29.x = (x_532 == 1.0f);
    let x_536 : bool = u_xlatb29.x;
    if (x_536) {
      let x_539 : vec4<f32> = u_xlat5;
      let x_542 : vec4<f32> = x_160.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y) + x_542);
      let x_545 : vec4<f32> = u_xlat8;
      let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
      let x_548 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_561 : vec3<f32> = txVec0;
      let x_563 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_561.xy, x_561.z);
      u_xlat9.x = x_563;
      let x_566 : vec4<f32> = u_xlat8;
      let x_567 : vec2<f32> = vec2<f32>(x_566.z, x_566.w);
      let x_569 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_567.x, x_567.y, x_569);
      let x_576 : vec3<f32> = txVec1;
      let x_578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_576.xy, x_576.z);
      u_xlat9.y = x_578;
      let x_580 : vec4<f32> = u_xlat5;
      let x_583 : vec4<f32> = x_160.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) + x_583);
      let x_586 : vec4<f32> = u_xlat8;
      let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
      let x_589 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_587.x, x_587.y, x_589);
      let x_596 : vec3<f32> = txVec2;
      let x_598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_596.xy, x_596.z);
      u_xlat9.z = x_598;
      let x_601 : vec4<f32> = u_xlat8;
      let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
      let x_604 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_602.x, x_602.y, x_604);
      let x_611 : vec3<f32> = txVec3;
      let x_613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_611.xy, x_611.z);
      u_xlat9.w = x_613;
      let x_616 : vec4<f32> = u_xlat9;
      u_xlat29.x = dot(x_616, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_624 : f32 = x_160.x_MainLightShadowParams.y;
      u_xlatb51 = (x_624 == 2.0f);
      let x_626 : bool = u_xlatb51;
      if (x_626) {
        let x_631 : vec4<f32> = u_xlat5;
        let x_634 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        u_xlat51 = ((vec2<f32>(x_631.x, x_631.y) * vec2<f32>(x_634.z, x_634.w)) + vec2<f32>(0.5f, 0.5f));
        let x_639 : vec2<f32> = u_xlat51;
        u_xlat51 = floor(x_639);
        let x_641 : vec4<f32> = u_xlat5;
        let x_644 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_647 : vec2<f32> = u_xlat51;
        let x_649 : vec2<f32> = ((vec2<f32>(x_641.x, x_641.y) * vec2<f32>(x_644.z, x_644.w)) + -(x_647));
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_652 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_652.x, x_652.x, x_652.y, x_652.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_657 : vec4<f32> = u_xlat9;
        let x_659 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_657.x, x_657.x, x_657.z, x_657.z) * vec4<f32>(x_659.x, x_659.x, x_659.z, x_659.z));
        let x_663 : vec4<f32> = u_xlat10;
        u_xlat52 = (vec2<f32>(x_663.y, x_663.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_668 : vec4<f32> = u_xlat10;
        let x_671 : vec4<f32> = u_xlat8;
        let x_674 : vec2<f32> = ((vec2<f32>(x_668.x, x_668.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_671.x, x_671.y)));
        let x_675 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_674.x, x_675.y, x_674.y, x_675.w);
        let x_677 : vec4<f32> = u_xlat8;
        let x_680 : vec2<f32> = (-(vec2<f32>(x_677.x, x_677.y)) + vec2<f32>(1.0f, 1.0f));
        let x_681 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_684 : vec4<f32> = u_xlat8;
        u_xlat54 = min(vec2<f32>(x_684.x, x_684.y), vec2<f32>(0.0f, 0.0f));
        let x_688 : vec2<f32> = u_xlat54;
        let x_690 : vec2<f32> = u_xlat54;
        let x_692 : vec4<f32> = u_xlat10;
        u_xlat54 = ((-(x_688) * x_690) + vec2<f32>(x_692.x, x_692.y));
        let x_695 : vec4<f32> = u_xlat8;
        let x_697 : vec2<f32> = max(vec2<f32>(x_695.x, x_695.y), vec2<f32>(0.0f, 0.0f));
        let x_698 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat8;
        let x_703 : vec4<f32> = u_xlat8;
        let x_706 : vec4<f32> = u_xlat9;
        let x_708 : vec2<f32> = ((-(vec2<f32>(x_700.x, x_700.y)) * vec2<f32>(x_703.x, x_703.y)) + vec2<f32>(x_706.y, x_706.w));
        let x_709 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
        let x_711 : vec2<f32> = u_xlat54;
        u_xlat54 = (x_711 + vec2<f32>(1.0f, 1.0f));
        let x_713 : vec4<f32> = u_xlat8;
        let x_715 : vec2<f32> = (vec2<f32>(x_713.x, x_713.y) + vec2<f32>(1.0f, 1.0f));
        let x_716 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
        let x_719 : vec4<f32> = u_xlat9;
        let x_723 : vec2<f32> = (vec2<f32>(x_719.x, x_719.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_724 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
        let x_727 : vec4<f32> = u_xlat10;
        let x_729 : vec2<f32> = (vec2<f32>(x_727.x, x_727.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_730 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_732 : vec2<f32> = u_xlat54;
        let x_733 : vec2<f32> = (x_732 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_734 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
        let x_737 : vec4<f32> = u_xlat8;
        let x_739 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_740 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat9;
        let x_744 : vec2<f32> = (vec2<f32>(x_742.y, x_742.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_745 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_748 : f32 = u_xlat10.x;
        u_xlat11.z = x_748;
        let x_751 : f32 = u_xlat8.x;
        u_xlat11.w = x_751;
        let x_754 : f32 = u_xlat13.x;
        u_xlat12.z = x_754;
        let x_757 : f32 = u_xlat52.x;
        u_xlat12.w = x_757;
        let x_759 : vec4<f32> = u_xlat11;
        let x_761 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_759.z, x_759.w, x_759.x, x_759.z) + vec4<f32>(x_761.z, x_761.w, x_761.x, x_761.z));
        let x_765 : f32 = u_xlat11.y;
        u_xlat10.z = x_765;
        let x_768 : f32 = u_xlat8.y;
        u_xlat10.w = x_768;
        let x_771 : f32 = u_xlat12.y;
        u_xlat13.z = x_771;
        let x_774 : f32 = u_xlat52.y;
        u_xlat13.w = x_774;
        let x_776 : vec4<f32> = u_xlat10;
        let x_778 : vec4<f32> = u_xlat13;
        let x_780 : vec3<f32> = (vec3<f32>(x_776.z, x_776.y, x_776.w) + vec3<f32>(x_778.z, x_778.y, x_778.w));
        let x_781 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_783 : vec4<f32> = u_xlat12;
        let x_785 : vec4<f32> = u_xlat9;
        let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.z, x_783.w) / vec3<f32>(x_785.z, x_785.w, x_785.y));
        let x_788 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
        let x_790 : vec4<f32> = u_xlat10;
        let x_795 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_796 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
        let x_798 : vec4<f32> = u_xlat13;
        let x_800 : vec4<f32> = u_xlat8;
        let x_802 : vec3<f32> = (vec3<f32>(x_798.z, x_798.y, x_798.w) / vec3<f32>(x_800.x, x_800.y, x_800.z));
        let x_803 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
        let x_805 : vec4<f32> = u_xlat11;
        let x_807 : vec3<f32> = (vec3<f32>(x_805.x, x_805.y, x_805.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_808 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
        let x_810 : vec4<f32> = u_xlat10;
        let x_813 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_815 : vec3<f32> = (vec3<f32>(x_810.y, x_810.x, x_810.z) * vec3<f32>(x_813.x, x_813.x, x_813.x));
        let x_816 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
        let x_818 : vec4<f32> = u_xlat11;
        let x_821 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_823 : vec3<f32> = (vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(x_821.y, x_821.y, x_821.y));
        let x_824 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
        let x_827 : f32 = u_xlat11.x;
        u_xlat10.w = x_827;
        let x_829 : vec2<f32> = u_xlat51;
        let x_832 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y) * vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.y)) + vec4<f32>(x_835.y, x_835.w, x_835.x, x_835.w));
        let x_838 : vec2<f32> = u_xlat51;
        let x_840 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_843 : vec4<f32> = u_xlat10;
        let x_845 : vec2<f32> = ((x_838 * vec2<f32>(x_840.x, x_840.y)) + vec2<f32>(x_843.z, x_843.w));
        let x_846 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
        let x_849 : f32 = u_xlat10.y;
        u_xlat11.w = x_849;
        let x_851 : vec4<f32> = u_xlat11;
        let x_852 : vec2<f32> = vec2<f32>(x_851.y, x_851.z);
        let x_853 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_853.x, x_852.x, x_853.z, x_852.y);
        let x_856 : vec2<f32> = u_xlat51;
        let x_859 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_856.x, x_856.y, x_856.x, x_856.y) * vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y)) + vec4<f32>(x_862.x, x_862.y, x_862.z, x_862.y));
        let x_865 : vec2<f32> = u_xlat51;
        let x_868 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_871 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y) * vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y)) + vec4<f32>(x_871.w, x_871.y, x_871.w, x_871.z));
        let x_874 : vec2<f32> = u_xlat51;
        let x_877 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_880 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y) * vec4<f32>(x_877.x, x_877.y, x_877.x, x_877.y)) + vec4<f32>(x_880.x, x_880.w, x_880.z, x_880.w));
        let x_884 : vec4<f32> = u_xlat8;
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_884.x, x_884.x, x_884.x, x_884.y) * vec4<f32>(x_886.z, x_886.w, x_886.y, x_886.z));
        let x_890 : vec4<f32> = u_xlat8;
        let x_892 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_890.y, x_890.y, x_890.z, x_890.z) * x_892);
        let x_895 : f32 = u_xlat8.z;
        let x_897 : f32 = u_xlat9.y;
        u_xlat51.x = (x_895 * x_897);
        let x_901 : vec4<f32> = u_xlat12;
        let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
        let x_904 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_902.x, x_902.y, x_904);
        let x_912 : vec3<f32> = txVec4;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_912.xy, x_912.z);
        u_xlat73 = x_914;
        let x_916 : vec4<f32> = u_xlat12;
        let x_917 : vec2<f32> = vec2<f32>(x_916.z, x_916.w);
        let x_919 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_917.x, x_917.y, x_919);
        let x_926 : vec3<f32> = txVec5;
        let x_928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_926.xy, x_926.z);
        u_xlat8.x = x_928;
        let x_931 : f32 = u_xlat8.x;
        let x_933 : f32 = u_xlat15.y;
        u_xlat8.x = (x_931 * x_933);
        let x_937 : f32 = u_xlat15.x;
        let x_938 : f32 = u_xlat73;
        let x_941 : f32 = u_xlat8.x;
        u_xlat73 = ((x_937 * x_938) + x_941);
        let x_944 : vec4<f32> = u_xlat13;
        let x_945 : vec2<f32> = vec2<f32>(x_944.x, x_944.y);
        let x_947 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec6;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_954.xy, x_954.z);
        u_xlat8.x = x_956;
        let x_959 : f32 = u_xlat15.z;
        let x_961 : f32 = u_xlat8.x;
        let x_963 : f32 = u_xlat73;
        u_xlat73 = ((x_959 * x_961) + x_963);
        let x_966 : vec4<f32> = u_xlat11;
        let x_967 : vec2<f32> = vec2<f32>(x_966.x, x_966.y);
        let x_969 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_967.x, x_967.y, x_969);
        let x_976 : vec3<f32> = txVec7;
        let x_978 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_976.xy, x_976.z);
        u_xlat8.x = x_978;
        let x_981 : f32 = u_xlat15.w;
        let x_983 : f32 = u_xlat8.x;
        let x_985 : f32 = u_xlat73;
        u_xlat73 = ((x_981 * x_983) + x_985);
        let x_988 : vec4<f32> = u_xlat14;
        let x_989 : vec2<f32> = vec2<f32>(x_988.x, x_988.y);
        let x_991 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_989.x, x_989.y, x_991);
        let x_998 : vec3<f32> = txVec8;
        let x_1000 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_998.xy, x_998.z);
        u_xlat8.x = x_1000;
        let x_1003 : f32 = u_xlat16.x;
        let x_1005 : f32 = u_xlat8.x;
        let x_1007 : f32 = u_xlat73;
        u_xlat73 = ((x_1003 * x_1005) + x_1007);
        let x_1010 : vec4<f32> = u_xlat14;
        let x_1011 : vec2<f32> = vec2<f32>(x_1010.z, x_1010.w);
        let x_1013 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1011.x, x_1011.y, x_1013);
        let x_1020 : vec3<f32> = txVec9;
        let x_1022 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1020.xy, x_1020.z);
        u_xlat8.x = x_1022;
        let x_1025 : f32 = u_xlat16.y;
        let x_1027 : f32 = u_xlat8.x;
        let x_1029 : f32 = u_xlat73;
        u_xlat73 = ((x_1025 * x_1027) + x_1029);
        let x_1032 : vec4<f32> = u_xlat11;
        let x_1033 : vec2<f32> = vec2<f32>(x_1032.z, x_1032.w);
        let x_1035 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1033.x, x_1033.y, x_1035);
        let x_1042 : vec3<f32> = txVec10;
        let x_1044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1042.xy, x_1042.z);
        u_xlat8.x = x_1044;
        let x_1047 : f32 = u_xlat16.z;
        let x_1049 : f32 = u_xlat8.x;
        let x_1051 : f32 = u_xlat73;
        u_xlat73 = ((x_1047 * x_1049) + x_1051);
        let x_1054 : vec4<f32> = u_xlat10;
        let x_1055 : vec2<f32> = vec2<f32>(x_1054.x, x_1054.y);
        let x_1057 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1055.x, x_1055.y, x_1057);
        let x_1064 : vec3<f32> = txVec11;
        let x_1066 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1064.xy, x_1064.z);
        u_xlat8.x = x_1066;
        let x_1069 : f32 = u_xlat16.w;
        let x_1071 : f32 = u_xlat8.x;
        let x_1073 : f32 = u_xlat73;
        u_xlat73 = ((x_1069 * x_1071) + x_1073);
        let x_1076 : vec4<f32> = u_xlat10;
        let x_1077 : vec2<f32> = vec2<f32>(x_1076.z, x_1076.w);
        let x_1079 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1077.x, x_1077.y, x_1079);
        let x_1086 : vec3<f32> = txVec12;
        let x_1088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1086.xy, x_1086.z);
        u_xlat8.x = x_1088;
        let x_1091 : f32 = u_xlat51.x;
        let x_1093 : f32 = u_xlat8.x;
        let x_1095 : f32 = u_xlat73;
        u_xlat29.x = ((x_1091 * x_1093) + x_1095);
      } else {
        let x_1099 : vec4<f32> = u_xlat5;
        let x_1102 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        u_xlat51 = ((vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(x_1102.z, x_1102.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1106 : vec2<f32> = u_xlat51;
        u_xlat51 = floor(x_1106);
        let x_1108 : vec4<f32> = u_xlat5;
        let x_1111 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1114 : vec2<f32> = u_xlat51;
        let x_1116 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(x_1111.z, x_1111.w)) + -(x_1114));
        let x_1117 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
        let x_1119 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1119.x, x_1119.x, x_1119.y, x_1119.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1122 : vec4<f32> = u_xlat9;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1122.x, x_1122.x, x_1122.z, x_1122.z) * vec4<f32>(x_1124.x, x_1124.x, x_1124.z, x_1124.z));
        let x_1127 : vec4<f32> = u_xlat10;
        let x_1131 : vec2<f32> = (vec2<f32>(x_1127.y, x_1127.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1132 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1132.x, x_1131.x, x_1132.z, x_1131.y);
        let x_1134 : vec4<f32> = u_xlat10;
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1134.x, x_1134.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1137.x, x_1137.y)));
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1144 : vec2<f32> = (-(vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1145.w);
        let x_1147 : vec4<f32> = u_xlat8;
        let x_1149 : vec2<f32> = min(vec2<f32>(x_1147.x, x_1147.y), vec2<f32>(0.0f, 0.0f));
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec4<f32> = u_xlat10;
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1158 : vec4<f32> = u_xlat9;
        let x_1160 : vec2<f32> = ((-(vec2<f32>(x_1152.x, x_1152.y)) * vec2<f32>(x_1155.x, x_1155.y)) + vec2<f32>(x_1158.x, x_1158.z));
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = max(vec2<f32>(x_1163.x, x_1163.y), vec2<f32>(0.0f, 0.0f));
        let x_1166 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1171 : vec4<f32> = u_xlat10;
        let x_1174 : vec4<f32> = u_xlat9;
        let x_1176 : vec2<f32> = ((-(vec2<f32>(x_1168.x, x_1168.y)) * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1174.y, x_1174.w));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1177.x, x_1176.x, x_1177.z, x_1176.y);
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1179 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1183 : f32 = u_xlat9.y;
        u_xlat10.z = (x_1183 * 0.081632003f);
        let x_1187 : vec2<f32> = u_xlat52;
        let x_1190 : vec2<f32> = (vec2<f32>(x_1187.y, x_1187.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1191 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_1193.x, x_1193.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1197 : f32 = u_xlat9.w;
        u_xlat12.z = (x_1197 * 0.081632003f);
        let x_1201 : f32 = u_xlat12.y;
        u_xlat10.x = x_1201;
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1210 : vec2<f32> = ((vec2<f32>(x_1203.x, x_1203.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1211 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1211.x, x_1210.x, x_1211.z, x_1210.y);
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1213.x, x_1213.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1218 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1217.x, x_1218.y, x_1217.y, x_1218.w);
        let x_1221 : f32 = u_xlat52.x;
        u_xlat9.y = x_1221;
        let x_1224 : f32 = u_xlat11.y;
        u_xlat9.w = x_1224;
        let x_1226 : vec4<f32> = u_xlat9;
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1226 + x_1227);
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1232 : vec2<f32> = ((vec2<f32>(x_1229.y, x_1229.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1233 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1233.x, x_1232.x, x_1233.z, x_1232.y);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1238 : vec2<f32> = ((vec2<f32>(x_1235.y, x_1235.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1239 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1238.x, x_1239.y, x_1238.y, x_1239.w);
        let x_1242 : f32 = u_xlat52.y;
        u_xlat11.y = x_1242;
        let x_1244 : vec4<f32> = u_xlat11;
        let x_1245 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1244 + x_1245);
        let x_1247 : vec4<f32> = u_xlat9;
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_1247 / x_1248);
        let x_1250 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1250 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1256 : vec4<f32> = u_xlat11;
        let x_1257 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_1256 / x_1257);
        let x_1259 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1259 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1264 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1261.w, x_1261.x, x_1261.y, x_1261.z) * vec4<f32>(x_1264.x, x_1264.x, x_1264.x, x_1264.x));
        let x_1267 : vec4<f32> = u_xlat11;
        let x_1270 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1267.x, x_1267.w, x_1267.y, x_1267.z) * vec4<f32>(x_1270.y, x_1270.y, x_1270.y, x_1270.y));
        let x_1273 : vec4<f32> = u_xlat9;
        let x_1274 : vec3<f32> = vec3<f32>(x_1273.y, x_1273.z, x_1273.w);
        let x_1275 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1274.x, x_1275.y, x_1274.y, x_1274.z);
        let x_1278 : f32 = u_xlat11.x;
        u_xlat12.y = x_1278;
        let x_1280 : vec2<f32> = u_xlat51;
        let x_1283 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y) * vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y)) + vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1286.y));
        let x_1289 : vec2<f32> = u_xlat51;
        let x_1291 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1294 : vec4<f32> = u_xlat12;
        let x_1296 : vec2<f32> = ((x_1289 * vec2<f32>(x_1291.x, x_1291.y)) + vec2<f32>(x_1294.w, x_1294.y));
        let x_1297 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
        let x_1300 : f32 = u_xlat12.y;
        u_xlat9.y = x_1300;
        let x_1303 : f32 = u_xlat11.z;
        u_xlat12.y = x_1303;
        let x_1305 : vec2<f32> = u_xlat51;
        let x_1308 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_1305.x, x_1305.y, x_1305.x, x_1305.y) * vec4<f32>(x_1308.x, x_1308.y, x_1308.x, x_1308.y)) + vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1311.y));
        let x_1315 : vec2<f32> = u_xlat51;
        let x_1317 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat12;
        u_xlat58 = ((x_1315 * vec2<f32>(x_1317.x, x_1317.y)) + vec2<f32>(x_1320.w, x_1320.y));
        let x_1324 : f32 = u_xlat12.y;
        u_xlat9.z = x_1324;
        let x_1326 : vec2<f32> = u_xlat51;
        let x_1329 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y) * vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y)) + vec4<f32>(x_1332.x, x_1332.y, x_1332.x, x_1332.z));
        let x_1336 : f32 = u_xlat11.w;
        u_xlat12.y = x_1336;
        let x_1339 : vec2<f32> = u_xlat51;
        let x_1342 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.y) * vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y)) + vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1345.y));
        let x_1349 : vec2<f32> = u_xlat51;
        let x_1351 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat12;
        let x_1356 : vec2<f32> = ((x_1349 * vec2<f32>(x_1351.x, x_1351.y)) + vec2<f32>(x_1354.w, x_1354.y));
        let x_1357 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1356.x, x_1356.y, x_1357.z);
        let x_1360 : f32 = u_xlat12.y;
        u_xlat9.w = x_1360;
        let x_1363 : vec2<f32> = u_xlat51;
        let x_1365 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat9;
        u_xlat18 = ((x_1363 * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.x, x_1368.w));
        let x_1371 : vec4<f32> = u_xlat12;
        let x_1372 : vec3<f32> = vec3<f32>(x_1371.x, x_1371.z, x_1371.w);
        let x_1373 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1372.x, x_1373.y, x_1372.y, x_1372.z);
        let x_1375 : vec2<f32> = u_xlat51;
        let x_1378 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1375.x, x_1375.y, x_1375.x, x_1375.y) * vec4<f32>(x_1378.x, x_1378.y, x_1378.x, x_1378.y)) + vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1381.y));
        let x_1385 : vec2<f32> = u_xlat51;
        let x_1387 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat55 = ((x_1385 * vec2<f32>(x_1387.x, x_1387.y)) + vec2<f32>(x_1390.w, x_1390.y));
        let x_1394 : f32 = u_xlat9.x;
        u_xlat11.x = x_1394;
        let x_1396 : vec2<f32> = u_xlat51;
        let x_1398 : vec4<f32> = x_160.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat11;
        u_xlat51 = ((x_1396 * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1401.x, x_1401.y));
        let x_1405 : vec4<f32> = u_xlat8;
        let x_1407 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1405.x, x_1405.x, x_1405.x, x_1405.x) * x_1407);
        let x_1410 : vec4<f32> = u_xlat8;
        let x_1412 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_1410.y, x_1410.y, x_1410.y, x_1410.y) * x_1412);
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1417 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_1415.z, x_1415.z, x_1415.z, x_1415.z) * x_1417);
        let x_1419 : vec4<f32> = u_xlat8;
        let x_1421 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_1419.w, x_1419.w, x_1419.w, x_1419.w) * x_1421);
        let x_1424 : vec4<f32> = u_xlat13;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.x, x_1424.y);
        let x_1427 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec13;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat9.x = x_1436;
        let x_1439 : vec4<f32> = u_xlat13;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1450 : vec3<f32> = txVec14;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1450.xy, x_1450.z);
        u_xlat75 = x_1452;
        let x_1453 : f32 = u_xlat75;
        let x_1455 : f32 = u_xlat19.y;
        u_xlat75 = (x_1453 * x_1455);
        let x_1458 : f32 = u_xlat19.x;
        let x_1460 : f32 = u_xlat9.x;
        let x_1462 : f32 = u_xlat75;
        u_xlat9.x = ((x_1458 * x_1460) + x_1462);
        let x_1466 : vec4<f32> = u_xlat14;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec15;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1476.xy, x_1476.z);
        u_xlat75 = x_1478;
        let x_1480 : f32 = u_xlat19.z;
        let x_1481 : f32 = u_xlat75;
        let x_1484 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1480 * x_1481) + x_1484);
        let x_1488 : vec4<f32> = u_xlat16;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.x, x_1488.y);
        let x_1491 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec16;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1498.xy, x_1498.z);
        u_xlat75 = x_1500;
        let x_1502 : f32 = u_xlat19.w;
        let x_1503 : f32 = u_xlat75;
        let x_1506 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1502 * x_1503) + x_1506);
        let x_1510 : vec4<f32> = u_xlat15;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec17;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat75 = x_1522;
        let x_1524 : f32 = u_xlat20.x;
        let x_1525 : f32 = u_xlat75;
        let x_1528 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1524 * x_1525) + x_1528);
        let x_1532 : vec4<f32> = u_xlat15;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec18;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1542.xy, x_1542.z);
        u_xlat75 = x_1544;
        let x_1546 : f32 = u_xlat20.y;
        let x_1547 : f32 = u_xlat75;
        let x_1550 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1546 * x_1547) + x_1550);
        let x_1554 : vec2<f32> = u_xlat58;
        let x_1556 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec19;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1563.xy, x_1563.z);
        u_xlat75 = x_1565;
        let x_1567 : f32 = u_xlat20.z;
        let x_1568 : f32 = u_xlat75;
        let x_1571 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1567 * x_1568) + x_1571);
        let x_1575 : vec4<f32> = u_xlat16;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.z, x_1575.w);
        let x_1578 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec20;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat75 = x_1587;
        let x_1589 : f32 = u_xlat20.w;
        let x_1590 : f32 = u_xlat75;
        let x_1593 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1589 * x_1590) + x_1593);
        let x_1597 : vec4<f32> = u_xlat17;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.x, x_1597.y);
        let x_1600 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec21;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1607.xy, x_1607.z);
        u_xlat75 = x_1609;
        let x_1611 : f32 = u_xlat21.x;
        let x_1612 : f32 = u_xlat75;
        let x_1615 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1611 * x_1612) + x_1615);
        let x_1619 : vec4<f32> = u_xlat17;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.z, x_1619.w);
        let x_1622 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec22;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat75 = x_1631;
        let x_1633 : f32 = u_xlat21.y;
        let x_1634 : f32 = u_xlat75;
        let x_1637 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1633 * x_1634) + x_1637);
        let x_1641 : vec3<f32> = u_xlat31;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec23;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat31.x = x_1653;
        let x_1656 : f32 = u_xlat21.z;
        let x_1658 : f32 = u_xlat31.x;
        let x_1661 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1656 * x_1658) + x_1661);
        let x_1665 : vec2<f32> = u_xlat18;
        let x_1667 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1665.x, x_1665.y, x_1667);
        let x_1674 : vec3<f32> = txVec24;
        let x_1676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1674.xy, x_1674.z);
        u_xlat31.x = x_1676;
        let x_1679 : f32 = u_xlat21.w;
        let x_1681 : f32 = u_xlat31.x;
        let x_1684 : f32 = u_xlat9.x;
        u_xlat9.x = ((x_1679 * x_1681) + x_1684);
        let x_1688 : vec4<f32> = u_xlat12;
        let x_1689 : vec2<f32> = vec2<f32>(x_1688.x, x_1688.y);
        let x_1691 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec25;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1698.xy, x_1698.z);
        u_xlat31.x = x_1700;
        let x_1703 : f32 = u_xlat8.x;
        let x_1705 : f32 = u_xlat31.x;
        let x_1708 : f32 = u_xlat9.x;
        u_xlat8.x = ((x_1703 * x_1705) + x_1708);
        let x_1712 : vec4<f32> = u_xlat12;
        let x_1713 : vec2<f32> = vec2<f32>(x_1712.z, x_1712.w);
        let x_1715 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1713.x, x_1713.y, x_1715);
        let x_1722 : vec3<f32> = txVec26;
        let x_1724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1722.xy, x_1722.z);
        u_xlat9.x = x_1724;
        let x_1727 : f32 = u_xlat8.y;
        let x_1729 : f32 = u_xlat9.x;
        let x_1732 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1727 * x_1729) + x_1732);
        let x_1736 : vec2<f32> = u_xlat55;
        let x_1738 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
        let x_1746 : vec3<f32> = txVec27;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1746.xy, x_1746.z);
        u_xlat30 = x_1748;
        let x_1750 : f32 = u_xlat8.z;
        let x_1751 : f32 = u_xlat30;
        let x_1754 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1750 * x_1751) + x_1754);
        let x_1758 : vec2<f32> = u_xlat51;
        let x_1760 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec28;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1767.xy, x_1767.z);
        u_xlat51.x = x_1769;
        let x_1772 : f32 = u_xlat8.w;
        let x_1774 : f32 = u_xlat51.x;
        let x_1777 : f32 = u_xlat8.x;
        u_xlat29.x = ((x_1772 * x_1774) + x_1777);
      }
    }
  } else {
    let x_1782 : vec4<f32> = u_xlat5;
    let x_1783 : vec2<f32> = vec2<f32>(x_1782.x, x_1782.y);
    let x_1785 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
    let x_1792 : vec3<f32> = txVec29;
    let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1792.xy, x_1792.z);
    u_xlat29.x = x_1794;
  }
  let x_1797 : f32 = x_160.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1797) + 1.0f);
  let x_1802 : f32 = u_xlat29.x;
  let x_1804 : f32 = x_160.x_MainLightShadowParams.x;
  let x_1807 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1802 * x_1804) + x_1807);
  let x_1812 : f32 = u_xlat5.z;
  u_xlatb27.x = (0.0f >= x_1812);
  let x_1817 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1817 >= 1.0f);
  let x_1819 : bool = u_xlatb49;
  let x_1821 : bool = u_xlatb27.x;
  u_xlatb27.x = (x_1819 | x_1821);
  let x_1825 : bool = u_xlatb27.x;
  if (x_1825) {
    x_1826 = 1.0f;
  } else {
    let x_1831 : f32 = u_xlat5.x;
    x_1826 = x_1831;
  }
  let x_1832 : f32 = x_1826;
  u_xlat5.x = x_1832;
  let x_1834 : vec3<f32> = vs_TEXCOORD1;
  let x_1836 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat29 = (x_1834 + -(x_1836));
  let x_1840 : vec3<f32> = u_xlat29;
  let x_1841 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1840, x_1841);
  let x_1845 : f32 = u_xlat27.x;
  let x_1847 : f32 = x_160.x_MainLightShadowParams.z;
  let x_1850 : f32 = x_160.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1845 * x_1847) + x_1850);
  let x_1854 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1854, 0.0f, 1.0f);
  let x_1859 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1859) + 1.0f);
  let x_1863 : f32 = u_xlat27.x;
  let x_1864 : f32 = u_xlat49;
  let x_1867 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1863 * x_1864) + x_1867);
  let x_1876 : f32 = x_1874.x_MainLightCookieTextureFormat;
  u_xlatb27.x = !((x_1876 == -1.0f));
  let x_1880 : bool = u_xlatb27.x;
  if (x_1880) {
    let x_1883 : vec3<f32> = vs_TEXCOORD1;
    let x_1886 : vec4<f32> = x_1874.x_MainLightWorldToLight[1i];
    u_xlat27 = (vec2<f32>(x_1883.y, x_1883.y) * vec2<f32>(x_1886.x, x_1886.y));
    let x_1890 : vec4<f32> = x_1874.x_MainLightWorldToLight[0i];
    let x_1892 : vec3<f32> = vs_TEXCOORD1;
    let x_1895 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1890.x, x_1890.y) * vec2<f32>(x_1892.x, x_1892.x)) + x_1895);
    let x_1898 : vec4<f32> = x_1874.x_MainLightWorldToLight[2i];
    let x_1900 : vec3<f32> = vs_TEXCOORD1;
    let x_1903 : vec2<f32> = u_xlat27;
    u_xlat27 = ((vec2<f32>(x_1898.x, x_1898.y) * vec2<f32>(x_1900.z, x_1900.z)) + x_1903);
    let x_1905 : vec2<f32> = u_xlat27;
    let x_1907 : vec4<f32> = x_1874.x_MainLightWorldToLight[3i];
    u_xlat27 = (x_1905 + vec2<f32>(x_1907.x, x_1907.y));
    let x_1910 : vec2<f32> = u_xlat27;
    u_xlat27 = ((x_1910 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1918 : vec2<f32> = u_xlat27;
    let x_1920 : f32 = x_44.x_GlobalMipBias.x;
    let x_1921 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1918, x_1920);
    u_xlat8 = x_1921;
    let x_1923 : f32 = x_1874.x_MainLightCookieTextureFormat;
    let x_1925 : f32 = x_1874.x_MainLightCookieTextureFormat;
    let x_1927 : f32 = x_1874.x_MainLightCookieTextureFormat;
    let x_1929 : f32 = x_1874.x_MainLightCookieTextureFormat;
    let x_1930 : vec4<f32> = vec4<f32>(x_1923, x_1925, x_1927, x_1929);
    let x_1937 : vec4<bool> = (vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1930.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb27 = vec2<bool>(x_1937.x, x_1937.y);
    let x_1940 : bool = u_xlatb27.y;
    if (x_1940) {
      let x_1945 : f32 = u_xlat8.w;
      x_1941 = x_1945;
    } else {
      let x_1948 : f32 = u_xlat8.x;
      x_1941 = x_1948;
    }
    let x_1949 : f32 = x_1941;
    u_xlat49 = x_1949;
    let x_1951 : bool = u_xlatb27.x;
    if (x_1951) {
      let x_1955 : vec4<f32> = u_xlat8;
      x_1952 = vec3<f32>(x_1955.x, x_1955.y, x_1955.z);
    } else {
      let x_1958 : f32 = u_xlat49;
      x_1952 = vec3<f32>(x_1958, x_1958, x_1958);
    }
    let x_1960 : vec3<f32> = x_1952;
    u_xlat29 = x_1960;
  } else {
    u_xlat29.x = 1.0f;
    u_xlat29.y = 1.0f;
    u_xlat29.z = 1.0f;
  }
  let x_1965 : vec3<f32> = u_xlat29;
  let x_1967 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat29 = (x_1965 * vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : vec3<f32> = u_xlat7;
  let x_1972 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1970.x, x_1970.x, x_1970.x) * x_1972);
  let x_1974 : vec3<f32> = u_xlat4;
  let x_1976 : vec3<f32> = u_xlat3;
  u_xlat27.x = dot(-(x_1974), x_1976);
  let x_1980 : f32 = u_xlat27.x;
  let x_1982 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1980 + x_1982);
  let x_1985 : vec3<f32> = u_xlat3;
  let x_1986 : vec2<f32> = u_xlat27;
  let x_1990 : vec3<f32> = u_xlat4;
  let x_1992 : vec3<f32> = ((x_1985 * -(vec3<f32>(x_1986.x, x_1986.x, x_1986.x))) + -(x_1990));
  let x_1993 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1995 : vec3<f32> = u_xlat3;
  let x_1996 : vec3<f32> = u_xlat4;
  u_xlat27.x = dot(x_1995, x_1996);
  let x_2000 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2000, 0.0f, 1.0f);
  let x_2004 : f32 = u_xlat27.x;
  u_xlat27.x = (-(x_2004) + 1.0f);
  let x_2009 : f32 = u_xlat27.x;
  let x_2011 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2009 * x_2011);
  let x_2015 : f32 = u_xlat27.x;
  let x_2017 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2015 * x_2017);
  let x_2020 : f32 = u_xlat66;
  u_xlat49 = ((-(x_2020) * 0.699999988f) + 1.700000048f);
  let x_2026 : f32 = u_xlat66;
  let x_2027 : f32 = u_xlat49;
  u_xlat66 = (x_2026 * x_2027);
  let x_2029 : f32 = u_xlat66;
  u_xlat66 = (x_2029 * 6.0f);
  let x_2040 : vec4<f32> = u_xlat8;
  let x_2042 : f32 = u_xlat66;
  let x_2043 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2040.x, x_2040.y, x_2040.z), x_2042);
  u_xlat8 = x_2043;
  let x_2045 : f32 = u_xlat8.w;
  u_xlat66 = (x_2045 + -1.0f);
  let x_2052 : f32 = x_2050.unity_SpecCube0_HDR.w;
  let x_2053 : f32 = u_xlat66;
  u_xlat66 = ((x_2052 * x_2053) + 1.0f);
  let x_2056 : f32 = u_xlat66;
  u_xlat66 = max(x_2056, 0.0f);
  let x_2058 : f32 = u_xlat66;
  u_xlat66 = log2(x_2058);
  let x_2060 : f32 = u_xlat66;
  let x_2062 : f32 = x_2050.unity_SpecCube0_HDR.y;
  u_xlat66 = (x_2060 * x_2062);
  let x_2064 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2064);
  let x_2066 : f32 = u_xlat66;
  let x_2068 : f32 = x_2050.unity_SpecCube0_HDR.x;
  u_xlat66 = (x_2066 * x_2068);
  let x_2070 : vec4<f32> = u_xlat8;
  let x_2072 : f32 = u_xlat66;
  let x_2074 : vec3<f32> = (vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * vec3<f32>(x_2072, x_2072, x_2072));
  let x_2075 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : f32 = u_xlat69;
  let x_2079 : f32 = u_xlat69;
  let x_2083 : vec2<f32> = ((vec2<f32>(x_2077, x_2077) * vec2<f32>(x_2079, x_2079)) + vec2<f32>(-1.0f, 1.0f));
  let x_2084 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2083.x, x_2083.y, x_2084.z, x_2084.w);
  let x_2087 : f32 = u_xlat9.y;
  u_xlat66 = (1.0f / x_2087);
  let x_2089 : vec4<f32> = u_xlat0;
  let x_2092 : f32 = u_xlat68;
  u_xlat31 = (-(vec3<f32>(x_2089.x, x_2089.y, x_2089.z)) + vec3<f32>(x_2092, x_2092, x_2092));
  let x_2095 : vec2<f32> = u_xlat27;
  let x_2097 : vec3<f32> = u_xlat31;
  let x_2099 : vec4<f32> = u_xlat0;
  u_xlat31 = ((vec3<f32>(x_2095.x, x_2095.x, x_2095.x) * x_2097) + vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
  let x_2102 : f32 = u_xlat66;
  let x_2104 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2102, x_2102, x_2102) * x_2104);
  let x_2106 : vec4<f32> = u_xlat8;
  let x_2108 : vec3<f32> = u_xlat31;
  let x_2109 : vec3<f32> = (vec3<f32>(x_2106.x, x_2106.y, x_2106.z) * x_2108);
  let x_2110 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2109.x, x_2109.y, x_2109.z, x_2110.w);
  let x_2112 : vec4<f32> = u_xlat6;
  let x_2114 : vec3<f32> = u_xlat23;
  let x_2116 : vec4<f32> = u_xlat8;
  let x_2118 : vec3<f32> = ((vec3<f32>(x_2112.x, x_2112.y, x_2112.z) * x_2114) + vec3<f32>(x_2116.x, x_2116.y, x_2116.z));
  let x_2119 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
  let x_2122 : f32 = u_xlat5.x;
  let x_2124 : f32 = x_2050.unity_LightData.z;
  u_xlat66 = (x_2122 * x_2124);
  let x_2126 : vec3<f32> = u_xlat3;
  let x_2128 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat68 = dot(x_2126, vec3<f32>(x_2128.x, x_2128.y, x_2128.z));
  let x_2131 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2131, 0.0f, 1.0f);
  let x_2133 : f32 = u_xlat66;
  let x_2134 : f32 = u_xlat68;
  u_xlat66 = (x_2133 * x_2134);
  let x_2136 : f32 = u_xlat66;
  let x_2138 : vec3<f32> = u_xlat29;
  let x_2139 : vec3<f32> = (vec3<f32>(x_2136, x_2136, x_2136) * x_2138);
  let x_2140 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2139.x, x_2139.y, x_2139.z, x_2140.w);
  let x_2142 : vec3<f32> = u_xlat4;
  let x_2144 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat29 = (x_2142 + vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : vec3<f32> = u_xlat29;
  let x_2148 : vec3<f32> = u_xlat29;
  u_xlat66 = dot(x_2147, x_2148);
  let x_2150 : f32 = u_xlat66;
  u_xlat66 = max(x_2150, 1.17549435e-37f);
  let x_2153 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_2153);
  let x_2155 : f32 = u_xlat66;
  let x_2157 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2155, x_2155, x_2155) * x_2157);
  let x_2159 : vec3<f32> = u_xlat3;
  let x_2160 : vec3<f32> = u_xlat29;
  u_xlat66 = dot(x_2159, x_2160);
  let x_2162 : f32 = u_xlat66;
  u_xlat66 = clamp(x_2162, 0.0f, 1.0f);
  let x_2165 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2167 : vec3<f32> = u_xlat29;
  u_xlat68 = dot(vec3<f32>(x_2165.x, x_2165.y, x_2165.z), x_2167);
  let x_2169 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2169, 0.0f, 1.0f);
  let x_2171 : f32 = u_xlat66;
  let x_2172 : f32 = u_xlat66;
  u_xlat66 = (x_2171 * x_2172);
  let x_2174 : f32 = u_xlat66;
  let x_2176 : f32 = u_xlat9.x;
  u_xlat66 = ((x_2174 * x_2176) + 1.000010014f);
  let x_2180 : f32 = u_xlat68;
  let x_2181 : f32 = u_xlat68;
  u_xlat68 = (x_2180 * x_2181);
  let x_2183 : f32 = u_xlat66;
  let x_2184 : f32 = u_xlat66;
  u_xlat66 = (x_2183 * x_2184);
  let x_2186 : f32 = u_xlat68;
  u_xlat68 = max(x_2186, 0.100000001f);
  let x_2189 : f32 = u_xlat66;
  let x_2190 : f32 = u_xlat68;
  u_xlat66 = (x_2189 * x_2190);
  let x_2192 : f32 = u_xlat71;
  let x_2193 : f32 = u_xlat66;
  u_xlat66 = (x_2192 * x_2193);
  let x_2195 : f32 = u_xlat70;
  let x_2196 : f32 = u_xlat66;
  u_xlat66 = (x_2195 / x_2196);
  let x_2198 : vec4<f32> = u_xlat0;
  let x_2200 : f32 = u_xlat66;
  let x_2203 : vec3<f32> = u_xlat23;
  u_xlat29 = ((vec3<f32>(x_2198.x, x_2198.y, x_2198.z) * vec3<f32>(x_2200, x_2200, x_2200)) + x_2203);
  let x_2205 : vec4<f32> = u_xlat5;
  let x_2207 : vec3<f32> = u_xlat29;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * x_2207);
  let x_2209 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2212 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2214 : f32 = x_2050.unity_LightData.y;
  u_xlat66 = min(x_2212, x_2214);
  let x_2216 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_2216));
  let x_2220 : f32 = x_1874.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2222 : f32 = x_1874.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2224 : f32 = x_1874.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2226 : f32 = x_1874.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2227 : vec4<f32> = vec4<f32>(x_2220, x_2222, x_2224, x_2226);
  let x_2233 : vec4<bool> = (vec4<f32>(x_2227.x, x_2227.y, x_2227.z, x_2227.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb29 = vec2<bool>(x_2233.x, x_2233.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2244 : u32 = u_xlatu_loop_1;
    let x_2245 : u32 = u_xlatu66;
    if ((x_2244 < x_2245)) {
    } else {
      break;
    }
    let x_2248 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_2248 >> 2u);
    let x_2251 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2251 & 3u));
    let x_2254 : u32 = u_xlatu69;
    let x_2257 : vec4<f32> = x_2050.unity_LightIndices[bitcast<i32>(x_2254)];
    let x_2267 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2272 : vec4<u32> = indexable[x_2267];
    u_xlat69 = dot(x_2257, bitcast<vec4<f32>>(x_2272));
    let x_2275 : f32 = u_xlat69;
    u_xlatu69 = bitcast<u32>(i32(x_2275));
    let x_2278 : vec3<f32> = vs_TEXCOORD1;
    let x_2290 : u32 = u_xlatu69;
    let x_2293 : vec4<f32> = x_2289.x_AdditionalLightsPosition[bitcast<i32>(x_2290)];
    let x_2296 : u32 = u_xlatu69;
    let x_2299 : vec4<f32> = x_2289.x_AdditionalLightsPosition[bitcast<i32>(x_2296)];
    u_xlat31 = ((-(x_2278) * vec3<f32>(x_2293.w, x_2293.w, x_2293.w)) + vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
    let x_2302 : vec3<f32> = u_xlat31;
    let x_2303 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(x_2302, x_2303);
    let x_2305 : f32 = u_xlat73;
    u_xlat73 = max(x_2305, 6.10351562e-05f);
    let x_2309 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2309);
    let x_2311 : f32 = u_xlat74;
    let x_2313 : vec3<f32> = u_xlat31;
    let x_2314 : vec3<f32> = (vec3<f32>(x_2311, x_2311, x_2311) * x_2313);
    let x_2315 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
    let x_2318 : f32 = u_xlat73;
    u_xlat76 = (1.0f / x_2318);
    let x_2320 : f32 = u_xlat73;
    let x_2321 : u32 = u_xlatu69;
    let x_2324 : f32 = x_2289.x_AdditionalLightsAttenuation[bitcast<i32>(x_2321)].x;
    u_xlat73 = (x_2320 * x_2324);
    let x_2326 : f32 = u_xlat73;
    let x_2328 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2326) * x_2328) + 1.0f);
    let x_2331 : f32 = u_xlat73;
    u_xlat73 = max(x_2331, 0.0f);
    let x_2333 : f32 = u_xlat73;
    let x_2334 : f32 = u_xlat73;
    u_xlat73 = (x_2333 * x_2334);
    let x_2336 : f32 = u_xlat73;
    let x_2337 : f32 = u_xlat76;
    u_xlat73 = (x_2336 * x_2337);
    let x_2339 : u32 = u_xlatu69;
    let x_2342 : vec4<f32> = x_2289.x_AdditionalLightsSpotDir[bitcast<i32>(x_2339)];
    let x_2344 : vec4<f32> = u_xlat10;
    u_xlat76 = dot(vec3<f32>(x_2342.x, x_2342.y, x_2342.z), vec3<f32>(x_2344.x, x_2344.y, x_2344.z));
    let x_2347 : f32 = u_xlat76;
    let x_2348 : u32 = u_xlatu69;
    let x_2351 : f32 = x_2289.x_AdditionalLightsAttenuation[bitcast<i32>(x_2348)].z;
    let x_2353 : u32 = u_xlatu69;
    let x_2356 : f32 = x_2289.x_AdditionalLightsAttenuation[bitcast<i32>(x_2353)].w;
    u_xlat76 = ((x_2347 * x_2351) + x_2356);
    let x_2358 : f32 = u_xlat76;
    u_xlat76 = clamp(x_2358, 0.0f, 1.0f);
    let x_2360 : f32 = u_xlat76;
    let x_2361 : f32 = u_xlat76;
    u_xlat76 = (x_2360 * x_2361);
    let x_2363 : f32 = u_xlat73;
    let x_2364 : f32 = u_xlat76;
    u_xlat73 = (x_2363 * x_2364);
    let x_2367 : u32 = u_xlatu69;
    u_xlatu76 = (x_2367 >> 5u);
    let x_2370 : u32 = u_xlatu69;
    u_xlati11 = (1i << bitcast<u32>((bitcast<i32>(x_2370) & 31i)));
    let x_2376 : i32 = u_xlati11;
    let x_2378 : u32 = u_xlatu76;
    let x_2381 : f32 = x_1874.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2378)].el;
    u_xlati76 = bitcast<i32>((bitcast<u32>(x_2376) & bitcast<u32>(x_2381)));
    let x_2385 : i32 = u_xlati76;
    if ((x_2385 != 0i)) {
      let x_2395 : u32 = u_xlatu69;
      let x_2398 : f32 = x_2394.x_AdditionalLightsLightTypes[bitcast<i32>(x_2395)].el;
      u_xlati76 = i32(x_2398);
      let x_2400 : i32 = u_xlati76;
      u_xlati11 = select(1i, 0i, (x_2400 != 0i));
      let x_2404 : u32 = u_xlatu69;
      u_xlati33 = (bitcast<i32>(x_2404) << bitcast<u32>(2i));
      let x_2407 : i32 = u_xlati11;
      if ((x_2407 != 0i)) {
        let x_2411 : vec3<f32> = vs_TEXCOORD1;
        let x_2413 : i32 = u_xlati33;
        let x_2416 : i32 = u_xlati33;
        let x_2420 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2413 + 1i) / 4i)][((x_2416 + 1i) % 4i)];
        let x_2422 : vec3<f32> = (vec3<f32>(x_2411.y, x_2411.y, x_2411.y) * vec3<f32>(x_2420.x, x_2420.y, x_2420.w));
        let x_2423 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2422.x, x_2423.y, x_2422.y, x_2422.z);
        let x_2425 : i32 = u_xlati33;
        let x_2427 : i32 = u_xlati33;
        let x_2430 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[(x_2425 / 4i)][(x_2427 % 4i)];
        let x_2432 : vec3<f32> = vs_TEXCOORD1;
        let x_2435 : vec4<f32> = u_xlat11;
        let x_2437 : vec3<f32> = ((vec3<f32>(x_2430.x, x_2430.y, x_2430.w) * vec3<f32>(x_2432.x, x_2432.x, x_2432.x)) + vec3<f32>(x_2435.x, x_2435.z, x_2435.w));
        let x_2438 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2437.x, x_2438.y, x_2437.y, x_2437.z);
        let x_2440 : i32 = u_xlati33;
        let x_2443 : i32 = u_xlati33;
        let x_2447 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2440 + 2i) / 4i)][((x_2443 + 2i) % 4i)];
        let x_2449 : vec3<f32> = vs_TEXCOORD1;
        let x_2452 : vec4<f32> = u_xlat11;
        let x_2454 : vec3<f32> = ((vec3<f32>(x_2447.x, x_2447.y, x_2447.w) * vec3<f32>(x_2449.z, x_2449.z, x_2449.z)) + vec3<f32>(x_2452.x, x_2452.z, x_2452.w));
        let x_2455 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2454.x, x_2455.y, x_2454.y, x_2454.z);
        let x_2457 : vec4<f32> = u_xlat11;
        let x_2459 : i32 = u_xlati33;
        let x_2462 : i32 = u_xlati33;
        let x_2466 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2459 + 3i) / 4i)][((x_2462 + 3i) % 4i)];
        let x_2468 : vec3<f32> = (vec3<f32>(x_2457.x, x_2457.z, x_2457.w) + vec3<f32>(x_2466.x, x_2466.y, x_2466.w));
        let x_2469 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2468.x, x_2469.y, x_2468.y, x_2468.z);
        let x_2471 : vec4<f32> = u_xlat11;
        let x_2473 : vec4<f32> = u_xlat11;
        let x_2475 : vec2<f32> = (vec2<f32>(x_2471.x, x_2471.z) / vec2<f32>(x_2473.w, x_2473.w));
        let x_2476 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2475.x, x_2476.y, x_2475.y, x_2476.w);
        let x_2478 : vec4<f32> = u_xlat11;
        let x_2481 : vec2<f32> = ((vec2<f32>(x_2478.x, x_2478.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2482 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2481.x, x_2482.y, x_2481.y, x_2482.w);
        let x_2484 : vec4<f32> = u_xlat11;
        let x_2488 : vec2<f32> = clamp(vec2<f32>(x_2484.x, x_2484.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2489 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2488.x, x_2489.y, x_2488.y, x_2489.w);
        let x_2491 : u32 = u_xlatu69;
        let x_2494 : vec4<f32> = x_2394.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2491)];
        let x_2496 : vec4<f32> = u_xlat11;
        let x_2499 : u32 = u_xlatu69;
        let x_2502 : vec4<f32> = x_2394.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2499)];
        let x_2504 : vec2<f32> = ((vec2<f32>(x_2494.x, x_2494.y) * vec2<f32>(x_2496.x, x_2496.z)) + vec2<f32>(x_2502.z, x_2502.w));
        let x_2505 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2504.x, x_2505.y, x_2504.y, x_2505.w);
      } else {
        let x_2509 : i32 = u_xlati76;
        u_xlatb76 = (x_2509 == 1i);
        let x_2511 : bool = u_xlatb76;
        u_xlati76 = select(0i, 1i, x_2511);
        let x_2513 : i32 = u_xlati76;
        if ((x_2513 != 0i)) {
          let x_2517 : vec3<f32> = vs_TEXCOORD1;
          let x_2519 : i32 = u_xlati33;
          let x_2522 : i32 = u_xlati33;
          let x_2526 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2519 + 1i) / 4i)][((x_2522 + 1i) % 4i)];
          let x_2528 : vec2<f32> = (vec2<f32>(x_2517.y, x_2517.y) * vec2<f32>(x_2526.x, x_2526.y));
          let x_2529 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
          let x_2531 : i32 = u_xlati33;
          let x_2533 : i32 = u_xlati33;
          let x_2536 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[(x_2531 / 4i)][(x_2533 % 4i)];
          let x_2538 : vec3<f32> = vs_TEXCOORD1;
          let x_2541 : vec4<f32> = u_xlat12;
          let x_2543 : vec2<f32> = ((vec2<f32>(x_2536.x, x_2536.y) * vec2<f32>(x_2538.x, x_2538.x)) + vec2<f32>(x_2541.x, x_2541.y));
          let x_2544 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
          let x_2546 : i32 = u_xlati33;
          let x_2549 : i32 = u_xlati33;
          let x_2553 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2546 + 2i) / 4i)][((x_2549 + 2i) % 4i)];
          let x_2555 : vec3<f32> = vs_TEXCOORD1;
          let x_2558 : vec4<f32> = u_xlat12;
          let x_2560 : vec2<f32> = ((vec2<f32>(x_2553.x, x_2553.y) * vec2<f32>(x_2555.z, x_2555.z)) + vec2<f32>(x_2558.x, x_2558.y));
          let x_2561 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2560.x, x_2560.y, x_2561.z, x_2561.w);
          let x_2563 : vec4<f32> = u_xlat12;
          let x_2565 : i32 = u_xlati33;
          let x_2568 : i32 = u_xlati33;
          let x_2572 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2565 + 3i) / 4i)][((x_2568 + 3i) % 4i)];
          let x_2574 : vec2<f32> = (vec2<f32>(x_2563.x, x_2563.y) + vec2<f32>(x_2572.x, x_2572.y));
          let x_2575 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2574.x, x_2574.y, x_2575.z, x_2575.w);
          let x_2577 : vec4<f32> = u_xlat12;
          let x_2580 : vec2<f32> = ((vec2<f32>(x_2577.x, x_2577.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2581 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2580.x, x_2580.y, x_2581.z, x_2581.w);
          let x_2583 : vec4<f32> = u_xlat12;
          let x_2585 : vec2<f32> = fract(vec2<f32>(x_2583.x, x_2583.y));
          let x_2586 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2585.x, x_2585.y, x_2586.z, x_2586.w);
          let x_2588 : u32 = u_xlatu69;
          let x_2591 : vec4<f32> = x_2394.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2588)];
          let x_2593 : vec4<f32> = u_xlat12;
          let x_2596 : u32 = u_xlatu69;
          let x_2599 : vec4<f32> = x_2394.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2596)];
          let x_2601 : vec2<f32> = ((vec2<f32>(x_2591.x, x_2591.y) * vec2<f32>(x_2593.x, x_2593.y)) + vec2<f32>(x_2599.z, x_2599.w));
          let x_2602 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2601.x, x_2602.y, x_2601.y, x_2602.w);
        } else {
          let x_2605 : vec3<f32> = vs_TEXCOORD1;
          let x_2607 : i32 = u_xlati33;
          let x_2610 : i32 = u_xlati33;
          let x_2614 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2607 + 1i) / 4i)][((x_2610 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2605.y, x_2605.y, x_2605.y, x_2605.y) * x_2614);
          let x_2616 : i32 = u_xlati33;
          let x_2618 : i32 = u_xlati33;
          let x_2621 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[(x_2616 / 4i)][(x_2618 % 4i)];
          let x_2622 : vec3<f32> = vs_TEXCOORD1;
          let x_2625 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2621 * vec4<f32>(x_2622.x, x_2622.x, x_2622.x, x_2622.x)) + x_2625);
          let x_2627 : i32 = u_xlati33;
          let x_2630 : i32 = u_xlati33;
          let x_2634 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2627 + 2i) / 4i)][((x_2630 + 2i) % 4i)];
          let x_2635 : vec3<f32> = vs_TEXCOORD1;
          let x_2638 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2634 * vec4<f32>(x_2635.z, x_2635.z, x_2635.z, x_2635.z)) + x_2638);
          let x_2640 : vec4<f32> = u_xlat12;
          let x_2641 : i32 = u_xlati33;
          let x_2644 : i32 = u_xlati33;
          let x_2648 : vec4<f32> = x_2394.x_AdditionalLightsWorldToLights[((x_2641 + 3i) / 4i)][((x_2644 + 3i) % 4i)];
          u_xlat12 = (x_2640 + x_2648);
          let x_2650 : vec4<f32> = u_xlat12;
          let x_2652 : vec4<f32> = u_xlat12;
          let x_2654 : vec3<f32> = (vec3<f32>(x_2650.x, x_2650.y, x_2650.z) / vec3<f32>(x_2652.w, x_2652.w, x_2652.w));
          let x_2655 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2654.x, x_2654.y, x_2654.z, x_2655.w);
          let x_2657 : vec4<f32> = u_xlat12;
          let x_2659 : vec4<f32> = u_xlat12;
          u_xlat76 = dot(vec3<f32>(x_2657.x, x_2657.y, x_2657.z), vec3<f32>(x_2659.x, x_2659.y, x_2659.z));
          let x_2662 : f32 = u_xlat76;
          u_xlat76 = inverseSqrt(x_2662);
          let x_2664 : f32 = u_xlat76;
          let x_2666 : vec4<f32> = u_xlat12;
          let x_2668 : vec3<f32> = (vec3<f32>(x_2664, x_2664, x_2664) * vec3<f32>(x_2666.x, x_2666.y, x_2666.z));
          let x_2669 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
          let x_2671 : vec4<f32> = u_xlat12;
          u_xlat76 = dot(abs(vec3<f32>(x_2671.x, x_2671.y, x_2671.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2676 : f32 = u_xlat76;
          u_xlat76 = max(x_2676, 0.000001f);
          let x_2679 : f32 = u_xlat76;
          u_xlat76 = (1.0f / x_2679);
          let x_2681 : f32 = u_xlat76;
          let x_2683 : vec4<f32> = u_xlat12;
          let x_2685 : vec3<f32> = (vec3<f32>(x_2681, x_2681, x_2681) * vec3<f32>(x_2683.z, x_2683.x, x_2683.y));
          let x_2686 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
          let x_2689 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2689);
          let x_2693 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2693, 0.0f, 1.0f);
          let x_2699 : vec4<f32> = u_xlat13;
          let x_2702 : vec4<bool> = (vec4<f32>(x_2699.y, x_2699.y, x_2699.z, x_2699.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2703 : vec2<bool> = vec2<bool>(x_2702.x, x_2702.z);
          let x_2704 : vec3<bool> = u_xlatb33;
          u_xlatb33 = vec3<bool>(x_2703.x, x_2704.y, x_2703.y);
          let x_2708 : bool = u_xlatb33.x;
          if (x_2708) {
            let x_2713 : f32 = u_xlat13.x;
            x_2709 = x_2713;
          } else {
            let x_2716 : f32 = u_xlat13.x;
            x_2709 = -(x_2716);
          }
          let x_2718 : f32 = x_2709;
          u_xlat33.x = x_2718;
          let x_2721 : bool = u_xlatb33.z;
          if (x_2721) {
            let x_2726 : f32 = u_xlat13.x;
            x_2722 = x_2726;
          } else {
            let x_2729 : f32 = u_xlat13.x;
            x_2722 = -(x_2729);
          }
          let x_2731 : f32 = x_2722;
          u_xlat33.z = x_2731;
          let x_2733 : vec4<f32> = u_xlat12;
          let x_2735 : f32 = u_xlat76;
          let x_2738 : vec3<f32> = u_xlat33;
          let x_2740 : vec2<f32> = ((vec2<f32>(x_2733.x, x_2733.y) * vec2<f32>(x_2735, x_2735)) + vec2<f32>(x_2738.x, x_2738.z));
          let x_2741 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2740.x, x_2741.y, x_2740.y);
          let x_2743 : vec3<f32> = u_xlat33;
          let x_2746 : vec2<f32> = ((vec2<f32>(x_2743.x, x_2743.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2747 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2746.x, x_2747.y, x_2746.y);
          let x_2749 : vec3<f32> = u_xlat33;
          let x_2753 : vec2<f32> = clamp(vec2<f32>(x_2749.x, x_2749.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2754 : vec3<f32> = u_xlat33;
          u_xlat33 = vec3<f32>(x_2753.x, x_2754.y, x_2753.y);
          let x_2756 : u32 = u_xlatu69;
          let x_2759 : vec4<f32> = x_2394.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2756)];
          let x_2761 : vec3<f32> = u_xlat33;
          let x_2764 : u32 = u_xlatu69;
          let x_2767 : vec4<f32> = x_2394.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2764)];
          let x_2769 : vec2<f32> = ((vec2<f32>(x_2759.x, x_2759.y) * vec2<f32>(x_2761.x, x_2761.z)) + vec2<f32>(x_2767.z, x_2767.w));
          let x_2770 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2769.x, x_2770.y, x_2769.y, x_2770.w);
        }
      }
      let x_2777 : vec4<f32> = u_xlat11;
      let x_2780 : f32 = x_44.x_GlobalMipBias.x;
      let x_2781 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2777.x, x_2777.z), x_2780);
      u_xlat11 = x_2781;
      let x_2783 : bool = u_xlatb29.y;
      if (x_2783) {
        let x_2788 : f32 = u_xlat11.w;
        x_2784 = x_2788;
      } else {
        let x_2791 : f32 = u_xlat11.x;
        x_2784 = x_2791;
      }
      let x_2792 : f32 = x_2784;
      u_xlat76 = x_2792;
      let x_2794 : bool = u_xlatb29.x;
      if (x_2794) {
        let x_2798 : vec4<f32> = u_xlat11;
        x_2795 = vec3<f32>(x_2798.x, x_2798.y, x_2798.z);
      } else {
        let x_2801 : f32 = u_xlat76;
        x_2795 = vec3<f32>(x_2801, x_2801, x_2801);
      }
      let x_2803 : vec3<f32> = x_2795;
      let x_2804 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2810 : vec4<f32> = u_xlat11;
    let x_2812 : u32 = u_xlatu69;
    let x_2815 : vec4<f32> = x_2289.x_AdditionalLightsColor[bitcast<i32>(x_2812)];
    let x_2817 : vec3<f32> = (vec3<f32>(x_2810.x, x_2810.y, x_2810.z) * vec3<f32>(x_2815.x, x_2815.y, x_2815.z));
    let x_2818 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2818.w);
    let x_2820 : vec3<f32> = u_xlat7;
    let x_2822 : vec4<f32> = u_xlat11;
    let x_2824 : vec3<f32> = (vec3<f32>(x_2820.x, x_2820.x, x_2820.x) * vec3<f32>(x_2822.x, x_2822.y, x_2822.z));
    let x_2825 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2825.w);
    let x_2827 : vec3<f32> = u_xlat3;
    let x_2828 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(x_2827, vec3<f32>(x_2828.x, x_2828.y, x_2828.z));
    let x_2831 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2831, 0.0f, 1.0f);
    let x_2833 : f32 = u_xlat69;
    let x_2834 : f32 = u_xlat73;
    u_xlat69 = (x_2833 * x_2834);
    let x_2836 : f32 = u_xlat69;
    let x_2838 : vec4<f32> = u_xlat11;
    let x_2840 : vec3<f32> = (vec3<f32>(x_2836, x_2836, x_2836) * vec3<f32>(x_2838.x, x_2838.y, x_2838.z));
    let x_2841 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2840.x, x_2840.y, x_2840.z, x_2841.w);
    let x_2843 : vec3<f32> = u_xlat31;
    let x_2844 : f32 = u_xlat74;
    let x_2847 : vec3<f32> = u_xlat4;
    u_xlat31 = ((x_2843 * vec3<f32>(x_2844, x_2844, x_2844)) + x_2847);
    let x_2849 : vec3<f32> = u_xlat31;
    let x_2850 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(x_2849, x_2850);
    let x_2852 : f32 = u_xlat69;
    u_xlat69 = max(x_2852, 1.17549435e-37f);
    let x_2854 : f32 = u_xlat69;
    u_xlat69 = inverseSqrt(x_2854);
    let x_2856 : f32 = u_xlat69;
    let x_2858 : vec3<f32> = u_xlat31;
    u_xlat31 = (vec3<f32>(x_2856, x_2856, x_2856) * x_2858);
    let x_2860 : vec3<f32> = u_xlat3;
    let x_2861 : vec3<f32> = u_xlat31;
    u_xlat69 = dot(x_2860, x_2861);
    let x_2863 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2863, 0.0f, 1.0f);
    let x_2865 : vec4<f32> = u_xlat10;
    let x_2867 : vec3<f32> = u_xlat31;
    u_xlat73 = dot(vec3<f32>(x_2865.x, x_2865.y, x_2865.z), x_2867);
    let x_2869 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2869, 0.0f, 1.0f);
    let x_2871 : f32 = u_xlat69;
    let x_2872 : f32 = u_xlat69;
    u_xlat69 = (x_2871 * x_2872);
    let x_2874 : f32 = u_xlat69;
    let x_2876 : f32 = u_xlat9.x;
    u_xlat69 = ((x_2874 * x_2876) + 1.000010014f);
    let x_2879 : f32 = u_xlat73;
    let x_2880 : f32 = u_xlat73;
    u_xlat73 = (x_2879 * x_2880);
    let x_2882 : f32 = u_xlat69;
    let x_2883 : f32 = u_xlat69;
    u_xlat69 = (x_2882 * x_2883);
    let x_2885 : f32 = u_xlat73;
    u_xlat73 = max(x_2885, 0.100000001f);
    let x_2887 : f32 = u_xlat69;
    let x_2888 : f32 = u_xlat73;
    u_xlat69 = (x_2887 * x_2888);
    let x_2890 : f32 = u_xlat71;
    let x_2891 : f32 = u_xlat69;
    u_xlat69 = (x_2890 * x_2891);
    let x_2893 : f32 = u_xlat70;
    let x_2894 : f32 = u_xlat69;
    u_xlat69 = (x_2893 / x_2894);
    let x_2896 : vec4<f32> = u_xlat0;
    let x_2898 : f32 = u_xlat69;
    let x_2901 : vec3<f32> = u_xlat23;
    u_xlat31 = ((vec3<f32>(x_2896.x, x_2896.y, x_2896.z) * vec3<f32>(x_2898, x_2898, x_2898)) + x_2901);
    let x_2903 : vec3<f32> = u_xlat31;
    let x_2904 : vec4<f32> = u_xlat11;
    let x_2907 : vec4<f32> = u_xlat8;
    let x_2909 : vec3<f32> = ((x_2903 * vec3<f32>(x_2904.x, x_2904.y, x_2904.z)) + vec3<f32>(x_2907.x, x_2907.y, x_2907.z));
    let x_2910 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2909.x, x_2909.y, x_2909.z, x_2910.w);

    continuing {
      let x_2912 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2912 + bitcast<u32>(1i));
    }
  }
  let x_2914 : vec4<f32> = u_xlat6;
  let x_2916 : f32 = u_xlat72;
  let x_2919 : vec4<f32> = u_xlat5;
  let x_2921 : vec3<f32> = ((vec3<f32>(x_2914.x, x_2914.y, x_2914.z) * vec3<f32>(x_2916, x_2916, x_2916)) + vec3<f32>(x_2919.x, x_2919.y, x_2919.z));
  let x_2922 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2921.x, x_2921.y, x_2921.z, x_2922.w);
  let x_2924 : vec4<f32> = u_xlat8;
  let x_2926 : vec4<f32> = u_xlat0;
  let x_2928 : vec3<f32> = (vec3<f32>(x_2924.x, x_2924.y, x_2924.z) + vec3<f32>(x_2926.x, x_2926.y, x_2926.z));
  let x_2929 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2928.x, x_2928.y, x_2928.z, x_2929.w);
  let x_2933 : vec3<f32> = u_xlat2;
  let x_2935 : vec4<f32> = x_57.x_EmissionColor;
  let x_2938 : vec4<f32> = u_xlat0;
  let x_2940 : vec3<f32> = ((x_2933 * vec3<f32>(x_2935.x, x_2935.y, x_2935.z)) + vec3<f32>(x_2938.x, x_2938.y, x_2938.z));
  let x_2941 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2940.x, x_2940.y, x_2940.z, x_2941.w);
  let x_2946 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2946 == 1.0f);
  let x_2948 : bool = u_xlatb0;
  if (x_2948) {
    let x_2953 : f32 = u_xlat1.x;
    x_2949 = x_2953;
  } else {
    x_2949 = 1.0f;
  }
  let x_2955 : f32 = x_2949;
  SV_Target0.w = x_2955;
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

