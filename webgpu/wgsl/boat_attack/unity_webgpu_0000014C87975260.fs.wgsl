diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_PointRepeat : sampler;

var<private> u_xlatb23 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat67 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlatb68 : bool;

@group(1) @binding(4) var<uniform> x_258 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb3 : bool;

var<private> u_xlat47 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb25 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_1612 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatu68 : u32;

var<private> u_xlatb4 : vec2<bool>;

var<private> u_xlatu70 : u32;

var<private> u_xlati71 : i32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

@group(1) @binding(1) var<uniform> x_1846 : AdditionalLights;

var<private> u_xlat72 : f32;

var<private> u_xlati72 : i32;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlatb8 : vec3<bool>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlatb72 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb73 : bool;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlati7 : i32;

var<private> u_xlati29 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlatb52 : vec2<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_LinearClamp : sampler;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlatu48 : u32;

var<private> u_xlatb70 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
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
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1696 : f32;
  var x_1708 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1988 : f32;
  var x_1999 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3666 : f32;
  var x_3679 : f32;
  var x_3736 : f32;
  var x_3747 : vec3<f32>;
  var x_3850 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_45.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_80 : vec3<f32> = u_xlat1;
  let x_83 : f32 = x_45.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_80.x, x_80.y), x_83);
  u_xlat1.x = x_84.w;
  let x_98 : f32 = x_95.unity_LODFade.x;
  u_xlatb23 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb23;
  if (x_101) {
    let x_107 : f32 = u_xlat1.x;
    x_103 = abs(x_107);
  } else {
    let x_111 : f32 = u_xlat1.x;
    x_103 = -(abs(x_111));
  }
  let x_114 : f32 = x_103;
  u_xlat1.x = x_114;
  let x_117 : f32 = u_xlat1.x;
  let x_120 : f32 = x_95.unity_LODFade.x;
  u_xlat1.x = (-(x_117) + x_120);
  let x_125 : f32 = u_xlat1.x;
  u_xlatb1 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb1;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_137, x_138);
  let x_142 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_142);
  let x_145 : vec3<f32> = u_xlat1;
  let x_147 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_153 : f32 = vs_TEXCOORD1.y;
  let x_156 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat67 = (x_153 * x_156);
  let x_159 : f32 = x_45.unity_MatrixV[0i].z;
  let x_161 : f32 = vs_TEXCOORD1.x;
  let x_163 : f32 = u_xlat67;
  u_xlat67 = ((x_159 * x_161) + x_163);
  let x_166 : f32 = x_45.unity_MatrixV[2i].z;
  let x_168 : f32 = vs_TEXCOORD1.z;
  let x_170 : f32 = u_xlat67;
  u_xlat67 = ((x_166 * x_168) + x_170);
  let x_172 : f32 = u_xlat67;
  let x_175 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat67 = (x_172 + x_175);
  let x_177 : f32 = u_xlat67;
  let x_181 : f32 = x_45.x_ProjectionParams.y;
  u_xlat67 = (-(x_177) + -(x_181));
  let x_184 : f32 = u_xlat67;
  u_xlat67 = max(x_184, 0.0f);
  let x_186 : f32 = u_xlat67;
  let x_189 : f32 = x_45.unity_FogParams.x;
  u_xlat67 = (x_186 * x_189);
  let x_198 : vec2<f32> = vs_TEXCOORD7;
  let x_200 : f32 = x_45.x_GlobalMipBias.x;
  let x_201 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_198, x_200);
  u_xlat2 = x_201;
  let x_207 : vec2<f32> = vs_TEXCOORD7;
  let x_209 : f32 = x_45.x_GlobalMipBias.x;
  let x_210 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_207, x_209);
  let x_211 : vec3<f32> = vec3<f32>(x_210.x, x_210.y, x_210.z);
  let x_212 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec4<f32> = u_xlat2;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_221, vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_227 : f32 = u_xlat2.x;
  u_xlat2.x = (x_227 + 0.5f);
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_240 : f32 = u_xlat2.w;
  u_xlat68 = max(x_240, 0.00009999999747378752f);
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : f32 = u_xlat68;
  let x_247 : vec3<f32> = (vec3<f32>(x_243.x, x_243.y, x_243.z) / vec3<f32>(x_245, x_245, x_245));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_260 : f32 = x_258.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_260);
  let x_262 : bool = u_xlatb68;
  if (x_262) {
    let x_266 : f32 = x_258.x_MainLightShadowParams.y;
    u_xlatb68 = (x_266 == 1.0f);
    let x_268 : bool = u_xlatb68;
    if (x_268) {
      let x_272 : vec4<f32> = vs_TEXCOORD6;
      let x_275 : vec4<f32> = x_258.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_272.x, x_272.y, x_272.x, x_272.y) + x_275);
      let x_279 : vec4<f32> = u_xlat3;
      let x_280 : vec2<f32> = vec2<f32>(x_279.x, x_279.y);
      let x_282 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_280.x, x_280.y, x_282);
      let x_295 : vec3<f32> = txVec0;
      let x_297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_295.xy, x_295.z);
      u_xlat4.x = x_297;
      let x_300 : vec4<f32> = u_xlat3;
      let x_301 : vec2<f32> = vec2<f32>(x_300.z, x_300.w);
      let x_303 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_301.x, x_301.y, x_303);
      let x_310 : vec3<f32> = txVec1;
      let x_312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_310.xy, x_310.z);
      u_xlat4.y = x_312;
      let x_314 : vec4<f32> = vs_TEXCOORD6;
      let x_318 : vec4<f32> = x_258.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_314.x, x_314.y, x_314.x, x_314.y) + x_318);
      let x_321 : vec4<f32> = u_xlat3;
      let x_322 : vec2<f32> = vec2<f32>(x_321.x, x_321.y);
      let x_324 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_322.x, x_322.y, x_324);
      let x_331 : vec3<f32> = txVec2;
      let x_333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_331.xy, x_331.z);
      u_xlat4.z = x_333;
      let x_336 : vec4<f32> = u_xlat3;
      let x_337 : vec2<f32> = vec2<f32>(x_336.z, x_336.w);
      let x_339 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_337.x, x_337.y, x_339);
      let x_346 : vec3<f32> = txVec3;
      let x_348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_346.xy, x_346.z);
      u_xlat4.w = x_348;
      let x_350 : vec4<f32> = u_xlat4;
      u_xlat68 = dot(x_350, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_357 : f32 = x_258.x_MainLightShadowParams.y;
      u_xlatb3 = (x_357 == 2.0f);
      let x_360 : bool = u_xlatb3;
      if (x_360) {
        let x_363 : vec4<f32> = vs_TEXCOORD6;
        let x_366 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_370 : vec2<f32> = ((vec2<f32>(x_363.x, x_363.y) * vec2<f32>(x_366.z, x_366.w)) + vec2<f32>(0.5f, 0.5f));
        let x_371 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_371.w);
        let x_373 : vec4<f32> = u_xlat3;
        let x_375 : vec2<f32> = floor(vec2<f32>(x_373.x, x_373.y));
        let x_376 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
        let x_380 : vec4<f32> = vs_TEXCOORD6;
        let x_383 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_386 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_383.z, x_383.w)) + -(vec2<f32>(x_386.x, x_386.y)));
        let x_390 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_390.x, x_390.x, x_390.y, x_390.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_395 : vec4<f32> = u_xlat4;
        let x_397 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_395.x, x_395.x, x_395.z, x_395.z) * vec4<f32>(x_397.x, x_397.x, x_397.z, x_397.z));
        let x_400 : vec4<f32> = u_xlat5;
        let x_404 : vec2<f32> = (vec2<f32>(x_400.y, x_400.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_405 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_404.x, x_405.y, x_404.y, x_405.w);
        let x_407 : vec4<f32> = u_xlat5;
        let x_410 : vec2<f32> = u_xlat47;
        let x_412 : vec2<f32> = ((vec2<f32>(x_407.x, x_407.z) * vec2<f32>(0.5f, 0.5f)) + -(x_410));
        let x_413 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
        let x_416 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_416) + vec2<f32>(1.0f, 1.0f));
        let x_421 : vec2<f32> = u_xlat47;
        let x_423 : vec2<f32> = min(x_421, vec2<f32>(0.0f, 0.0f));
        let x_424 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_426 : vec4<f32> = u_xlat6;
        let x_429 : vec4<f32> = u_xlat6;
        let x_432 : vec2<f32> = u_xlat49;
        let x_433 : vec2<f32> = ((-(vec2<f32>(x_426.x, x_426.y)) * vec2<f32>(x_429.x, x_429.y)) + x_432);
        let x_434 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
        let x_436 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_436, vec2<f32>(0.0f, 0.0f));
        let x_438 : vec2<f32> = u_xlat47;
        let x_440 : vec2<f32> = u_xlat47;
        let x_442 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_438) * x_440) + vec2<f32>(x_442.y, x_442.w));
        let x_445 : vec4<f32> = u_xlat6;
        let x_447 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) + vec2<f32>(1.0f, 1.0f));
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
        let x_450 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_450 + vec2<f32>(1.0f, 1.0f));
        let x_453 : vec4<f32> = u_xlat5;
        let x_457 : vec2<f32> = (vec2<f32>(x_453.x, x_453.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_458 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_460 : vec2<f32> = u_xlat49;
        let x_461 : vec2<f32> = (x_460 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_462 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_464 : vec4<f32> = u_xlat6;
        let x_466 : vec2<f32> = (vec2<f32>(x_464.x, x_464.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_470 : vec2<f32> = u_xlat47;
        let x_471 : vec2<f32> = (x_470 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_472 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_474 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_474.y, x_474.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_478 : f32 = u_xlat6.x;
        u_xlat7.z = x_478;
        let x_481 : f32 = u_xlat47.x;
        u_xlat7.w = x_481;
        let x_484 : f32 = u_xlat8.x;
        u_xlat5.z = x_484;
        let x_487 : f32 = u_xlat4.x;
        u_xlat5.w = x_487;
        let x_490 : vec4<f32> = u_xlat5;
        let x_492 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_490.z, x_490.w, x_490.x, x_490.z) + vec4<f32>(x_492.z, x_492.w, x_492.x, x_492.z));
        let x_496 : f32 = u_xlat7.y;
        u_xlat6.z = x_496;
        let x_499 : f32 = u_xlat47.y;
        u_xlat6.w = x_499;
        let x_502 : f32 = u_xlat5.y;
        u_xlat8.z = x_502;
        let x_505 : f32 = u_xlat4.z;
        u_xlat8.w = x_505;
        let x_507 : vec4<f32> = u_xlat6;
        let x_509 : vec4<f32> = u_xlat8;
        let x_511 : vec3<f32> = (vec3<f32>(x_507.z, x_507.y, x_507.w) + vec3<f32>(x_509.z, x_509.y, x_509.w));
        let x_512 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
        let x_514 : vec4<f32> = u_xlat5;
        let x_516 : vec4<f32> = u_xlat9;
        let x_518 : vec3<f32> = (vec3<f32>(x_514.x, x_514.z, x_514.w) / vec3<f32>(x_516.z, x_516.w, x_516.y));
        let x_519 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
        let x_521 : vec4<f32> = u_xlat5;
        let x_526 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_527 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat8;
        let x_531 : vec4<f32> = u_xlat4;
        let x_533 : vec3<f32> = (vec3<f32>(x_529.z, x_529.y, x_529.w) / vec3<f32>(x_531.x, x_531.y, x_531.z));
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_536 : vec4<f32> = u_xlat6;
        let x_538 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat5;
        let x_544 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_546 : vec3<f32> = (vec3<f32>(x_541.y, x_541.x, x_541.z) * vec3<f32>(x_544.x, x_544.x, x_544.x));
        let x_547 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat6;
        let x_552 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_554 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_552.y, x_552.y, x_552.y));
        let x_555 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
        let x_558 : f32 = u_xlat6.x;
        u_xlat5.w = x_558;
        let x_560 : vec4<f32> = u_xlat3;
        let x_563 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_566 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_560.x, x_560.y, x_560.x, x_560.y) * vec4<f32>(x_563.x, x_563.y, x_563.x, x_563.y)) + vec4<f32>(x_566.y, x_566.w, x_566.x, x_566.w));
        let x_569 : vec4<f32> = u_xlat3;
        let x_572 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_575 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(x_572.x, x_572.y)) + vec2<f32>(x_575.z, x_575.w));
        let x_579 : f32 = u_xlat5.y;
        u_xlat6.w = x_579;
        let x_581 : vec4<f32> = u_xlat6;
        let x_582 : vec2<f32> = vec2<f32>(x_581.y, x_581.z);
        let x_583 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_583.x, x_582.x, x_583.z, x_582.y);
        let x_585 : vec4<f32> = u_xlat3;
        let x_588 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_591 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y) * vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y)) + vec4<f32>(x_591.x, x_591.y, x_591.z, x_591.y));
        let x_594 : vec4<f32> = u_xlat3;
        let x_597 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_600 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_594.x, x_594.y, x_594.x, x_594.y) * vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y)) + vec4<f32>(x_600.w, x_600.y, x_600.w, x_600.z));
        let x_603 : vec4<f32> = u_xlat3;
        let x_606 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_609 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y) * vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y)) + vec4<f32>(x_609.x, x_609.w, x_609.z, x_609.w));
        let x_613 : vec4<f32> = u_xlat4;
        let x_615 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_613.x, x_613.x, x_613.x, x_613.y) * vec4<f32>(x_615.z, x_615.w, x_615.y, x_615.z));
        let x_619 : vec4<f32> = u_xlat4;
        let x_621 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_619.y, x_619.y, x_619.z, x_619.z) * x_621);
        let x_624 : f32 = u_xlat4.z;
        let x_626 : f32 = u_xlat9.y;
        u_xlat3.x = (x_624 * x_626);
        let x_630 : vec4<f32> = u_xlat7;
        let x_631 : vec2<f32> = vec2<f32>(x_630.x, x_630.y);
        let x_633 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_631.x, x_631.y, x_633);
        let x_641 : vec3<f32> = txVec4;
        let x_643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_641.xy, x_641.z);
        u_xlat25.x = x_643;
        let x_646 : vec4<f32> = u_xlat7;
        let x_647 : vec2<f32> = vec2<f32>(x_646.z, x_646.w);
        let x_649 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_647.x, x_647.y, x_649);
        let x_656 : vec3<f32> = txVec5;
        let x_658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_656.xy, x_656.z);
        u_xlat4.x = x_658;
        let x_661 : f32 = u_xlat4.x;
        let x_663 : f32 = u_xlat10.y;
        u_xlat4.x = (x_661 * x_663);
        let x_667 : f32 = u_xlat10.x;
        let x_669 : f32 = u_xlat25.x;
        let x_672 : f32 = u_xlat4.x;
        u_xlat25.x = ((x_667 * x_669) + x_672);
        let x_676 : vec2<f32> = u_xlat47;
        let x_678 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_676.x, x_676.y, x_678);
        let x_685 : vec3<f32> = txVec6;
        let x_687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_685.xy, x_685.z);
        u_xlat47.x = x_687;
        let x_690 : f32 = u_xlat10.z;
        let x_692 : f32 = u_xlat47.x;
        let x_695 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_690 * x_692) + x_695);
        let x_699 : vec4<f32> = u_xlat6;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_709 : vec3<f32> = txVec7;
        let x_711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_709.xy, x_709.z);
        u_xlat47.x = x_711;
        let x_714 : f32 = u_xlat10.w;
        let x_716 : f32 = u_xlat47.x;
        let x_719 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_714 * x_716) + x_719);
        let x_723 : vec4<f32> = u_xlat8;
        let x_724 : vec2<f32> = vec2<f32>(x_723.x, x_723.y);
        let x_726 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_724.x, x_724.y, x_726);
        let x_733 : vec3<f32> = txVec8;
        let x_735 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_733.xy, x_733.z);
        u_xlat47.x = x_735;
        let x_738 : f32 = u_xlat11.x;
        let x_740 : f32 = u_xlat47.x;
        let x_743 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_738 * x_740) + x_743);
        let x_747 : vec4<f32> = u_xlat8;
        let x_748 : vec2<f32> = vec2<f32>(x_747.z, x_747.w);
        let x_750 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_748.x, x_748.y, x_750);
        let x_757 : vec3<f32> = txVec9;
        let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_757.xy, x_757.z);
        u_xlat47.x = x_759;
        let x_762 : f32 = u_xlat11.y;
        let x_764 : f32 = u_xlat47.x;
        let x_767 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_762 * x_764) + x_767);
        let x_771 : vec4<f32> = u_xlat6;
        let x_772 : vec2<f32> = vec2<f32>(x_771.z, x_771.w);
        let x_774 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec10;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat47.x = x_783;
        let x_786 : f32 = u_xlat11.z;
        let x_788 : f32 = u_xlat47.x;
        let x_791 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_786 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat5;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec11;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat47.x = x_807;
        let x_810 : f32 = u_xlat11.w;
        let x_812 : f32 = u_xlat47.x;
        let x_815 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_810 * x_812) + x_815);
        let x_819 : vec4<f32> = u_xlat5;
        let x_820 : vec2<f32> = vec2<f32>(x_819.z, x_819.w);
        let x_822 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_820.x, x_820.y, x_822);
        let x_829 : vec3<f32> = txVec12;
        let x_831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_829.xy, x_829.z);
        u_xlat47.x = x_831;
        let x_834 : f32 = u_xlat3.x;
        let x_836 : f32 = u_xlat47.x;
        let x_839 : f32 = u_xlat25.x;
        u_xlat68 = ((x_834 * x_836) + x_839);
      } else {
        let x_842 : vec4<f32> = vs_TEXCOORD6;
        let x_845 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_848 : vec2<f32> = ((vec2<f32>(x_842.x, x_842.y) * vec2<f32>(x_845.z, x_845.w)) + vec2<f32>(0.5f, 0.5f));
        let x_849 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_851 : vec4<f32> = u_xlat3;
        let x_853 : vec2<f32> = floor(vec2<f32>(x_851.x, x_851.y));
        let x_854 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_853.x, x_853.y, x_854.z, x_854.w);
        let x_856 : vec4<f32> = vs_TEXCOORD6;
        let x_859 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_862 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_856.x, x_856.y) * vec2<f32>(x_859.z, x_859.w)) + -(vec2<f32>(x_862.x, x_862.y)));
        let x_866 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_866.x, x_866.x, x_866.y, x_866.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_869 : vec4<f32> = u_xlat4;
        let x_871 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_869.x, x_869.x, x_869.z, x_869.z) * vec4<f32>(x_871.x, x_871.x, x_871.z, x_871.z));
        let x_874 : vec4<f32> = u_xlat5;
        let x_878 : vec2<f32> = (vec2<f32>(x_874.y, x_874.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_879 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_879.x, x_878.x, x_879.z, x_878.y);
        let x_881 : vec4<f32> = u_xlat5;
        let x_884 : vec2<f32> = u_xlat47;
        let x_886 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.z) * vec2<f32>(0.5f, 0.5f)) + -(x_884));
        let x_887 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_886.x, x_887.y, x_886.y, x_887.w);
        let x_889 : vec2<f32> = u_xlat47;
        let x_891 : vec2<f32> = (-(x_889) + vec2<f32>(1.0f, 1.0f));
        let x_892 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_894 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_894, vec2<f32>(0.0f, 0.0f));
        let x_896 : vec2<f32> = u_xlat49;
        let x_898 : vec2<f32> = u_xlat49;
        let x_900 : vec4<f32> = u_xlat5;
        let x_902 : vec2<f32> = ((-(x_896) * x_898) + vec2<f32>(x_900.x, x_900.y));
        let x_903 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_905, vec2<f32>(0.0f, 0.0f));
        let x_908 : vec2<f32> = u_xlat49;
        let x_910 : vec2<f32> = u_xlat49;
        let x_912 : vec4<f32> = u_xlat4;
        let x_914 : vec2<f32> = ((-(x_908) * x_910) + vec2<f32>(x_912.y, x_912.w));
        let x_915 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_914.x, x_915.y, x_914.y);
        let x_917 : vec4<f32> = u_xlat5;
        let x_920 : vec2<f32> = (vec2<f32>(x_917.x, x_917.y) + vec2<f32>(2.0f, 2.0f));
        let x_921 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_920.x, x_920.y, x_921.z, x_921.w);
        let x_923 : vec3<f32> = u_xlat26;
        let x_925 : vec2<f32> = (vec2<f32>(x_923.x, x_923.z) + vec2<f32>(2.0f, 2.0f));
        let x_926 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_926.x, x_925.x, x_926.z, x_925.y);
        let x_929 : f32 = u_xlat4.y;
        u_xlat7.z = (x_929 * 0.08163200318813323975f);
        let x_933 : vec4<f32> = u_xlat4;
        let x_936 : vec3<f32> = (vec3<f32>(x_933.z, x_933.x, x_933.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_937 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat5;
        let x_942 : vec2<f32> = (vec2<f32>(x_939.x, x_939.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_943 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
        let x_946 : f32 = u_xlat8.y;
        u_xlat7.x = x_946;
        let x_948 : vec2<f32> = u_xlat47;
        let x_955 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_956.x, x_955.x, x_956.z, x_955.y);
        let x_958 : vec2<f32> = u_xlat47;
        let x_962 : vec2<f32> = ((vec2<f32>(x_958.x, x_958.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_963 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_962.x, x_963.y, x_962.y, x_963.w);
        let x_966 : f32 = u_xlat4.x;
        u_xlat5.y = x_966;
        let x_969 : f32 = u_xlat6.y;
        u_xlat5.w = x_969;
        let x_971 : vec4<f32> = u_xlat5;
        let x_972 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_971 + x_972);
        let x_974 : vec2<f32> = u_xlat47;
        let x_977 : vec2<f32> = ((vec2<f32>(x_974.y, x_974.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_978 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_978.x, x_977.x, x_978.z, x_977.y);
        let x_980 : vec2<f32> = u_xlat47;
        let x_983 : vec2<f32> = ((vec2<f32>(x_980.y, x_980.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_984 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_983.x, x_984.y, x_983.y, x_984.w);
        let x_987 : f32 = u_xlat4.y;
        u_xlat6.y = x_987;
        let x_989 : vec4<f32> = u_xlat6;
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_989 + x_990);
        let x_992 : vec4<f32> = u_xlat5;
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_992 / x_993);
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_995 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1002 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_1001 / x_1002);
        let x_1004 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1004 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1006 : vec4<f32> = u_xlat5;
        let x_1009 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1006.w, x_1006.x, x_1006.y, x_1006.z) * vec4<f32>(x_1009.x, x_1009.x, x_1009.x, x_1009.x));
        let x_1012 : vec4<f32> = u_xlat6;
        let x_1015 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1012.x, x_1012.w, x_1012.y, x_1012.z) * vec4<f32>(x_1015.y, x_1015.y, x_1015.y, x_1015.y));
        let x_1018 : vec4<f32> = u_xlat5;
        let x_1019 : vec3<f32> = vec3<f32>(x_1018.y, x_1018.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1019.x, x_1020.y, x_1019.y, x_1019.z);
        let x_1023 : f32 = u_xlat6.x;
        u_xlat8.y = x_1023;
        let x_1025 : vec4<f32> = u_xlat3;
        let x_1028 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y) * vec4<f32>(x_1028.x, x_1028.y, x_1028.x, x_1028.y)) + vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat3;
        let x_1037 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1037.x, x_1037.y)) + vec2<f32>(x_1040.w, x_1040.y));
        let x_1044 : f32 = u_xlat8.y;
        u_xlat5.y = x_1044;
        let x_1047 : f32 = u_xlat6.z;
        u_xlat8.y = x_1047;
        let x_1049 : vec4<f32> = u_xlat3;
        let x_1052 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1055 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1049.x, x_1049.y, x_1049.x, x_1049.y) * vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y)) + vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.y));
        let x_1058 : vec4<f32> = u_xlat3;
        let x_1061 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat8;
        let x_1066 : vec2<f32> = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1067 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
        let x_1070 : f32 = u_xlat8.y;
        u_xlat5.z = x_1070;
        let x_1073 : vec4<f32> = u_xlat3;
        let x_1076 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y) * vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.y)) + vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.z));
        let x_1083 : f32 = u_xlat6.w;
        u_xlat8.y = x_1083;
        let x_1086 : vec4<f32> = u_xlat3;
        let x_1089 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y) * vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y)) + vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1092.y));
        let x_1096 : vec4<f32> = u_xlat3;
        let x_1099 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1102 : vec4<f32> = u_xlat8;
        u_xlat27 = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1099.x, x_1099.y)) + vec2<f32>(x_1102.w, x_1102.y));
        let x_1106 : f32 = u_xlat8.y;
        u_xlat5.w = x_1106;
        let x_1109 : vec4<f32> = u_xlat3;
        let x_1112 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.x, x_1115.w));
        let x_1118 : vec4<f32> = u_xlat8;
        let x_1119 : vec3<f32> = vec3<f32>(x_1118.x, x_1118.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1119.z);
        let x_1122 : vec4<f32> = u_xlat3;
        let x_1125 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y) * vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y)) + vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.y));
        let x_1132 : vec4<f32> = u_xlat3;
        let x_1135 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(x_1135.x, x_1135.y)) + vec2<f32>(x_1138.w, x_1138.y));
        let x_1142 : f32 = u_xlat5.x;
        u_xlat6.x = x_1142;
        let x_1144 : vec4<f32> = u_xlat3;
        let x_1147 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat6;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1144.x, x_1144.y) * vec2<f32>(x_1147.x, x_1147.y)) + vec2<f32>(x_1150.x, x_1150.y));
        let x_1153 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
        let x_1156 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1156.x, x_1156.x, x_1156.x, x_1156.x) * x_1158);
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1163 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1161.y, x_1161.y, x_1161.y, x_1161.y) * x_1163);
        let x_1166 : vec4<f32> = u_xlat4;
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1166.z, x_1166.z, x_1166.z, x_1166.z) * x_1168);
        let x_1170 : vec4<f32> = u_xlat4;
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1170.w, x_1170.w, x_1170.w, x_1170.w) * x_1172);
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.x, x_1175.y);
        let x_1178 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec13;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat5.x = x_1187;
        let x_1190 : vec4<f32> = u_xlat9;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1201 : vec3<f32> = txVec14;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat71 = x_1203;
        let x_1204 : f32 = u_xlat71;
        let x_1206 : f32 = u_xlat14.y;
        u_xlat71 = (x_1204 * x_1206);
        let x_1209 : f32 = u_xlat14.x;
        let x_1211 : f32 = u_xlat5.x;
        let x_1213 : f32 = u_xlat71;
        u_xlat5.x = ((x_1209 * x_1211) + x_1213);
        let x_1217 : vec2<f32> = u_xlat47;
        let x_1219 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec15;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1226.xy, x_1226.z);
        u_xlat47.x = x_1228;
        let x_1231 : f32 = u_xlat14.z;
        let x_1233 : f32 = u_xlat47.x;
        let x_1236 : f32 = u_xlat5.x;
        u_xlat47.x = ((x_1231 * x_1233) + x_1236);
        let x_1240 : vec4<f32> = u_xlat12;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.x, x_1240.y);
        let x_1243 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1251 : vec3<f32> = txVec16;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat69 = x_1253;
        let x_1255 : f32 = u_xlat14.w;
        let x_1256 : f32 = u_xlat69;
        let x_1259 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1255 * x_1256) + x_1259);
        let x_1263 : vec4<f32> = u_xlat10;
        let x_1264 : vec2<f32> = vec2<f32>(x_1263.x, x_1263.y);
        let x_1266 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1264.x, x_1264.y, x_1266);
        let x_1273 : vec3<f32> = txVec17;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat69 = x_1275;
        let x_1277 : f32 = u_xlat15.x;
        let x_1278 : f32 = u_xlat69;
        let x_1281 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1277 * x_1278) + x_1281);
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.z, x_1285.w);
        let x_1288 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec18;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat69 = x_1297;
        let x_1299 : f32 = u_xlat15.y;
        let x_1300 : f32 = u_xlat69;
        let x_1303 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1299 * x_1300) + x_1303);
        let x_1307 : vec4<f32> = u_xlat11;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.x, x_1307.y);
        let x_1310 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec19;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat69 = x_1319;
        let x_1321 : f32 = u_xlat15.z;
        let x_1322 : f32 = u_xlat69;
        let x_1325 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1321 * x_1322) + x_1325);
        let x_1329 : vec4<f32> = u_xlat12;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.z, x_1329.w);
        let x_1332 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec20;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat69 = x_1341;
        let x_1343 : f32 = u_xlat15.w;
        let x_1344 : f32 = u_xlat69;
        let x_1347 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1343 * x_1344) + x_1347);
        let x_1351 : vec4<f32> = u_xlat13;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.x, x_1351.y);
        let x_1354 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec21;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat69 = x_1363;
        let x_1365 : f32 = u_xlat16.x;
        let x_1366 : f32 = u_xlat69;
        let x_1369 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1365 * x_1366) + x_1369);
        let x_1373 : vec4<f32> = u_xlat13;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec22;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat69 = x_1385;
        let x_1387 : f32 = u_xlat16.y;
        let x_1388 : f32 = u_xlat69;
        let x_1391 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1387 * x_1388) + x_1391);
        let x_1395 : vec2<f32> = u_xlat27;
        let x_1397 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1395.x, x_1395.y, x_1397);
        let x_1404 : vec3<f32> = txVec23;
        let x_1406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1404.xy, x_1404.z);
        u_xlat69 = x_1406;
        let x_1408 : f32 = u_xlat16.z;
        let x_1409 : f32 = u_xlat69;
        let x_1412 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1408 * x_1409) + x_1412);
        let x_1416 : vec2<f32> = u_xlat55;
        let x_1418 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1416.x, x_1416.y, x_1418);
        let x_1425 : vec3<f32> = txVec24;
        let x_1427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1425.xy, x_1425.z);
        u_xlat69 = x_1427;
        let x_1429 : f32 = u_xlat16.w;
        let x_1430 : f32 = u_xlat69;
        let x_1433 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1429 * x_1430) + x_1433);
        let x_1437 : vec4<f32> = u_xlat8;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.x, x_1437.y);
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec25;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat69 = x_1449;
        let x_1451 : f32 = u_xlat4.x;
        let x_1452 : f32 = u_xlat69;
        let x_1455 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1451 * x_1452) + x_1455);
        let x_1459 : vec4<f32> = u_xlat8;
        let x_1460 : vec2<f32> = vec2<f32>(x_1459.z, x_1459.w);
        let x_1462 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1460.x, x_1460.y, x_1462);
        let x_1469 : vec3<f32> = txVec26;
        let x_1471 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1469.xy, x_1469.z);
        u_xlat69 = x_1471;
        let x_1473 : f32 = u_xlat4.y;
        let x_1474 : f32 = u_xlat69;
        let x_1477 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1473 * x_1474) + x_1477);
        let x_1481 : vec2<f32> = u_xlat50;
        let x_1483 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec27;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat69 = x_1492;
        let x_1494 : f32 = u_xlat4.z;
        let x_1495 : f32 = u_xlat69;
        let x_1498 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1494 * x_1495) + x_1498);
        let x_1502 : vec4<f32> = u_xlat3;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.x, x_1502.y);
        let x_1505 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec28;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1512.xy, x_1512.z);
        u_xlat3.x = x_1514;
        let x_1517 : f32 = u_xlat4.w;
        let x_1519 : f32 = u_xlat3.x;
        let x_1522 : f32 = u_xlat47.x;
        u_xlat68 = ((x_1517 * x_1519) + x_1522);
      }
    }
  } else {
    let x_1526 : vec4<f32> = vs_TEXCOORD6;
    let x_1527 : vec2<f32> = vec2<f32>(x_1526.x, x_1526.y);
    let x_1529 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1527.x, x_1527.y, x_1529);
    let x_1536 : vec3<f32> = txVec29;
    let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1536.xy, x_1536.z);
    u_xlat68 = x_1538;
  }
  let x_1540 : f32 = x_258.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1540) + 1.0f);
  let x_1544 : f32 = u_xlat68;
  let x_1546 : f32 = x_258.x_MainLightShadowParams.x;
  let x_1549 : f32 = u_xlat3.x;
  u_xlat68 = ((x_1544 * x_1546) + x_1549);
  let x_1552 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_1552);
  let x_1558 : f32 = vs_TEXCOORD6.z;
  u_xlatb25.x = (x_1558 >= 1.0f);
  let x_1562 : bool = u_xlatb25.x;
  let x_1563 : bool = u_xlatb3;
  u_xlatb3 = (x_1562 | x_1563);
  let x_1565 : bool = u_xlatb3;
  let x_1566 : f32 = u_xlat68;
  u_xlat68 = select(x_1566, 1.0f, x_1565);
  let x_1568 : vec3<f32> = vs_TEXCOORD1;
  let x_1572 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1574 : vec3<f32> = (x_1568 + -(x_1572));
  let x_1575 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
  let x_1577 : vec4<f32> = u_xlat3;
  let x_1579 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1577.x, x_1577.y, x_1577.z), vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
  let x_1584 : f32 = u_xlat3.x;
  let x_1586 : f32 = x_258.x_MainLightShadowParams.z;
  let x_1589 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1584 * x_1586) + x_1589);
  let x_1593 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1593, 0.0f, 1.0f);
  let x_1596 : f32 = u_xlat68;
  u_xlat47.x = (-(x_1596) + 1.0f);
  let x_1601 : f32 = u_xlat25.x;
  let x_1603 : f32 = u_xlat47.x;
  let x_1605 : f32 = u_xlat68;
  u_xlat68 = ((x_1601 * x_1603) + x_1605);
  let x_1614 : f32 = x_1612.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_1614 == -1.0f));
  let x_1619 : bool = u_xlatb25.x;
  if (x_1619) {
    let x_1622 : vec3<f32> = vs_TEXCOORD1;
    let x_1625 : vec4<f32> = x_1612.x_MainLightWorldToLight[1i];
    let x_1627 : vec2<f32> = (vec2<f32>(x_1622.y, x_1622.y) * vec2<f32>(x_1625.x, x_1625.y));
    let x_1628 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1627.x, x_1627.y, x_1628.z);
    let x_1631 : vec4<f32> = x_1612.x_MainLightWorldToLight[0i];
    let x_1633 : vec3<f32> = vs_TEXCOORD1;
    let x_1636 : vec3<f32> = u_xlat25;
    let x_1638 : vec2<f32> = ((vec2<f32>(x_1631.x, x_1631.y) * vec2<f32>(x_1633.x, x_1633.x)) + vec2<f32>(x_1636.x, x_1636.y));
    let x_1639 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1638.x, x_1638.y, x_1639.z);
    let x_1642 : vec4<f32> = x_1612.x_MainLightWorldToLight[2i];
    let x_1644 : vec3<f32> = vs_TEXCOORD1;
    let x_1647 : vec3<f32> = u_xlat25;
    let x_1649 : vec2<f32> = ((vec2<f32>(x_1642.x, x_1642.y) * vec2<f32>(x_1644.z, x_1644.z)) + vec2<f32>(x_1647.x, x_1647.y));
    let x_1650 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1649.x, x_1649.y, x_1650.z);
    let x_1652 : vec3<f32> = u_xlat25;
    let x_1655 : vec4<f32> = x_1612.x_MainLightWorldToLight[3i];
    let x_1657 : vec2<f32> = (vec2<f32>(x_1652.x, x_1652.y) + vec2<f32>(x_1655.x, x_1655.y));
    let x_1658 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1657.x, x_1657.y, x_1658.z);
    let x_1660 : vec3<f32> = u_xlat25;
    let x_1663 : vec2<f32> = ((vec2<f32>(x_1660.x, x_1660.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1664 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1663.x, x_1663.y, x_1664.z);
    let x_1671 : vec3<f32> = u_xlat25;
    let x_1674 : f32 = x_45.x_GlobalMipBias.x;
    let x_1675 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1671.x, x_1671.y), x_1674);
    u_xlat4 = x_1675;
    let x_1677 : f32 = x_1612.x_MainLightCookieTextureFormat;
    let x_1679 : f32 = x_1612.x_MainLightCookieTextureFormat;
    let x_1681 : f32 = x_1612.x_MainLightCookieTextureFormat;
    let x_1683 : f32 = x_1612.x_MainLightCookieTextureFormat;
    let x_1684 : vec4<f32> = vec4<f32>(x_1677, x_1679, x_1681, x_1683);
    let x_1692 : vec4<bool> = (vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1684.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_1692.x, x_1692.y);
    let x_1695 : bool = u_xlatb25.y;
    if (x_1695) {
      let x_1700 : f32 = u_xlat4.w;
      x_1696 = x_1700;
    } else {
      let x_1703 : f32 = u_xlat4.x;
      x_1696 = x_1703;
    }
    let x_1704 : f32 = x_1696;
    u_xlat47.x = x_1704;
    let x_1707 : bool = u_xlatb25.x;
    if (x_1707) {
      let x_1711 : vec4<f32> = u_xlat4;
      x_1708 = vec3<f32>(x_1711.x, x_1711.y, x_1711.z);
    } else {
      let x_1714 : vec2<f32> = u_xlat47;
      x_1708 = vec3<f32>(x_1714.x, x_1714.x, x_1714.x);
    }
    let x_1716 : vec3<f32> = x_1708;
    u_xlat25 = x_1716;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_1721 : vec3<f32> = u_xlat25;
  let x_1723 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat25 = (x_1721 * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
  let x_1726 : f32 = u_xlat68;
  let x_1728 : f32 = x_95.unity_LightData.z;
  u_xlat68 = (x_1726 * x_1728);
  let x_1730 : f32 = u_xlat68;
  let x_1732 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1730, x_1730, x_1730) * x_1732);
  let x_1734 : vec3<f32> = u_xlat1;
  let x_1736 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat68 = dot(x_1734, vec3<f32>(x_1736.x, x_1736.y, x_1736.z));
  let x_1739 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1739, 0.0f, 1.0f);
  let x_1741 : f32 = u_xlat68;
  let x_1743 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1741, x_1741, x_1741) * x_1743);
  let x_1745 : vec4<f32> = u_xlat0;
  let x_1747 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1745.y, x_1745.z, x_1745.w) * x_1747);
  let x_1750 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1752 : f32 = x_95.unity_LightData.y;
  u_xlat68 = min(x_1750, x_1752);
  let x_1756 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_1756));
  let x_1760 : f32 = u_xlat3.x;
  let x_1763 : f32 = x_258.x_AdditionalShadowFadeParams.x;
  let x_1766 : f32 = x_258.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1760 * x_1763) + x_1766);
  let x_1770 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1770, 0.0f, 1.0f);
  let x_1775 : f32 = x_1612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1777 : f32 = x_1612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1779 : f32 = x_1612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1781 : f32 = x_1612.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1782 : vec4<f32> = vec4<f32>(x_1775, x_1777, x_1779, x_1781);
  let x_1788 : vec4<bool> = (vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1782.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1788.x, x_1788.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1800 : u32 = u_xlatu_loop_1;
    let x_1801 : u32 = u_xlatu68;
    if ((x_1800 < x_1801)) {
    } else {
      break;
    }
    let x_1804 : u32 = u_xlatu_loop_1;
    u_xlatu70 = (x_1804 >> 2u);
    let x_1808 : u32 = u_xlatu_loop_1;
    u_xlati71 = bitcast<i32>((x_1808 & 3u));
    let x_1812 : u32 = u_xlatu70;
    let x_1815 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1812)];
    let x_1825 : i32 = u_xlati71;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1830 : vec4<u32> = indexable[x_1825];
    u_xlat70 = dot(x_1815, bitcast<vec4<f32>>(x_1830));
    let x_1834 : f32 = u_xlat70;
    u_xlati70 = i32(x_1834);
    let x_1836 : vec3<f32> = vs_TEXCOORD1;
    let x_1847 : i32 = u_xlati70;
    let x_1849 : vec4<f32> = x_1846.x_AdditionalLightsPosition[x_1847];
    let x_1852 : i32 = u_xlati70;
    let x_1854 : vec4<f32> = x_1846.x_AdditionalLightsPosition[x_1852];
    let x_1856 : vec3<f32> = ((-(x_1836) * vec3<f32>(x_1849.w, x_1849.w, x_1849.w)) + vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
    let x_1857 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
    let x_1859 : vec4<f32> = u_xlat6;
    let x_1861 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1859.x, x_1859.y, x_1859.z), vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
    let x_1864 : f32 = u_xlat71;
    u_xlat71 = max(x_1864, 0.00006103515625f);
    let x_1868 : f32 = u_xlat71;
    u_xlat72 = inverseSqrt(x_1868);
    let x_1870 : f32 = u_xlat72;
    let x_1872 : vec4<f32> = u_xlat6;
    let x_1874 : vec3<f32> = (vec3<f32>(x_1870, x_1870, x_1870) * vec3<f32>(x_1872.x, x_1872.y, x_1872.z));
    let x_1875 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1874.x, x_1874.y, x_1874.z, x_1875.w);
    let x_1877 : f32 = u_xlat71;
    u_xlat72 = (1.0f / x_1877);
    let x_1879 : f32 = u_xlat71;
    let x_1880 : i32 = u_xlati70;
    let x_1882 : f32 = x_1846.x_AdditionalLightsAttenuation[x_1880].x;
    u_xlat71 = (x_1879 * x_1882);
    let x_1884 : f32 = u_xlat71;
    let x_1886 : f32 = u_xlat71;
    u_xlat71 = ((-(x_1884) * x_1886) + 1.0f);
    let x_1889 : f32 = u_xlat71;
    u_xlat71 = max(x_1889, 0.0f);
    let x_1891 : f32 = u_xlat71;
    let x_1892 : f32 = u_xlat71;
    u_xlat71 = (x_1891 * x_1892);
    let x_1894 : f32 = u_xlat71;
    let x_1895 : f32 = u_xlat72;
    u_xlat71 = (x_1894 * x_1895);
    let x_1897 : i32 = u_xlati70;
    let x_1899 : vec4<f32> = x_1846.x_AdditionalLightsSpotDir[x_1897];
    let x_1901 : vec4<f32> = u_xlat6;
    u_xlat72 = dot(vec3<f32>(x_1899.x, x_1899.y, x_1899.z), vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
    let x_1904 : f32 = u_xlat72;
    let x_1905 : i32 = u_xlati70;
    let x_1907 : f32 = x_1846.x_AdditionalLightsAttenuation[x_1905].z;
    let x_1909 : i32 = u_xlati70;
    let x_1911 : f32 = x_1846.x_AdditionalLightsAttenuation[x_1909].w;
    u_xlat72 = ((x_1904 * x_1907) + x_1911);
    let x_1913 : f32 = u_xlat72;
    u_xlat72 = clamp(x_1913, 0.0f, 1.0f);
    let x_1915 : f32 = u_xlat72;
    let x_1916 : f32 = u_xlat72;
    u_xlat72 = (x_1915 * x_1916);
    let x_1918 : f32 = u_xlat71;
    let x_1919 : f32 = u_xlat72;
    u_xlat71 = (x_1918 * x_1919);
    let x_1923 : i32 = u_xlati70;
    let x_1925 : f32 = x_258.x_AdditionalShadowParams[x_1923].w;
    u_xlati72 = i32(x_1925);
    let x_1930 : i32 = u_xlati72;
    u_xlatb7.x = (x_1930 >= 0i);
    let x_1934 : bool = u_xlatb7.x;
    if (x_1934) {
      let x_1938 : i32 = u_xlati70;
      let x_1940 : f32 = x_258.x_AdditionalShadowParams[x_1938].z;
      u_xlatb7.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1940, x_1940, x_1940, x_1940))));
      let x_1946 : bool = u_xlatb7.x;
      if (x_1946) {
        let x_1949 : vec4<f32> = u_xlat6;
        let x_1952 : vec4<f32> = u_xlat6;
        let x_1955 : vec4<bool> = (abs(vec4<f32>(x_1949.z, x_1949.z, x_1949.y, x_1949.z)) >= abs(vec4<f32>(x_1952.x, x_1952.y, x_1952.x, x_1952.x)));
        u_xlatb7 = vec3<bool>(x_1955.x, x_1955.y, x_1955.z);
        let x_1958 : bool = u_xlatb7.y;
        let x_1960 : bool = u_xlatb7.x;
        u_xlatb7.x = (x_1958 & x_1960);
        let x_1964 : vec4<f32> = u_xlat6;
        let x_1967 : vec4<bool> = (-(vec4<f32>(x_1964.z, x_1964.y, x_1964.x, x_1964.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb8 = vec3<bool>(x_1967.x, x_1967.y, x_1967.z);
        let x_1971 : bool = u_xlatb8.x;
        u_xlat29.x = select(4.0f, 5.0f, x_1971);
        let x_1977 : bool = u_xlatb8.y;
        u_xlat29.z = select(2.0f, 3.0f, x_1977);
        let x_1982 : bool = u_xlatb8.z;
        u_xlat8.x = select(0.0f, 1.0f, x_1982);
        let x_1987 : bool = u_xlatb7.z;
        if (x_1987) {
          let x_1992 : f32 = u_xlat29.z;
          x_1988 = x_1992;
        } else {
          let x_1995 : f32 = u_xlat8.x;
          x_1988 = x_1995;
        }
        let x_1996 : f32 = x_1988;
        u_xlat51 = x_1996;
        let x_1998 : bool = u_xlatb7.x;
        if (x_1998) {
          let x_2003 : f32 = u_xlat29.x;
          x_1999 = x_2003;
        } else {
          let x_2005 : f32 = u_xlat51;
          x_1999 = x_2005;
        }
        let x_2006 : f32 = x_1999;
        u_xlat7.x = x_2006;
        let x_2008 : i32 = u_xlati70;
        let x_2010 : f32 = x_258.x_AdditionalShadowParams[x_2008].w;
        u_xlat29.x = trunc(x_2010);
        let x_2014 : f32 = u_xlat7.x;
        let x_2016 : f32 = u_xlat29.x;
        u_xlat7.x = (x_2014 + x_2016);
        let x_2020 : f32 = u_xlat7.x;
        u_xlati72 = i32(x_2020);
      }
      let x_2022 : i32 = u_xlati72;
      u_xlati72 = (x_2022 << bitcast<u32>(2i));
      let x_2024 : vec3<f32> = vs_TEXCOORD1;
      let x_2027 : i32 = u_xlati72;
      let x_2030 : i32 = u_xlati72;
      let x_2034 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_2027 + 1i) / 4i)][((x_2030 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2024.y, x_2024.y, x_2024.y, x_2024.y) * x_2034);
      let x_2036 : i32 = u_xlati72;
      let x_2038 : i32 = u_xlati72;
      let x_2041 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[(x_2036 / 4i)][(x_2038 % 4i)];
      let x_2042 : vec3<f32> = vs_TEXCOORD1;
      let x_2045 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2041 * vec4<f32>(x_2042.x, x_2042.x, x_2042.x, x_2042.x)) + x_2045);
      let x_2047 : i32 = u_xlati72;
      let x_2050 : i32 = u_xlati72;
      let x_2054 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_2047 + 2i) / 4i)][((x_2050 + 2i) % 4i)];
      let x_2055 : vec3<f32> = vs_TEXCOORD1;
      let x_2058 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2054 * vec4<f32>(x_2055.z, x_2055.z, x_2055.z, x_2055.z)) + x_2058);
      let x_2060 : vec4<f32> = u_xlat7;
      let x_2061 : i32 = u_xlati72;
      let x_2064 : i32 = u_xlati72;
      let x_2068 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_2061 + 3i) / 4i)][((x_2064 + 3i) % 4i)];
      u_xlat7 = (x_2060 + x_2068);
      let x_2070 : vec4<f32> = u_xlat7;
      let x_2072 : vec4<f32> = u_xlat7;
      let x_2074 : vec3<f32> = (vec3<f32>(x_2070.x, x_2070.y, x_2070.z) / vec3<f32>(x_2072.w, x_2072.w, x_2072.w));
      let x_2075 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
      let x_2078 : i32 = u_xlati70;
      let x_2080 : f32 = x_258.x_AdditionalShadowParams[x_2078].y;
      u_xlatb72 = (0.0f < x_2080);
      let x_2082 : bool = u_xlatb72;
      if (x_2082) {
        let x_2085 : i32 = u_xlati70;
        let x_2087 : f32 = x_258.x_AdditionalShadowParams[x_2085].y;
        u_xlatb72 = (1.0f == x_2087);
        let x_2089 : bool = u_xlatb72;
        if (x_2089) {
          let x_2092 : vec4<f32> = u_xlat7;
          let x_2096 : vec4<f32> = x_258.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2092.x, x_2092.y, x_2092.x, x_2092.y) + x_2096);
          let x_2099 : vec4<f32> = u_xlat8;
          let x_2100 : vec2<f32> = vec2<f32>(x_2099.x, x_2099.y);
          let x_2102 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2100.x, x_2100.y, x_2102);
          let x_2110 : vec3<f32> = txVec30;
          let x_2112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2110.xy, x_2110.z);
          u_xlat9.x = x_2112;
          let x_2115 : vec4<f32> = u_xlat8;
          let x_2116 : vec2<f32> = vec2<f32>(x_2115.z, x_2115.w);
          let x_2118 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2116.x, x_2116.y, x_2118);
          let x_2125 : vec3<f32> = txVec31;
          let x_2127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2125.xy, x_2125.z);
          u_xlat9.y = x_2127;
          let x_2129 : vec4<f32> = u_xlat7;
          let x_2133 : vec4<f32> = x_258.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2129.x, x_2129.y, x_2129.x, x_2129.y) + x_2133);
          let x_2136 : vec4<f32> = u_xlat8;
          let x_2137 : vec2<f32> = vec2<f32>(x_2136.x, x_2136.y);
          let x_2139 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2137.x, x_2137.y, x_2139);
          let x_2146 : vec3<f32> = txVec32;
          let x_2148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2146.xy, x_2146.z);
          u_xlat9.z = x_2148;
          let x_2151 : vec4<f32> = u_xlat8;
          let x_2152 : vec2<f32> = vec2<f32>(x_2151.z, x_2151.w);
          let x_2154 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2152.x, x_2152.y, x_2154);
          let x_2161 : vec3<f32> = txVec33;
          let x_2163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2161.xy, x_2161.z);
          u_xlat9.w = x_2163;
          let x_2165 : vec4<f32> = u_xlat9;
          u_xlat72 = dot(x_2165, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2169 : i32 = u_xlati70;
          let x_2171 : f32 = x_258.x_AdditionalShadowParams[x_2169].y;
          u_xlatb73 = (2.0f == x_2171);
          let x_2173 : bool = u_xlatb73;
          if (x_2173) {
            let x_2176 : vec4<f32> = u_xlat7;
            let x_2180 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2183 : vec2<f32> = ((vec2<f32>(x_2176.x, x_2176.y) * vec2<f32>(x_2180.z, x_2180.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2184 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2183.x, x_2183.y, x_2184.z, x_2184.w);
            let x_2186 : vec4<f32> = u_xlat8;
            let x_2188 : vec2<f32> = floor(vec2<f32>(x_2186.x, x_2186.y));
            let x_2189 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
            let x_2192 : vec4<f32> = u_xlat7;
            let x_2195 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2198 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2192.x, x_2192.y) * vec2<f32>(x_2195.z, x_2195.w)) + -(vec2<f32>(x_2198.x, x_2198.y)));
            let x_2202 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2202.x, x_2202.x, x_2202.y, x_2202.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2205 : vec4<f32> = u_xlat9;
            let x_2207 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2205.x, x_2205.x, x_2205.z, x_2205.z) * vec4<f32>(x_2207.x, x_2207.x, x_2207.z, x_2207.z));
            let x_2210 : vec4<f32> = u_xlat10;
            let x_2212 : vec2<f32> = (vec2<f32>(x_2210.y, x_2210.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2213 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2212.x, x_2213.y, x_2212.y, x_2213.w);
            let x_2215 : vec4<f32> = u_xlat10;
            let x_2218 : vec2<f32> = u_xlat52;
            let x_2220 : vec2<f32> = ((vec2<f32>(x_2215.x, x_2215.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2218));
            let x_2221 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
            let x_2224 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2224) + vec2<f32>(1.0f, 1.0f));
            let x_2227 : vec2<f32> = u_xlat52;
            let x_2228 : vec2<f32> = min(x_2227, vec2<f32>(0.0f, 0.0f));
            let x_2229 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2228.x, x_2228.y, x_2229.z, x_2229.w);
            let x_2231 : vec4<f32> = u_xlat11;
            let x_2234 : vec4<f32> = u_xlat11;
            let x_2237 : vec2<f32> = u_xlat54;
            let x_2238 : vec2<f32> = ((-(vec2<f32>(x_2231.x, x_2231.y)) * vec2<f32>(x_2234.x, x_2234.y)) + x_2237);
            let x_2239 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2238.x, x_2238.y, x_2239.z, x_2239.w);
            let x_2241 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2241, vec2<f32>(0.0f, 0.0f));
            let x_2243 : vec2<f32> = u_xlat52;
            let x_2245 : vec2<f32> = u_xlat52;
            let x_2247 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2243) * x_2245) + vec2<f32>(x_2247.y, x_2247.w));
            let x_2250 : vec4<f32> = u_xlat11;
            let x_2252 : vec2<f32> = (vec2<f32>(x_2250.x, x_2250.y) + vec2<f32>(1.0f, 1.0f));
            let x_2253 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2252.x, x_2252.y, x_2253.z, x_2253.w);
            let x_2255 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2255 + vec2<f32>(1.0f, 1.0f));
            let x_2257 : vec4<f32> = u_xlat10;
            let x_2259 : vec2<f32> = (vec2<f32>(x_2257.x, x_2257.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2260 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
            let x_2262 : vec2<f32> = u_xlat54;
            let x_2263 : vec2<f32> = (x_2262 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2264 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
            let x_2266 : vec4<f32> = u_xlat11;
            let x_2268 : vec2<f32> = (vec2<f32>(x_2266.x, x_2266.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2269 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2268.x, x_2268.y, x_2269.z, x_2269.w);
            let x_2271 : vec2<f32> = u_xlat52;
            let x_2272 : vec2<f32> = (x_2271 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2273 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2272.x, x_2272.y, x_2273.z, x_2273.w);
            let x_2275 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2275.y, x_2275.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2279 : f32 = u_xlat11.x;
            u_xlat12.z = x_2279;
            let x_2282 : f32 = u_xlat52.x;
            u_xlat12.w = x_2282;
            let x_2285 : f32 = u_xlat13.x;
            u_xlat10.z = x_2285;
            let x_2288 : f32 = u_xlat9.x;
            u_xlat10.w = x_2288;
            let x_2290 : vec4<f32> = u_xlat10;
            let x_2292 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2290.z, x_2290.w, x_2290.x, x_2290.z) + vec4<f32>(x_2292.z, x_2292.w, x_2292.x, x_2292.z));
            let x_2296 : f32 = u_xlat12.y;
            u_xlat11.z = x_2296;
            let x_2299 : f32 = u_xlat52.y;
            u_xlat11.w = x_2299;
            let x_2302 : f32 = u_xlat10.y;
            u_xlat13.z = x_2302;
            let x_2305 : f32 = u_xlat9.z;
            u_xlat13.w = x_2305;
            let x_2307 : vec4<f32> = u_xlat11;
            let x_2309 : vec4<f32> = u_xlat13;
            let x_2311 : vec3<f32> = (vec3<f32>(x_2307.z, x_2307.y, x_2307.w) + vec3<f32>(x_2309.z, x_2309.y, x_2309.w));
            let x_2312 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
            let x_2314 : vec4<f32> = u_xlat10;
            let x_2316 : vec4<f32> = u_xlat14;
            let x_2318 : vec3<f32> = (vec3<f32>(x_2314.x, x_2314.z, x_2314.w) / vec3<f32>(x_2316.z, x_2316.w, x_2316.y));
            let x_2319 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
            let x_2321 : vec4<f32> = u_xlat10;
            let x_2323 : vec3<f32> = (vec3<f32>(x_2321.x, x_2321.y, x_2321.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2324 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2323.x, x_2323.y, x_2323.z, x_2324.w);
            let x_2326 : vec4<f32> = u_xlat13;
            let x_2328 : vec4<f32> = u_xlat9;
            let x_2330 : vec3<f32> = (vec3<f32>(x_2326.z, x_2326.y, x_2326.w) / vec3<f32>(x_2328.x, x_2328.y, x_2328.z));
            let x_2331 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
            let x_2333 : vec4<f32> = u_xlat11;
            let x_2335 : vec3<f32> = (vec3<f32>(x_2333.x, x_2333.y, x_2333.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2336 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2335.x, x_2335.y, x_2335.z, x_2336.w);
            let x_2338 : vec4<f32> = u_xlat10;
            let x_2341 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2343 : vec3<f32> = (vec3<f32>(x_2338.y, x_2338.x, x_2338.z) * vec3<f32>(x_2341.x, x_2341.x, x_2341.x));
            let x_2344 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
            let x_2346 : vec4<f32> = u_xlat11;
            let x_2349 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2351 : vec3<f32> = (vec3<f32>(x_2346.x, x_2346.y, x_2346.z) * vec3<f32>(x_2349.y, x_2349.y, x_2349.y));
            let x_2352 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
            let x_2355 : f32 = u_xlat11.x;
            u_xlat10.w = x_2355;
            let x_2357 : vec4<f32> = u_xlat8;
            let x_2360 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2363 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.y) * vec4<f32>(x_2360.x, x_2360.y, x_2360.x, x_2360.y)) + vec4<f32>(x_2363.y, x_2363.w, x_2363.x, x_2363.w));
            let x_2366 : vec4<f32> = u_xlat8;
            let x_2369 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2372 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2366.x, x_2366.y) * vec2<f32>(x_2369.x, x_2369.y)) + vec2<f32>(x_2372.z, x_2372.w));
            let x_2376 : f32 = u_xlat10.y;
            u_xlat11.w = x_2376;
            let x_2378 : vec4<f32> = u_xlat11;
            let x_2379 : vec2<f32> = vec2<f32>(x_2378.y, x_2378.z);
            let x_2380 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2380.x, x_2379.x, x_2380.z, x_2379.y);
            let x_2382 : vec4<f32> = u_xlat8;
            let x_2385 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2388 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2382.x, x_2382.y, x_2382.x, x_2382.y) * vec4<f32>(x_2385.x, x_2385.y, x_2385.x, x_2385.y)) + vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2388.y));
            let x_2391 : vec4<f32> = u_xlat8;
            let x_2394 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2397 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2391.x, x_2391.y, x_2391.x, x_2391.y) * vec4<f32>(x_2394.x, x_2394.y, x_2394.x, x_2394.y)) + vec4<f32>(x_2397.w, x_2397.y, x_2397.w, x_2397.z));
            let x_2400 : vec4<f32> = u_xlat8;
            let x_2403 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2406 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2400.x, x_2400.y, x_2400.x, x_2400.y) * vec4<f32>(x_2403.x, x_2403.y, x_2403.x, x_2403.y)) + vec4<f32>(x_2406.x, x_2406.w, x_2406.z, x_2406.w));
            let x_2409 : vec4<f32> = u_xlat9;
            let x_2411 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2409.x, x_2409.x, x_2409.x, x_2409.y) * vec4<f32>(x_2411.z, x_2411.w, x_2411.y, x_2411.z));
            let x_2414 : vec4<f32> = u_xlat9;
            let x_2416 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2414.y, x_2414.y, x_2414.z, x_2414.z) * x_2416);
            let x_2420 : f32 = u_xlat9.z;
            let x_2422 : f32 = u_xlat14.y;
            u_xlat73 = (x_2420 * x_2422);
            let x_2425 : vec4<f32> = u_xlat12;
            let x_2426 : vec2<f32> = vec2<f32>(x_2425.x, x_2425.y);
            let x_2428 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2426.x, x_2426.y, x_2428);
            let x_2435 : vec3<f32> = txVec34;
            let x_2437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2435.xy, x_2435.z);
            u_xlat8.x = x_2437;
            let x_2440 : vec4<f32> = u_xlat12;
            let x_2441 : vec2<f32> = vec2<f32>(x_2440.z, x_2440.w);
            let x_2443 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2441.x, x_2441.y, x_2443);
            let x_2451 : vec3<f32> = txVec35;
            let x_2453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2451.xy, x_2451.z);
            u_xlat30 = x_2453;
            let x_2454 : f32 = u_xlat30;
            let x_2456 : f32 = u_xlat15.y;
            u_xlat30 = (x_2454 * x_2456);
            let x_2459 : f32 = u_xlat15.x;
            let x_2461 : f32 = u_xlat8.x;
            let x_2463 : f32 = u_xlat30;
            u_xlat8.x = ((x_2459 * x_2461) + x_2463);
            let x_2467 : vec2<f32> = u_xlat52;
            let x_2469 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2467.x, x_2467.y, x_2469);
            let x_2476 : vec3<f32> = txVec36;
            let x_2478 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2476.xy, x_2476.z);
            u_xlat30 = x_2478;
            let x_2480 : f32 = u_xlat15.z;
            let x_2481 : f32 = u_xlat30;
            let x_2484 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2480 * x_2481) + x_2484);
            let x_2488 : vec4<f32> = u_xlat11;
            let x_2489 : vec2<f32> = vec2<f32>(x_2488.x, x_2488.y);
            let x_2491 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2489.x, x_2489.y, x_2491);
            let x_2498 : vec3<f32> = txVec37;
            let x_2500 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2498.xy, x_2498.z);
            u_xlat30 = x_2500;
            let x_2502 : f32 = u_xlat15.w;
            let x_2503 : f32 = u_xlat30;
            let x_2506 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2502 * x_2503) + x_2506);
            let x_2510 : vec4<f32> = u_xlat13;
            let x_2511 : vec2<f32> = vec2<f32>(x_2510.x, x_2510.y);
            let x_2513 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2511.x, x_2511.y, x_2513);
            let x_2520 : vec3<f32> = txVec38;
            let x_2522 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
            u_xlat30 = x_2522;
            let x_2524 : f32 = u_xlat16.x;
            let x_2525 : f32 = u_xlat30;
            let x_2528 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2524 * x_2525) + x_2528);
            let x_2532 : vec4<f32> = u_xlat13;
            let x_2533 : vec2<f32> = vec2<f32>(x_2532.z, x_2532.w);
            let x_2535 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2533.x, x_2533.y, x_2535);
            let x_2542 : vec3<f32> = txVec39;
            let x_2544 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2542.xy, x_2542.z);
            u_xlat30 = x_2544;
            let x_2546 : f32 = u_xlat16.y;
            let x_2547 : f32 = u_xlat30;
            let x_2550 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2546 * x_2547) + x_2550);
            let x_2554 : vec4<f32> = u_xlat11;
            let x_2555 : vec2<f32> = vec2<f32>(x_2554.z, x_2554.w);
            let x_2557 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2555.x, x_2555.y, x_2557);
            let x_2564 : vec3<f32> = txVec40;
            let x_2566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2564.xy, x_2564.z);
            u_xlat30 = x_2566;
            let x_2568 : f32 = u_xlat16.z;
            let x_2569 : f32 = u_xlat30;
            let x_2572 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2568 * x_2569) + x_2572);
            let x_2576 : vec4<f32> = u_xlat10;
            let x_2577 : vec2<f32> = vec2<f32>(x_2576.x, x_2576.y);
            let x_2579 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2577.x, x_2577.y, x_2579);
            let x_2586 : vec3<f32> = txVec41;
            let x_2588 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2586.xy, x_2586.z);
            u_xlat30 = x_2588;
            let x_2590 : f32 = u_xlat16.w;
            let x_2591 : f32 = u_xlat30;
            let x_2594 : f32 = u_xlat8.x;
            u_xlat8.x = ((x_2590 * x_2591) + x_2594);
            let x_2598 : vec4<f32> = u_xlat10;
            let x_2599 : vec2<f32> = vec2<f32>(x_2598.z, x_2598.w);
            let x_2601 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2599.x, x_2599.y, x_2601);
            let x_2608 : vec3<f32> = txVec42;
            let x_2610 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2608.xy, x_2608.z);
            u_xlat30 = x_2610;
            let x_2611 : f32 = u_xlat73;
            let x_2612 : f32 = u_xlat30;
            let x_2615 : f32 = u_xlat8.x;
            u_xlat72 = ((x_2611 * x_2612) + x_2615);
          } else {
            let x_2618 : vec4<f32> = u_xlat7;
            let x_2621 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2624 : vec2<f32> = ((vec2<f32>(x_2618.x, x_2618.y) * vec2<f32>(x_2621.z, x_2621.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2625 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2624.x, x_2624.y, x_2625.z, x_2625.w);
            let x_2627 : vec4<f32> = u_xlat8;
            let x_2629 : vec2<f32> = floor(vec2<f32>(x_2627.x, x_2627.y));
            let x_2630 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2629.x, x_2629.y, x_2630.z, x_2630.w);
            let x_2632 : vec4<f32> = u_xlat7;
            let x_2635 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2638 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2632.x, x_2632.y) * vec2<f32>(x_2635.z, x_2635.w)) + -(vec2<f32>(x_2638.x, x_2638.y)));
            let x_2642 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2642.x, x_2642.x, x_2642.y, x_2642.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2645 : vec4<f32> = u_xlat9;
            let x_2647 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2645.x, x_2645.x, x_2645.z, x_2645.z) * vec4<f32>(x_2647.x, x_2647.x, x_2647.z, x_2647.z));
            let x_2650 : vec4<f32> = u_xlat10;
            let x_2652 : vec2<f32> = (vec2<f32>(x_2650.y, x_2650.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2653 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2653.x, x_2652.x, x_2653.z, x_2652.y);
            let x_2655 : vec4<f32> = u_xlat10;
            let x_2658 : vec2<f32> = u_xlat52;
            let x_2660 : vec2<f32> = ((vec2<f32>(x_2655.x, x_2655.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2658));
            let x_2661 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2660.x, x_2661.y, x_2660.y, x_2661.w);
            let x_2663 : vec2<f32> = u_xlat52;
            let x_2665 : vec2<f32> = (-(x_2663) + vec2<f32>(1.0f, 1.0f));
            let x_2666 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
            let x_2668 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2668, vec2<f32>(0.0f, 0.0f));
            let x_2670 : vec2<f32> = u_xlat54;
            let x_2672 : vec2<f32> = u_xlat54;
            let x_2674 : vec4<f32> = u_xlat10;
            let x_2676 : vec2<f32> = ((-(x_2670) * x_2672) + vec2<f32>(x_2674.x, x_2674.y));
            let x_2677 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2676.x, x_2676.y, x_2677.z, x_2677.w);
            let x_2679 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2679, vec2<f32>(0.0f, 0.0f));
            let x_2682 : vec2<f32> = u_xlat54;
            let x_2684 : vec2<f32> = u_xlat54;
            let x_2686 : vec4<f32> = u_xlat9;
            let x_2688 : vec2<f32> = ((-(x_2682) * x_2684) + vec2<f32>(x_2686.y, x_2686.w));
            let x_2689 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2688.x, x_2689.y, x_2688.y);
            let x_2691 : vec4<f32> = u_xlat10;
            let x_2693 : vec2<f32> = (vec2<f32>(x_2691.x, x_2691.y) + vec2<f32>(2.0f, 2.0f));
            let x_2694 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2693.x, x_2693.y, x_2694.z, x_2694.w);
            let x_2696 : vec3<f32> = u_xlat31;
            let x_2698 : vec2<f32> = (vec2<f32>(x_2696.x, x_2696.z) + vec2<f32>(2.0f, 2.0f));
            let x_2699 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2699.x, x_2698.x, x_2699.z, x_2698.y);
            let x_2702 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2702 * 0.08163200318813323975f);
            let x_2705 : vec4<f32> = u_xlat9;
            let x_2707 : vec3<f32> = (vec3<f32>(x_2705.z, x_2705.x, x_2705.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2708 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2707.x, x_2707.y, x_2707.z, x_2708.w);
            let x_2710 : vec4<f32> = u_xlat10;
            let x_2712 : vec2<f32> = (vec2<f32>(x_2710.x, x_2710.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2713 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2712.x, x_2712.y, x_2713.z, x_2713.w);
            let x_2716 : f32 = u_xlat13.y;
            u_xlat12.x = x_2716;
            let x_2718 : vec2<f32> = u_xlat52;
            let x_2721 : vec2<f32> = ((vec2<f32>(x_2718.x, x_2718.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2722 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2722.x, x_2721.x, x_2722.z, x_2721.y);
            let x_2724 : vec2<f32> = u_xlat52;
            let x_2727 : vec2<f32> = ((vec2<f32>(x_2724.x, x_2724.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2728 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2727.x, x_2728.y, x_2727.y, x_2728.w);
            let x_2731 : f32 = u_xlat9.x;
            u_xlat10.y = x_2731;
            let x_2734 : f32 = u_xlat11.y;
            u_xlat10.w = x_2734;
            let x_2736 : vec4<f32> = u_xlat10;
            let x_2737 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2736 + x_2737);
            let x_2739 : vec2<f32> = u_xlat52;
            let x_2742 : vec2<f32> = ((vec2<f32>(x_2739.y, x_2739.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2743 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2743.x, x_2742.x, x_2743.z, x_2742.y);
            let x_2745 : vec2<f32> = u_xlat52;
            let x_2748 : vec2<f32> = ((vec2<f32>(x_2745.y, x_2745.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2749 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2748.x, x_2749.y, x_2748.y, x_2749.w);
            let x_2752 : f32 = u_xlat9.y;
            u_xlat11.y = x_2752;
            let x_2754 : vec4<f32> = u_xlat11;
            let x_2755 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2754 + x_2755);
            let x_2757 : vec4<f32> = u_xlat10;
            let x_2758 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2757 / x_2758);
            let x_2760 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2760 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2762 : vec4<f32> = u_xlat11;
            let x_2763 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2762 / x_2763);
            let x_2765 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2765 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2767 : vec4<f32> = u_xlat10;
            let x_2770 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2767.w, x_2767.x, x_2767.y, x_2767.z) * vec4<f32>(x_2770.x, x_2770.x, x_2770.x, x_2770.x));
            let x_2773 : vec4<f32> = u_xlat11;
            let x_2776 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2773.x, x_2773.w, x_2773.y, x_2773.z) * vec4<f32>(x_2776.y, x_2776.y, x_2776.y, x_2776.y));
            let x_2779 : vec4<f32> = u_xlat10;
            let x_2780 : vec3<f32> = vec3<f32>(x_2779.y, x_2779.z, x_2779.w);
            let x_2781 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2780.x, x_2781.y, x_2780.y, x_2780.z);
            let x_2784 : f32 = u_xlat11.x;
            u_xlat13.y = x_2784;
            let x_2786 : vec4<f32> = u_xlat8;
            let x_2789 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2792 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y) * vec4<f32>(x_2789.x, x_2789.y, x_2789.x, x_2789.y)) + vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2792.y));
            let x_2795 : vec4<f32> = u_xlat8;
            let x_2798 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2801 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2795.x, x_2795.y) * vec2<f32>(x_2798.x, x_2798.y)) + vec2<f32>(x_2801.w, x_2801.y));
            let x_2805 : f32 = u_xlat13.y;
            u_xlat10.y = x_2805;
            let x_2808 : f32 = u_xlat11.z;
            u_xlat13.y = x_2808;
            let x_2810 : vec4<f32> = u_xlat8;
            let x_2813 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2816 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2810.x, x_2810.y, x_2810.x, x_2810.y) * vec4<f32>(x_2813.x, x_2813.y, x_2813.x, x_2813.y)) + vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2816.y));
            let x_2819 : vec4<f32> = u_xlat8;
            let x_2822 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2825 : vec4<f32> = u_xlat13;
            let x_2827 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.y) * vec2<f32>(x_2822.x, x_2822.y)) + vec2<f32>(x_2825.w, x_2825.y));
            let x_2828 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
            let x_2831 : f32 = u_xlat13.y;
            u_xlat10.z = x_2831;
            let x_2834 : vec4<f32> = u_xlat8;
            let x_2837 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2840 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2834.x, x_2834.y, x_2834.x, x_2834.y) * vec4<f32>(x_2837.x, x_2837.y, x_2837.x, x_2837.y)) + vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.z));
            let x_2844 : f32 = u_xlat11.w;
            u_xlat13.y = x_2844;
            let x_2847 : vec4<f32> = u_xlat8;
            let x_2850 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2853 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2847.x, x_2847.y, x_2847.x, x_2847.y) * vec4<f32>(x_2850.x, x_2850.y, x_2850.x, x_2850.y)) + vec4<f32>(x_2853.x, x_2853.y, x_2853.z, x_2853.y));
            let x_2857 : vec4<f32> = u_xlat8;
            let x_2860 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2863 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2857.x, x_2857.y) * vec2<f32>(x_2860.x, x_2860.y)) + vec2<f32>(x_2863.w, x_2863.y));
            let x_2867 : f32 = u_xlat13.y;
            u_xlat10.w = x_2867;
            let x_2870 : vec4<f32> = u_xlat8;
            let x_2873 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2876 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2870.x, x_2870.y) * vec2<f32>(x_2873.x, x_2873.y)) + vec2<f32>(x_2876.x, x_2876.w));
            let x_2879 : vec4<f32> = u_xlat13;
            let x_2880 : vec3<f32> = vec3<f32>(x_2879.x, x_2879.z, x_2879.w);
            let x_2881 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2880.x, x_2881.y, x_2880.y, x_2880.z);
            let x_2883 : vec4<f32> = u_xlat8;
            let x_2886 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2889 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2883.x, x_2883.y, x_2883.x, x_2883.y) * vec4<f32>(x_2886.x, x_2886.y, x_2886.x, x_2886.y)) + vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2889.y));
            let x_2892 : vec4<f32> = u_xlat8;
            let x_2895 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2898 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2892.x, x_2892.y) * vec2<f32>(x_2895.x, x_2895.y)) + vec2<f32>(x_2898.w, x_2898.y));
            let x_2902 : f32 = u_xlat10.x;
            u_xlat11.x = x_2902;
            let x_2904 : vec4<f32> = u_xlat8;
            let x_2907 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2910 : vec4<f32> = u_xlat11;
            let x_2912 : vec2<f32> = ((vec2<f32>(x_2904.x, x_2904.y) * vec2<f32>(x_2907.x, x_2907.y)) + vec2<f32>(x_2910.x, x_2910.y));
            let x_2913 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2912.x, x_2912.y, x_2913.z, x_2913.w);
            let x_2916 : vec4<f32> = u_xlat9;
            let x_2918 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2916.x, x_2916.x, x_2916.x, x_2916.x) * x_2918);
            let x_2921 : vec4<f32> = u_xlat9;
            let x_2923 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2921.y, x_2921.y, x_2921.y, x_2921.y) * x_2923);
            let x_2926 : vec4<f32> = u_xlat9;
            let x_2928 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2926.z, x_2926.z, x_2926.z, x_2926.z) * x_2928);
            let x_2930 : vec4<f32> = u_xlat9;
            let x_2932 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2930.w, x_2930.w, x_2930.w, x_2930.w) * x_2932);
            let x_2935 : vec4<f32> = u_xlat14;
            let x_2936 : vec2<f32> = vec2<f32>(x_2935.x, x_2935.y);
            let x_2938 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
            let x_2945 : vec3<f32> = txVec43;
            let x_2947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
            u_xlat73 = x_2947;
            let x_2949 : vec4<f32> = u_xlat14;
            let x_2950 : vec2<f32> = vec2<f32>(x_2949.z, x_2949.w);
            let x_2952 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
            let x_2959 : vec3<f32> = txVec44;
            let x_2961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
            u_xlat10.x = x_2961;
            let x_2964 : f32 = u_xlat10.x;
            let x_2966 : f32 = u_xlat19.y;
            u_xlat10.x = (x_2964 * x_2966);
            let x_2970 : f32 = u_xlat19.x;
            let x_2971 : f32 = u_xlat73;
            let x_2974 : f32 = u_xlat10.x;
            u_xlat73 = ((x_2970 * x_2971) + x_2974);
            let x_2977 : vec2<f32> = u_xlat52;
            let x_2979 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2977.x, x_2977.y, x_2979);
            let x_2986 : vec3<f32> = txVec45;
            let x_2988 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2986.xy, x_2986.z);
            u_xlat52.x = x_2988;
            let x_2991 : f32 = u_xlat19.z;
            let x_2993 : f32 = u_xlat52.x;
            let x_2995 : f32 = u_xlat73;
            u_xlat73 = ((x_2991 * x_2993) + x_2995);
            let x_2998 : vec4<f32> = u_xlat17;
            let x_2999 : vec2<f32> = vec2<f32>(x_2998.x, x_2998.y);
            let x_3001 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2999.x, x_2999.y, x_3001);
            let x_3008 : vec3<f32> = txVec46;
            let x_3010 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3008.xy, x_3008.z);
            u_xlat52.x = x_3010;
            let x_3013 : f32 = u_xlat19.w;
            let x_3015 : f32 = u_xlat52.x;
            let x_3017 : f32 = u_xlat73;
            u_xlat73 = ((x_3013 * x_3015) + x_3017);
            let x_3020 : vec4<f32> = u_xlat15;
            let x_3021 : vec2<f32> = vec2<f32>(x_3020.x, x_3020.y);
            let x_3023 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
            let x_3030 : vec3<f32> = txVec47;
            let x_3032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
            u_xlat52.x = x_3032;
            let x_3035 : f32 = u_xlat20.x;
            let x_3037 : f32 = u_xlat52.x;
            let x_3039 : f32 = u_xlat73;
            u_xlat73 = ((x_3035 * x_3037) + x_3039);
            let x_3042 : vec4<f32> = u_xlat15;
            let x_3043 : vec2<f32> = vec2<f32>(x_3042.z, x_3042.w);
            let x_3045 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
            let x_3052 : vec3<f32> = txVec48;
            let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
            u_xlat52.x = x_3054;
            let x_3057 : f32 = u_xlat20.y;
            let x_3059 : f32 = u_xlat52.x;
            let x_3061 : f32 = u_xlat73;
            u_xlat73 = ((x_3057 * x_3059) + x_3061);
            let x_3064 : vec4<f32> = u_xlat16;
            let x_3065 : vec2<f32> = vec2<f32>(x_3064.x, x_3064.y);
            let x_3067 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3065.x, x_3065.y, x_3067);
            let x_3074 : vec3<f32> = txVec49;
            let x_3076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3074.xy, x_3074.z);
            u_xlat52.x = x_3076;
            let x_3079 : f32 = u_xlat20.z;
            let x_3081 : f32 = u_xlat52.x;
            let x_3083 : f32 = u_xlat73;
            u_xlat73 = ((x_3079 * x_3081) + x_3083);
            let x_3086 : vec4<f32> = u_xlat17;
            let x_3087 : vec2<f32> = vec2<f32>(x_3086.z, x_3086.w);
            let x_3089 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
            let x_3096 : vec3<f32> = txVec50;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat52.x = x_3098;
            let x_3101 : f32 = u_xlat20.w;
            let x_3103 : f32 = u_xlat52.x;
            let x_3105 : f32 = u_xlat73;
            u_xlat73 = ((x_3101 * x_3103) + x_3105);
            let x_3108 : vec4<f32> = u_xlat18;
            let x_3109 : vec2<f32> = vec2<f32>(x_3108.x, x_3108.y);
            let x_3111 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
            let x_3118 : vec3<f32> = txVec51;
            let x_3120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3118.xy, x_3118.z);
            u_xlat52.x = x_3120;
            let x_3123 : f32 = u_xlat21.x;
            let x_3125 : f32 = u_xlat52.x;
            let x_3127 : f32 = u_xlat73;
            u_xlat73 = ((x_3123 * x_3125) + x_3127);
            let x_3130 : vec4<f32> = u_xlat18;
            let x_3131 : vec2<f32> = vec2<f32>(x_3130.z, x_3130.w);
            let x_3133 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
            let x_3140 : vec3<f32> = txVec52;
            let x_3142 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
            u_xlat52.x = x_3142;
            let x_3145 : f32 = u_xlat21.y;
            let x_3147 : f32 = u_xlat52.x;
            let x_3149 : f32 = u_xlat73;
            u_xlat73 = ((x_3145 * x_3147) + x_3149);
            let x_3152 : vec2<f32> = u_xlat32;
            let x_3154 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
            let x_3161 : vec3<f32> = txVec53;
            let x_3163 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3161.xy, x_3161.z);
            u_xlat52.x = x_3163;
            let x_3166 : f32 = u_xlat21.z;
            let x_3168 : f32 = u_xlat52.x;
            let x_3170 : f32 = u_xlat73;
            u_xlat73 = ((x_3166 * x_3168) + x_3170);
            let x_3173 : vec2<f32> = u_xlat60;
            let x_3175 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3173.x, x_3173.y, x_3175);
            let x_3182 : vec3<f32> = txVec54;
            let x_3184 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3182.xy, x_3182.z);
            u_xlat52.x = x_3184;
            let x_3187 : f32 = u_xlat21.w;
            let x_3189 : f32 = u_xlat52.x;
            let x_3191 : f32 = u_xlat73;
            u_xlat73 = ((x_3187 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat13;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.x, x_3194.y);
            let x_3197 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec55;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat52.x = x_3206;
            let x_3209 : f32 = u_xlat9.x;
            let x_3211 : f32 = u_xlat52.x;
            let x_3213 : f32 = u_xlat73;
            u_xlat73 = ((x_3209 * x_3211) + x_3213);
            let x_3216 : vec4<f32> = u_xlat13;
            let x_3217 : vec2<f32> = vec2<f32>(x_3216.z, x_3216.w);
            let x_3219 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
            let x_3226 : vec3<f32> = txVec56;
            let x_3228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3226.xy, x_3226.z);
            u_xlat52.x = x_3228;
            let x_3231 : f32 = u_xlat9.y;
            let x_3233 : f32 = u_xlat52.x;
            let x_3235 : f32 = u_xlat73;
            u_xlat73 = ((x_3231 * x_3233) + x_3235);
            let x_3238 : vec2<f32> = u_xlat55;
            let x_3240 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3238.x, x_3238.y, x_3240);
            let x_3247 : vec3<f32> = txVec57;
            let x_3249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3247.xy, x_3247.z);
            u_xlat52.x = x_3249;
            let x_3252 : f32 = u_xlat9.z;
            let x_3254 : f32 = u_xlat52.x;
            let x_3256 : f32 = u_xlat73;
            u_xlat73 = ((x_3252 * x_3254) + x_3256);
            let x_3259 : vec4<f32> = u_xlat8;
            let x_3260 : vec2<f32> = vec2<f32>(x_3259.x, x_3259.y);
            let x_3262 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3260.x, x_3260.y, x_3262);
            let x_3269 : vec3<f32> = txVec58;
            let x_3271 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3269.xy, x_3269.z);
            u_xlat8.x = x_3271;
            let x_3274 : f32 = u_xlat9.w;
            let x_3276 : f32 = u_xlat8.x;
            let x_3278 : f32 = u_xlat73;
            u_xlat72 = ((x_3274 * x_3276) + x_3278);
          }
        }
      } else {
        let x_3282 : vec4<f32> = u_xlat7;
        let x_3283 : vec2<f32> = vec2<f32>(x_3282.x, x_3282.y);
        let x_3285 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3283.x, x_3283.y, x_3285);
        let x_3292 : vec3<f32> = txVec59;
        let x_3294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3292.xy, x_3292.z);
        u_xlat72 = x_3294;
      }
      let x_3295 : i32 = u_xlati70;
      let x_3297 : f32 = x_258.x_AdditionalShadowParams[x_3295].x;
      u_xlat7.x = (1.0f + -(x_3297));
      let x_3301 : f32 = u_xlat72;
      let x_3302 : i32 = u_xlati70;
      let x_3304 : f32 = x_258.x_AdditionalShadowParams[x_3302].x;
      let x_3307 : f32 = u_xlat7.x;
      u_xlat72 = ((x_3301 * x_3304) + x_3307);
      let x_3310 : f32 = u_xlat7.z;
      u_xlatb7.x = (0.0f >= x_3310);
      let x_3315 : f32 = u_xlat7.z;
      u_xlatb29 = (x_3315 >= 1.0f);
      let x_3317 : bool = u_xlatb29;
      let x_3319 : bool = u_xlatb7.x;
      u_xlatb7.x = (x_3317 | x_3319);
      let x_3323 : bool = u_xlatb7.x;
      let x_3324 : f32 = u_xlat72;
      u_xlat72 = select(x_3324, 1.0f, x_3323);
    } else {
      u_xlat72 = 1.0f;
    }
    let x_3327 : f32 = u_xlat72;
    u_xlat7.x = (-(x_3327) + 1.0f);
    let x_3332 : f32 = u_xlat3.x;
    let x_3334 : f32 = u_xlat7.x;
    let x_3336 : f32 = u_xlat72;
    u_xlat72 = ((x_3332 * x_3334) + x_3336);
    let x_3339 : i32 = u_xlati70;
    u_xlati7 = (1i << bitcast<u32>((x_3339 & 31i)));
    let x_3343 : i32 = u_xlati7;
    let x_3346 : f32 = x_1612.x_AdditionalLightsCookieEnableBits;
    u_xlati7 = bitcast<i32>((bitcast<u32>(x_3343) & bitcast<u32>(x_3346)));
    let x_3350 : i32 = u_xlati7;
    if ((x_3350 != 0i)) {
      let x_3354 : i32 = u_xlati70;
      let x_3356 : f32 = x_1612.x_AdditionalLightsLightTypes[x_3354].el;
      u_xlati7 = i32(x_3356);
      let x_3359 : i32 = u_xlati7;
      u_xlati29 = select(1i, 0i, (x_3359 != 0i));
      let x_3363 : i32 = u_xlati70;
      u_xlati51 = (x_3363 << bitcast<u32>(2i));
      let x_3365 : i32 = u_xlati29;
      if ((x_3365 != 0i)) {
        let x_3369 : vec3<f32> = vs_TEXCOORD1;
        let x_3371 : i32 = u_xlati51;
        let x_3374 : i32 = u_xlati51;
        let x_3378 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3371 + 1i) / 4i)][((x_3374 + 1i) % 4i)];
        let x_3380 : vec3<f32> = (vec3<f32>(x_3369.y, x_3369.y, x_3369.y) * vec3<f32>(x_3378.x, x_3378.y, x_3378.w));
        let x_3381 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3380.x, x_3380.y, x_3380.z, x_3381.w);
        let x_3383 : i32 = u_xlati51;
        let x_3385 : i32 = u_xlati51;
        let x_3388 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[(x_3383 / 4i)][(x_3385 % 4i)];
        let x_3390 : vec3<f32> = vs_TEXCOORD1;
        let x_3393 : vec4<f32> = u_xlat8;
        let x_3395 : vec3<f32> = ((vec3<f32>(x_3388.x, x_3388.y, x_3388.w) * vec3<f32>(x_3390.x, x_3390.x, x_3390.x)) + vec3<f32>(x_3393.x, x_3393.y, x_3393.z));
        let x_3396 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3395.x, x_3395.y, x_3395.z, x_3396.w);
        let x_3398 : i32 = u_xlati51;
        let x_3401 : i32 = u_xlati51;
        let x_3405 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3398 + 2i) / 4i)][((x_3401 + 2i) % 4i)];
        let x_3407 : vec3<f32> = vs_TEXCOORD1;
        let x_3410 : vec4<f32> = u_xlat8;
        let x_3412 : vec3<f32> = ((vec3<f32>(x_3405.x, x_3405.y, x_3405.w) * vec3<f32>(x_3407.z, x_3407.z, x_3407.z)) + vec3<f32>(x_3410.x, x_3410.y, x_3410.z));
        let x_3413 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3412.x, x_3412.y, x_3412.z, x_3413.w);
        let x_3415 : vec4<f32> = u_xlat8;
        let x_3417 : i32 = u_xlati51;
        let x_3420 : i32 = u_xlati51;
        let x_3424 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3417 + 3i) / 4i)][((x_3420 + 3i) % 4i)];
        let x_3426 : vec3<f32> = (vec3<f32>(x_3415.x, x_3415.y, x_3415.z) + vec3<f32>(x_3424.x, x_3424.y, x_3424.w));
        let x_3427 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_3426.x, x_3426.y, x_3426.z, x_3427.w);
        let x_3429 : vec4<f32> = u_xlat8;
        let x_3431 : vec4<f32> = u_xlat8;
        let x_3433 : vec2<f32> = (vec2<f32>(x_3429.x, x_3429.y) / vec2<f32>(x_3431.z, x_3431.z));
        let x_3434 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3433.x, x_3434.y, x_3433.y);
        let x_3436 : vec3<f32> = u_xlat29;
        let x_3439 : vec2<f32> = ((vec2<f32>(x_3436.x, x_3436.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3440 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3439.x, x_3440.y, x_3439.y);
        let x_3442 : vec3<f32> = u_xlat29;
        let x_3446 : vec2<f32> = clamp(vec2<f32>(x_3442.x, x_3442.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3447 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3446.x, x_3447.y, x_3446.y);
        let x_3449 : i32 = u_xlati70;
        let x_3451 : vec4<f32> = x_1612.x_AdditionalLightsCookieAtlasUVRects[x_3449];
        let x_3453 : vec3<f32> = u_xlat29;
        let x_3456 : i32 = u_xlati70;
        let x_3458 : vec4<f32> = x_1612.x_AdditionalLightsCookieAtlasUVRects[x_3456];
        let x_3460 : vec2<f32> = ((vec2<f32>(x_3451.x, x_3451.y) * vec2<f32>(x_3453.x, x_3453.z)) + vec2<f32>(x_3458.z, x_3458.w));
        let x_3461 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_3460.x, x_3461.y, x_3460.y);
      } else {
        let x_3464 : i32 = u_xlati7;
        u_xlatb7.x = (x_3464 == 1i);
        let x_3468 : bool = u_xlatb7.x;
        u_xlati7 = select(0i, 1i, x_3468);
        let x_3470 : i32 = u_xlati7;
        if ((x_3470 != 0i)) {
          let x_3474 : vec3<f32> = vs_TEXCOORD1;
          let x_3476 : i32 = u_xlati51;
          let x_3479 : i32 = u_xlati51;
          let x_3483 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3476 + 1i) / 4i)][((x_3479 + 1i) % 4i)];
          let x_3485 : vec2<f32> = (vec2<f32>(x_3474.y, x_3474.y) * vec2<f32>(x_3483.x, x_3483.y));
          let x_3486 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3485.x, x_3485.y, x_3486.z, x_3486.w);
          let x_3488 : i32 = u_xlati51;
          let x_3490 : i32 = u_xlati51;
          let x_3493 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[(x_3488 / 4i)][(x_3490 % 4i)];
          let x_3495 : vec3<f32> = vs_TEXCOORD1;
          let x_3498 : vec4<f32> = u_xlat8;
          let x_3500 : vec2<f32> = ((vec2<f32>(x_3493.x, x_3493.y) * vec2<f32>(x_3495.x, x_3495.x)) + vec2<f32>(x_3498.x, x_3498.y));
          let x_3501 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3500.x, x_3500.y, x_3501.z, x_3501.w);
          let x_3503 : i32 = u_xlati51;
          let x_3506 : i32 = u_xlati51;
          let x_3510 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3503 + 2i) / 4i)][((x_3506 + 2i) % 4i)];
          let x_3512 : vec3<f32> = vs_TEXCOORD1;
          let x_3515 : vec4<f32> = u_xlat8;
          let x_3517 : vec2<f32> = ((vec2<f32>(x_3510.x, x_3510.y) * vec2<f32>(x_3512.z, x_3512.z)) + vec2<f32>(x_3515.x, x_3515.y));
          let x_3518 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3517.x, x_3517.y, x_3518.z, x_3518.w);
          let x_3520 : vec4<f32> = u_xlat8;
          let x_3522 : i32 = u_xlati51;
          let x_3525 : i32 = u_xlati51;
          let x_3529 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3522 + 3i) / 4i)][((x_3525 + 3i) % 4i)];
          let x_3531 : vec2<f32> = (vec2<f32>(x_3520.x, x_3520.y) + vec2<f32>(x_3529.x, x_3529.y));
          let x_3532 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3531.x, x_3531.y, x_3532.z, x_3532.w);
          let x_3534 : vec4<f32> = u_xlat8;
          let x_3537 : vec2<f32> = ((vec2<f32>(x_3534.x, x_3534.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3538 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3537.x, x_3537.y, x_3538.z, x_3538.w);
          let x_3540 : vec4<f32> = u_xlat8;
          let x_3542 : vec2<f32> = fract(vec2<f32>(x_3540.x, x_3540.y));
          let x_3543 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3542.x, x_3542.y, x_3543.z, x_3543.w);
          let x_3545 : i32 = u_xlati70;
          let x_3547 : vec4<f32> = x_1612.x_AdditionalLightsCookieAtlasUVRects[x_3545];
          let x_3549 : vec4<f32> = u_xlat8;
          let x_3552 : i32 = u_xlati70;
          let x_3554 : vec4<f32> = x_1612.x_AdditionalLightsCookieAtlasUVRects[x_3552];
          let x_3556 : vec2<f32> = ((vec2<f32>(x_3547.x, x_3547.y) * vec2<f32>(x_3549.x, x_3549.y)) + vec2<f32>(x_3554.z, x_3554.w));
          let x_3557 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3556.x, x_3557.y, x_3556.y);
        } else {
          let x_3560 : vec3<f32> = vs_TEXCOORD1;
          let x_3562 : i32 = u_xlati51;
          let x_3565 : i32 = u_xlati51;
          let x_3569 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3562 + 1i) / 4i)][((x_3565 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_3560.y, x_3560.y, x_3560.y, x_3560.y) * x_3569);
          let x_3571 : i32 = u_xlati51;
          let x_3573 : i32 = u_xlati51;
          let x_3576 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[(x_3571 / 4i)][(x_3573 % 4i)];
          let x_3577 : vec3<f32> = vs_TEXCOORD1;
          let x_3580 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3576 * vec4<f32>(x_3577.x, x_3577.x, x_3577.x, x_3577.x)) + x_3580);
          let x_3582 : i32 = u_xlati51;
          let x_3585 : i32 = u_xlati51;
          let x_3589 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3582 + 2i) / 4i)][((x_3585 + 2i) % 4i)];
          let x_3590 : vec3<f32> = vs_TEXCOORD1;
          let x_3593 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_3589 * vec4<f32>(x_3590.z, x_3590.z, x_3590.z, x_3590.z)) + x_3593);
          let x_3595 : vec4<f32> = u_xlat8;
          let x_3596 : i32 = u_xlati51;
          let x_3599 : i32 = u_xlati51;
          let x_3603 : vec4<f32> = x_1612.x_AdditionalLightsWorldToLights[((x_3596 + 3i) / 4i)][((x_3599 + 3i) % 4i)];
          u_xlat8 = (x_3595 + x_3603);
          let x_3605 : vec4<f32> = u_xlat8;
          let x_3607 : vec4<f32> = u_xlat8;
          let x_3609 : vec3<f32> = (vec3<f32>(x_3605.x, x_3605.y, x_3605.z) / vec3<f32>(x_3607.w, x_3607.w, x_3607.w));
          let x_3610 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3609.x, x_3609.y, x_3609.z, x_3610.w);
          let x_3612 : vec4<f32> = u_xlat8;
          let x_3614 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(vec3<f32>(x_3612.x, x_3612.y, x_3612.z), vec3<f32>(x_3614.x, x_3614.y, x_3614.z));
          let x_3619 : f32 = u_xlat7.x;
          u_xlat7.x = inverseSqrt(x_3619);
          let x_3622 : vec4<f32> = u_xlat7;
          let x_3624 : vec4<f32> = u_xlat8;
          let x_3626 : vec3<f32> = (vec3<f32>(x_3622.x, x_3622.x, x_3622.x) * vec3<f32>(x_3624.x, x_3624.y, x_3624.z));
          let x_3627 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_3626.x, x_3626.y, x_3626.z, x_3627.w);
          let x_3629 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(abs(vec3<f32>(x_3629.x, x_3629.y, x_3629.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3636 : f32 = u_xlat7.x;
          u_xlat7.x = max(x_3636, 0.00000099999999747524f);
          let x_3641 : f32 = u_xlat7.x;
          u_xlat7.x = (1.0f / x_3641);
          let x_3644 : vec4<f32> = u_xlat7;
          let x_3646 : vec4<f32> = u_xlat8;
          let x_3648 : vec3<f32> = (vec3<f32>(x_3644.x, x_3644.x, x_3644.x) * vec3<f32>(x_3646.z, x_3646.x, x_3646.y));
          let x_3649 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_3648.x, x_3648.y, x_3648.z, x_3649.w);
          let x_3652 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_3652);
          let x_3656 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_3656, 0.0f, 1.0f);
          let x_3660 : vec4<f32> = u_xlat9;
          let x_3662 : vec4<bool> = (vec4<f32>(x_3660.y, x_3660.z, x_3660.y, x_3660.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb52 = vec2<bool>(x_3662.x, x_3662.y);
          let x_3665 : bool = u_xlatb52.x;
          if (x_3665) {
            let x_3670 : f32 = u_xlat9.x;
            x_3666 = x_3670;
          } else {
            let x_3673 : f32 = u_xlat9.x;
            x_3666 = -(x_3673);
          }
          let x_3675 : f32 = x_3666;
          u_xlat52.x = x_3675;
          let x_3678 : bool = u_xlatb52.y;
          if (x_3678) {
            let x_3683 : f32 = u_xlat9.x;
            x_3679 = x_3683;
          } else {
            let x_3686 : f32 = u_xlat9.x;
            x_3679 = -(x_3686);
          }
          let x_3688 : f32 = x_3679;
          u_xlat52.y = x_3688;
          let x_3690 : vec4<f32> = u_xlat8;
          let x_3692 : vec4<f32> = u_xlat7;
          let x_3695 : vec2<f32> = u_xlat52;
          let x_3696 : vec2<f32> = ((vec2<f32>(x_3690.x, x_3690.y) * vec2<f32>(x_3692.x, x_3692.x)) + x_3695);
          let x_3697 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3696.x, x_3697.y, x_3696.y, x_3697.w);
          let x_3699 : vec4<f32> = u_xlat7;
          let x_3702 : vec2<f32> = ((vec2<f32>(x_3699.x, x_3699.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3703 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3702.x, x_3703.y, x_3702.y, x_3703.w);
          let x_3705 : vec4<f32> = u_xlat7;
          let x_3709 : vec2<f32> = clamp(vec2<f32>(x_3705.x, x_3705.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3710 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_3709.x, x_3710.y, x_3709.y, x_3710.w);
          let x_3712 : i32 = u_xlati70;
          let x_3714 : vec4<f32> = x_1612.x_AdditionalLightsCookieAtlasUVRects[x_3712];
          let x_3716 : vec4<f32> = u_xlat7;
          let x_3719 : i32 = u_xlati70;
          let x_3721 : vec4<f32> = x_1612.x_AdditionalLightsCookieAtlasUVRects[x_3719];
          let x_3723 : vec2<f32> = ((vec2<f32>(x_3714.x, x_3714.y) * vec2<f32>(x_3716.x, x_3716.z)) + vec2<f32>(x_3721.z, x_3721.w));
          let x_3724 : vec3<f32> = u_xlat29;
          u_xlat29 = vec3<f32>(x_3723.x, x_3724.y, x_3723.y);
        }
      }
      let x_3731 : vec3<f32> = u_xlat29;
      let x_3733 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3731.x, x_3731.z), 0.0f);
      u_xlat7 = x_3733;
      let x_3735 : bool = u_xlatb4.y;
      if (x_3735) {
        let x_3740 : f32 = u_xlat7.w;
        x_3736 = x_3740;
      } else {
        let x_3743 : f32 = u_xlat7.x;
        x_3736 = x_3743;
      }
      let x_3744 : f32 = x_3736;
      u_xlat73 = x_3744;
      let x_3746 : bool = u_xlatb4.x;
      if (x_3746) {
        let x_3750 : vec4<f32> = u_xlat7;
        x_3747 = vec3<f32>(x_3750.x, x_3750.y, x_3750.z);
      } else {
        let x_3753 : f32 = u_xlat73;
        x_3747 = vec3<f32>(x_3753, x_3753, x_3753);
      }
      let x_3755 : vec3<f32> = x_3747;
      let x_3756 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_3755.x, x_3755.y, x_3755.z, x_3756.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_3762 : vec4<f32> = u_xlat7;
    let x_3764 : i32 = u_xlati70;
    let x_3766 : vec4<f32> = x_1846.x_AdditionalLightsColor[x_3764];
    let x_3768 : vec3<f32> = (vec3<f32>(x_3762.x, x_3762.y, x_3762.z) * vec3<f32>(x_3766.x, x_3766.y, x_3766.z));
    let x_3769 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3768.x, x_3768.y, x_3768.z, x_3769.w);
    let x_3771 : f32 = u_xlat71;
    let x_3772 : f32 = u_xlat72;
    u_xlat70 = (x_3771 * x_3772);
    let x_3774 : f32 = u_xlat70;
    let x_3776 : vec4<f32> = u_xlat7;
    let x_3778 : vec3<f32> = (vec3<f32>(x_3774, x_3774, x_3774) * vec3<f32>(x_3776.x, x_3776.y, x_3776.z));
    let x_3779 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3778.x, x_3778.y, x_3778.z, x_3779.w);
    let x_3781 : vec3<f32> = u_xlat1;
    let x_3782 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(x_3781, vec3<f32>(x_3782.x, x_3782.y, x_3782.z));
    let x_3785 : f32 = u_xlat70;
    u_xlat70 = clamp(x_3785, 0.0f, 1.0f);
    let x_3787 : f32 = u_xlat70;
    let x_3789 : vec4<f32> = u_xlat7;
    let x_3791 : vec3<f32> = (vec3<f32>(x_3787, x_3787, x_3787) * vec3<f32>(x_3789.x, x_3789.y, x_3789.z));
    let x_3792 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3792.w);
    let x_3794 : vec4<f32> = u_xlat6;
    let x_3796 : vec4<f32> = u_xlat0;
    let x_3799 : vec4<f32> = u_xlat5;
    let x_3801 : vec3<f32> = ((vec3<f32>(x_3794.x, x_3794.y, x_3794.z) * vec3<f32>(x_3796.y, x_3796.z, x_3796.w)) + vec3<f32>(x_3799.x, x_3799.y, x_3799.z));
    let x_3802 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);

    continuing {
      let x_3804 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3804 + bitcast<u32>(1i));
    }
  }
  let x_3807 : vec4<f32> = u_xlat2;
  let x_3809 : vec4<f32> = u_xlat0;
  let x_3812 : vec3<f32> = u_xlat25;
  u_xlat22 = ((vec3<f32>(x_3807.x, x_3807.y, x_3807.z) * vec3<f32>(x_3809.y, x_3809.z, x_3809.w)) + x_3812);
  let x_3814 : vec4<f32> = u_xlat5;
  let x_3816 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_3814.x, x_3814.y, x_3814.z) + x_3816);
  let x_3818 : f32 = u_xlat67;
  let x_3819 : f32 = u_xlat67;
  u_xlat1.x = (x_3818 * -(x_3819));
  let x_3824 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3824);
  let x_3827 : vec3<f32> = u_xlat22;
  let x_3829 : vec4<f32> = x_45.unity_FogColor;
  u_xlat22 = (x_3827 + -(vec3<f32>(x_3829.x, x_3829.y, x_3829.z)));
  let x_3835 : vec3<f32> = u_xlat1;
  let x_3837 : vec3<f32> = u_xlat22;
  let x_3840 : vec4<f32> = x_45.unity_FogColor;
  let x_3842 : vec3<f32> = ((vec3<f32>(x_3835.x, x_3835.x, x_3835.x) * x_3837) + vec3<f32>(x_3840.x, x_3840.y, x_3840.z));
  let x_3843 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3842.x, x_3842.y, x_3842.z, x_3843.w);
  let x_3847 : f32 = x_57.x_Surface;
  u_xlatb22 = (x_3847 == 1.0f);
  let x_3849 : bool = u_xlatb22;
  if (x_3849) {
    let x_3854 : f32 = u_xlat0.x;
    x_3850 = x_3854;
  } else {
    x_3850 = 1.0f;
  }
  let x_3856 : f32 = x_3850;
  SV_Target0.w = x_3856;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


