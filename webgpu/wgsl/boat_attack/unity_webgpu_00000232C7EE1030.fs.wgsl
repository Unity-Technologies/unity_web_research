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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlatb71 : bool;

@group(1) @binding(4) var<uniform> x_328 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb4 : bool;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat75 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlatb27 : bool;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati52 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_1848 : AdditionalLights;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb75 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatu6 : u32;

var<private> u_xlatb29 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_103 : f32;
  var x_175 : vec3<f32>;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2006 : f32;
  var x_2016 : f32;
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
  var x_3449 : f32;
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
  u_xlatb24 = (x_98 >= 0.0f);
  let x_101 : bool = u_xlatb24;
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
  let x_137 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb1 = (x_137 == 0.0f);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_147 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat24 = (-(x_142) + x_147);
  let x_150 : vec3<f32> = u_xlat24;
  let x_151 : vec3<f32> = u_xlat24;
  u_xlat2.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_155);
  let x_158 : vec3<f32> = u_xlat24;
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat24 = (x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x));
  let x_164 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat2.x = x_164;
  let x_167 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2.y = x_167;
  let x_171 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat2.z = x_171;
  let x_173 : bool = u_xlatb1;
  if (x_173) {
    let x_178 : vec3<f32> = u_xlat24;
    x_175 = x_178;
  } else {
    let x_180 : vec4<f32> = u_xlat2;
    x_175 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  }
  let x_182 : vec3<f32> = x_175;
  u_xlat1 = x_182;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  let x_186 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_185, x_186);
  let x_188 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_188);
  let x_190 : f32 = u_xlat70;
  let x_192 : vec3<f32> = vs_TEXCOORD2;
  let x_193 : vec3<f32> = (vec3<f32>(x_190, x_190, x_190) * x_192);
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec3<f32> = u_xlat1;
  let x_197 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_196, x_197);
  let x_199 : f32 = u_xlat70;
  u_xlat70 = max(x_199, 0.00006103515625f);
  let x_202 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_202);
  let x_206 : f32 = vs_TEXCOORD1.y;
  let x_208 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat3 = (x_206 * x_208);
  let x_211 : f32 = x_45.unity_MatrixV[0i].z;
  let x_213 : f32 = vs_TEXCOORD1.x;
  let x_215 : f32 = u_xlat3;
  u_xlat3 = ((x_211 * x_213) + x_215);
  let x_218 : f32 = x_45.unity_MatrixV[2i].z;
  let x_220 : f32 = vs_TEXCOORD1.z;
  let x_222 : f32 = u_xlat3;
  u_xlat3 = ((x_218 * x_220) + x_222);
  let x_224 : f32 = u_xlat3;
  let x_227 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat3 = (x_224 + x_227);
  let x_229 : f32 = u_xlat3;
  let x_233 : f32 = x_45.x_ProjectionParams.y;
  u_xlat3 = (-(x_229) + -(x_233));
  let x_236 : f32 = u_xlat3;
  u_xlat3 = max(x_236, 0.0f);
  let x_238 : f32 = u_xlat3;
  let x_241 : f32 = x_45.unity_FogParams.x;
  u_xlat3 = (x_238 * x_241);
  u_xlat2.w = 1.0f;
  let x_247 : vec4<f32> = x_95.unity_SHAr;
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_247, x_248);
  let x_253 : vec4<f32> = x_95.unity_SHAg;
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_253, x_254);
  let x_259 : vec4<f32> = x_95.unity_SHAb;
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_259, x_260);
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_264.y, x_264.z, x_264.z, x_264.x) * vec4<f32>(x_266.x, x_266.y, x_266.z, x_266.z));
  let x_272 : vec4<f32> = x_95.unity_SHBr;
  let x_273 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_272, x_273);
  let x_278 : vec4<f32> = x_95.unity_SHBg;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_278, x_279);
  let x_284 : vec4<f32> = x_95.unity_SHBb;
  let x_285 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_284, x_285);
  let x_290 : f32 = u_xlat2.y;
  let x_292 : f32 = u_xlat2.y;
  u_xlat71 = (x_290 * x_292);
  let x_295 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat71;
  u_xlat71 = ((x_295 * x_297) + -(x_299));
  let x_305 : vec4<f32> = x_95.unity_SHC;
  let x_307 : f32 = u_xlat71;
  let x_310 : vec4<f32> = u_xlat6;
  u_xlat26 = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307, x_307, x_307)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec3<f32> = u_xlat26;
  let x_314 : vec4<f32> = u_xlat4;
  u_xlat26 = (x_313 + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec3<f32> = u_xlat26;
  u_xlat26 = max(x_317, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_331 : f32 = x_328.x_MainLightShadowParams.y;
  u_xlatb71 = (0.0f < x_331);
  let x_333 : bool = u_xlatb71;
  if (x_333) {
    let x_337 : f32 = x_328.x_MainLightShadowParams.y;
    u_xlatb71 = (x_337 == 1.0f);
    let x_339 : bool = u_xlatb71;
    if (x_339) {
      let x_343 : vec4<f32> = vs_TEXCOORD6;
      let x_346 : vec4<f32> = x_328.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_343.x, x_343.y, x_343.x, x_343.y) + x_346);
      let x_349 : vec4<f32> = u_xlat4;
      let x_350 : vec2<f32> = vec2<f32>(x_349.x, x_349.y);
      let x_352 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_350.x, x_350.y, x_352);
      let x_364 : vec3<f32> = txVec0;
      let x_366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_364.xy, x_364.z);
      u_xlat5.x = x_366;
      let x_369 : vec4<f32> = u_xlat4;
      let x_370 : vec2<f32> = vec2<f32>(x_369.z, x_369.w);
      let x_372 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_370.x, x_370.y, x_372);
      let x_379 : vec3<f32> = txVec1;
      let x_381 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_379.xy, x_379.z);
      u_xlat5.y = x_381;
      let x_383 : vec4<f32> = vs_TEXCOORD6;
      let x_386 : vec4<f32> = x_328.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_383.x, x_383.y, x_383.x, x_383.y) + x_386);
      let x_389 : vec4<f32> = u_xlat4;
      let x_390 : vec2<f32> = vec2<f32>(x_389.x, x_389.y);
      let x_392 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_390.x, x_390.y, x_392);
      let x_399 : vec3<f32> = txVec2;
      let x_401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_399.xy, x_399.z);
      u_xlat5.z = x_401;
      let x_404 : vec4<f32> = u_xlat4;
      let x_405 : vec2<f32> = vec2<f32>(x_404.z, x_404.w);
      let x_407 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_405.x, x_405.y, x_407);
      let x_414 : vec3<f32> = txVec3;
      let x_416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_414.xy, x_414.z);
      u_xlat5.w = x_416;
      let x_418 : vec4<f32> = u_xlat5;
      u_xlat71 = dot(x_418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_425 : f32 = x_328.x_MainLightShadowParams.y;
      u_xlatb4 = (x_425 == 2.0f);
      let x_428 : bool = u_xlatb4;
      if (x_428) {
        let x_431 : vec4<f32> = vs_TEXCOORD6;
        let x_434 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_439 : vec2<f32> = ((vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_434.z, x_434.w)) + vec2<f32>(0.5f, 0.5f));
        let x_440 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec4<f32> = u_xlat4;
        let x_444 : vec2<f32> = floor(vec2<f32>(x_442.x, x_442.y));
        let x_445 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
        let x_449 : vec4<f32> = vs_TEXCOORD6;
        let x_452 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_455 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(x_452.z, x_452.w)) + -(vec2<f32>(x_455.x, x_455.y)));
        let x_459 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_459.x, x_459.x, x_459.y, x_459.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_463 : vec4<f32> = u_xlat5;
        let x_465 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z) * vec4<f32>(x_465.x, x_465.x, x_465.z, x_465.z));
        let x_468 : vec4<f32> = u_xlat6;
        let x_472 : vec2<f32> = (vec2<f32>(x_468.y, x_468.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_473 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_473.w);
        let x_475 : vec4<f32> = u_xlat6;
        let x_478 : vec2<f32> = u_xlat50;
        let x_480 : vec2<f32> = ((vec2<f32>(x_475.x, x_475.z) * vec2<f32>(0.5f, 0.5f)) + -(x_478));
        let x_481 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_484 : vec2<f32> = u_xlat50;
        u_xlat52 = (-(x_484) + vec2<f32>(1.0f, 1.0f));
        let x_489 : vec2<f32> = u_xlat50;
        let x_491 : vec2<f32> = min(x_489, vec2<f32>(0.0f, 0.0f));
        let x_492 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat7;
        let x_497 : vec4<f32> = u_xlat7;
        let x_500 : vec2<f32> = u_xlat52;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_494.x, x_494.y)) * vec2<f32>(x_497.x, x_497.y)) + x_500);
        let x_502 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat50;
        u_xlat50 = max(x_504, vec2<f32>(0.0f, 0.0f));
        let x_506 : vec2<f32> = u_xlat50;
        let x_508 : vec2<f32> = u_xlat50;
        let x_510 : vec4<f32> = u_xlat5;
        u_xlat50 = ((-(x_506) * x_508) + vec2<f32>(x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat7;
        let x_515 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) + vec2<f32>(1.0f, 1.0f));
        let x_516 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat50;
        u_xlat50 = (x_518 + vec2<f32>(1.0f, 1.0f));
        let x_521 : vec4<f32> = u_xlat6;
        let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_526 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec2<f32> = u_xlat52;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat7;
        let x_534 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_535 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_538 : vec2<f32> = u_xlat50;
        let x_539 : vec2<f32> = (x_538 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_540 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_539.x, x_539.y, x_540.z, x_540.w);
        let x_542 : vec4<f32> = u_xlat5;
        u_xlat50 = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_546 : f32 = u_xlat7.x;
        u_xlat8.z = x_546;
        let x_549 : f32 = u_xlat50.x;
        u_xlat8.w = x_549;
        let x_552 : f32 = u_xlat9.x;
        u_xlat6.z = x_552;
        let x_555 : f32 = u_xlat5.x;
        u_xlat6.w = x_555;
        let x_558 : vec4<f32> = u_xlat6;
        let x_560 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_558.z, x_558.w, x_558.x, x_558.z) + vec4<f32>(x_560.z, x_560.w, x_560.x, x_560.z));
        let x_564 : f32 = u_xlat8.y;
        u_xlat7.z = x_564;
        let x_567 : f32 = u_xlat50.y;
        u_xlat7.w = x_567;
        let x_570 : f32 = u_xlat6.y;
        u_xlat9.z = x_570;
        let x_573 : f32 = u_xlat5.z;
        u_xlat9.w = x_573;
        let x_575 : vec4<f32> = u_xlat7;
        let x_577 : vec4<f32> = u_xlat9;
        let x_579 : vec3<f32> = (vec3<f32>(x_575.z, x_575.y, x_575.w) + vec3<f32>(x_577.z, x_577.y, x_577.w));
        let x_580 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat6;
        let x_584 : vec4<f32> = u_xlat10;
        let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.z, x_582.w) / vec3<f32>(x_584.z, x_584.w, x_584.y));
        let x_587 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat6;
        let x_595 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_600 : vec4<f32> = u_xlat5;
        let x_602 : vec3<f32> = (vec3<f32>(x_598.z, x_598.y, x_598.w) / vec3<f32>(x_600.x, x_600.y, x_600.z));
        let x_603 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat7;
        let x_607 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat6;
        let x_613 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_615 : vec3<f32> = (vec3<f32>(x_610.y, x_610.x, x_610.z) * vec3<f32>(x_613.x, x_613.x, x_613.x));
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat7;
        let x_621 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_621.y, x_621.y, x_621.y));
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_627 : f32 = u_xlat7.x;
        u_xlat6.w = x_627;
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.y, x_635.w, x_635.x, x_635.w));
        let x_638 : vec4<f32> = u_xlat4;
        let x_641 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_644 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.x, x_641.y)) + vec2<f32>(x_644.z, x_644.w));
        let x_648 : f32 = u_xlat6.y;
        u_xlat7.w = x_648;
        let x_650 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = vec2<f32>(x_650.y, x_650.z);
        let x_652 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_652.x, x_651.x, x_652.z, x_651.y);
        let x_654 : vec4<f32> = u_xlat4;
        let x_657 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_660 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) * vec4<f32>(x_657.x, x_657.y, x_657.x, x_657.y)) + vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.y));
        let x_663 : vec4<f32> = u_xlat4;
        let x_666 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) * vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y)) + vec4<f32>(x_669.w, x_669.y, x_669.w, x_669.z));
        let x_672 : vec4<f32> = u_xlat4;
        let x_675 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_678 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_672.x, x_672.y, x_672.x, x_672.y) * vec4<f32>(x_675.x, x_675.y, x_675.x, x_675.y)) + vec4<f32>(x_678.x, x_678.w, x_678.z, x_678.w));
        let x_682 : vec4<f32> = u_xlat5;
        let x_684 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_682.x, x_682.x, x_682.x, x_682.y) * vec4<f32>(x_684.z, x_684.w, x_684.y, x_684.z));
        let x_688 : vec4<f32> = u_xlat5;
        let x_690 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_688.y, x_688.y, x_688.z, x_688.z) * x_690);
        let x_693 : f32 = u_xlat5.z;
        let x_695 : f32 = u_xlat10.y;
        u_xlat4.x = (x_693 * x_695);
        let x_699 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
        let x_702 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_700.x, x_700.y, x_702);
        let x_710 : vec3<f32> = txVec4;
        let x_712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
        u_xlat27.x = x_712;
        let x_715 : vec4<f32> = u_xlat8;
        let x_716 : vec2<f32> = vec2<f32>(x_715.z, x_715.w);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec5;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat5.x = x_727;
        let x_730 : f32 = u_xlat5.x;
        let x_732 : f32 = u_xlat11.y;
        u_xlat5.x = (x_730 * x_732);
        let x_736 : f32 = u_xlat11.x;
        let x_738 : f32 = u_xlat27.x;
        let x_741 : f32 = u_xlat5.x;
        u_xlat27.x = ((x_736 * x_738) + x_741);
        let x_745 : vec2<f32> = u_xlat50;
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec6;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_754.xy, x_754.z);
        u_xlat50.x = x_756;
        let x_759 : f32 = u_xlat11.z;
        let x_761 : f32 = u_xlat50.x;
        let x_764 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_759 * x_761) + x_764);
        let x_768 : vec4<f32> = u_xlat7;
        let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
        let x_771 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec7;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_778.xy, x_778.z);
        u_xlat50.x = x_780;
        let x_783 : f32 = u_xlat11.w;
        let x_785 : f32 = u_xlat50.x;
        let x_788 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_783 * x_785) + x_788);
        let x_792 : vec4<f32> = u_xlat9;
        let x_793 : vec2<f32> = vec2<f32>(x_792.x, x_792.y);
        let x_795 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_793.x, x_793.y, x_795);
        let x_802 : vec3<f32> = txVec8;
        let x_804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_802.xy, x_802.z);
        u_xlat50.x = x_804;
        let x_807 : f32 = u_xlat12.x;
        let x_809 : f32 = u_xlat50.x;
        let x_812 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_807 * x_809) + x_812);
        let x_816 : vec4<f32> = u_xlat9;
        let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
        let x_819 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec9;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat50.x = x_828;
        let x_831 : f32 = u_xlat12.y;
        let x_833 : f32 = u_xlat50.x;
        let x_836 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_831 * x_833) + x_836);
        let x_840 : vec4<f32> = u_xlat7;
        let x_841 : vec2<f32> = vec2<f32>(x_840.z, x_840.w);
        let x_843 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_841.x, x_841.y, x_843);
        let x_850 : vec3<f32> = txVec10;
        let x_852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_850.xy, x_850.z);
        u_xlat50.x = x_852;
        let x_855 : f32 = u_xlat12.z;
        let x_857 : f32 = u_xlat50.x;
        let x_860 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_855 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat6;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec11;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_874.xy, x_874.z);
        u_xlat50.x = x_876;
        let x_879 : f32 = u_xlat12.w;
        let x_881 : f32 = u_xlat50.x;
        let x_884 : f32 = u_xlat27.x;
        u_xlat27.x = ((x_879 * x_881) + x_884);
        let x_888 : vec4<f32> = u_xlat6;
        let x_889 : vec2<f32> = vec2<f32>(x_888.z, x_888.w);
        let x_891 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_889.x, x_889.y, x_891);
        let x_898 : vec3<f32> = txVec12;
        let x_900 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_898.xy, x_898.z);
        u_xlat50.x = x_900;
        let x_903 : f32 = u_xlat4.x;
        let x_905 : f32 = u_xlat50.x;
        let x_908 : f32 = u_xlat27.x;
        u_xlat71 = ((x_903 * x_905) + x_908);
      } else {
        let x_911 : vec4<f32> = vs_TEXCOORD6;
        let x_914 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_917 : vec2<f32> = ((vec2<f32>(x_911.x, x_911.y) * vec2<f32>(x_914.z, x_914.w)) + vec2<f32>(0.5f, 0.5f));
        let x_918 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
        let x_920 : vec4<f32> = u_xlat4;
        let x_922 : vec2<f32> = floor(vec2<f32>(x_920.x, x_920.y));
        let x_923 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_922.x, x_922.y, x_923.z, x_923.w);
        let x_925 : vec4<f32> = vs_TEXCOORD6;
        let x_928 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_931 : vec4<f32> = u_xlat4;
        u_xlat50 = ((vec2<f32>(x_925.x, x_925.y) * vec2<f32>(x_928.z, x_928.w)) + -(vec2<f32>(x_931.x, x_931.y)));
        let x_935 : vec2<f32> = u_xlat50;
        u_xlat5 = (vec4<f32>(x_935.x, x_935.x, x_935.y, x_935.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_938 : vec4<f32> = u_xlat5;
        let x_940 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_938.x, x_938.x, x_938.z, x_938.z) * vec4<f32>(x_940.x, x_940.x, x_940.z, x_940.z));
        let x_943 : vec4<f32> = u_xlat6;
        let x_947 : vec2<f32> = (vec2<f32>(x_943.y, x_943.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_948 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_948.x, x_947.x, x_948.z, x_947.y);
        let x_950 : vec4<f32> = u_xlat6;
        let x_953 : vec2<f32> = u_xlat50;
        let x_955 : vec2<f32> = ((vec2<f32>(x_950.x, x_950.z) * vec2<f32>(0.5f, 0.5f)) + -(x_953));
        let x_956 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_955.x, x_956.y, x_955.y, x_956.w);
        let x_958 : vec2<f32> = u_xlat50;
        let x_960 : vec2<f32> = (-(x_958) + vec2<f32>(1.0f, 1.0f));
        let x_961 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_963 : vec2<f32> = u_xlat50;
        u_xlat52 = min(x_963, vec2<f32>(0.0f, 0.0f));
        let x_965 : vec2<f32> = u_xlat52;
        let x_967 : vec2<f32> = u_xlat52;
        let x_969 : vec4<f32> = u_xlat6;
        let x_971 : vec2<f32> = ((-(x_965) * x_967) + vec2<f32>(x_969.x, x_969.y));
        let x_972 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_974 : vec2<f32> = u_xlat50;
        u_xlat52 = max(x_974, vec2<f32>(0.0f, 0.0f));
        let x_977 : vec2<f32> = u_xlat52;
        let x_979 : vec2<f32> = u_xlat52;
        let x_981 : vec4<f32> = u_xlat5;
        let x_983 : vec2<f32> = ((-(x_977) * x_979) + vec2<f32>(x_981.y, x_981.w));
        let x_984 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_983.x, x_984.y, x_983.y);
        let x_986 : vec4<f32> = u_xlat6;
        let x_989 : vec2<f32> = (vec2<f32>(x_986.x, x_986.y) + vec2<f32>(2.0f, 2.0f));
        let x_990 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec3<f32> = u_xlat28;
        let x_994 : vec2<f32> = (vec2<f32>(x_992.x, x_992.z) + vec2<f32>(2.0f, 2.0f));
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_995.x, x_994.x, x_995.z, x_994.y);
        let x_998 : f32 = u_xlat5.y;
        u_xlat8.z = (x_998 * 0.08163200318813323975f);
        let x_1002 : vec4<f32> = u_xlat5;
        let x_1005 : vec3<f32> = (vec3<f32>(x_1002.z, x_1002.x, x_1002.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1006 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat6;
        let x_1011 : vec2<f32> = (vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1012 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1015 : f32 = u_xlat9.y;
        u_xlat8.x = x_1015;
        let x_1017 : vec2<f32> = u_xlat50;
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1017.x, x_1017.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1025 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec2<f32> = u_xlat50;
        let x_1031 : vec2<f32> = ((vec2<f32>(x_1027.x, x_1027.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1032 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1031.x, x_1032.y, x_1031.y, x_1032.w);
        let x_1035 : f32 = u_xlat5.x;
        u_xlat6.y = x_1035;
        let x_1038 : f32 = u_xlat7.y;
        u_xlat6.w = x_1038;
        let x_1040 : vec4<f32> = u_xlat6;
        let x_1041 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1040 + x_1041);
        let x_1043 : vec2<f32> = u_xlat50;
        let x_1046 : vec2<f32> = ((vec2<f32>(x_1043.y, x_1043.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1047 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1047.x, x_1046.x, x_1047.z, x_1046.y);
        let x_1049 : vec2<f32> = u_xlat50;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1049.y, x_1049.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1056 : f32 = u_xlat5.y;
        u_xlat7.y = x_1056;
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1058 + x_1059);
        let x_1061 : vec4<f32> = u_xlat6;
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1061 / x_1062);
        let x_1064 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1064 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1070 : vec4<f32> = u_xlat7;
        let x_1071 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1070 / x_1071);
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1073 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1078 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1075.w, x_1075.x, x_1075.y, x_1075.z) * vec4<f32>(x_1078.x, x_1078.x, x_1078.x, x_1078.x));
        let x_1081 : vec4<f32> = u_xlat7;
        let x_1084 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1081.x, x_1081.w, x_1081.y, x_1081.z) * vec4<f32>(x_1084.y, x_1084.y, x_1084.y, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat6;
        let x_1088 : vec3<f32> = vec3<f32>(x_1087.y, x_1087.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1088.z);
        let x_1092 : f32 = u_xlat7.x;
        u_xlat9.y = x_1092;
        let x_1094 : vec4<f32> = u_xlat4;
        let x_1097 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1100 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1094.x, x_1094.y, x_1094.x, x_1094.y) * vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y)) + vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1100.y));
        let x_1103 : vec4<f32> = u_xlat4;
        let x_1106 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1109 : vec4<f32> = u_xlat9;
        u_xlat50 = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y)) + vec2<f32>(x_1109.w, x_1109.y));
        let x_1113 : f32 = u_xlat9.y;
        u_xlat6.y = x_1113;
        let x_1116 : f32 = u_xlat7.z;
        u_xlat9.y = x_1116;
        let x_1118 : vec4<f32> = u_xlat4;
        let x_1121 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y) * vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y)) + vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat4;
        let x_1130 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat9;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1127.x, x_1127.y) * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.w, x_1133.y));
        let x_1136 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1135.x, x_1135.y, x_1136.z, x_1136.w);
        let x_1139 : f32 = u_xlat9.y;
        u_xlat6.z = x_1139;
        let x_1142 : vec4<f32> = u_xlat4;
        let x_1145 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1148 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y) * vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y)) + vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.z));
        let x_1152 : f32 = u_xlat7.w;
        u_xlat9.y = x_1152;
        let x_1155 : vec4<f32> = u_xlat4;
        let x_1158 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1161.y));
        let x_1165 : vec4<f32> = u_xlat4;
        let x_1168 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1173 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(x_1168.x, x_1168.y)) + vec2<f32>(x_1171.w, x_1171.y));
        let x_1174 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1173.x, x_1173.y, x_1174.z);
        let x_1177 : f32 = u_xlat9.y;
        u_xlat6.w = x_1177;
        let x_1180 : vec4<f32> = u_xlat4;
        let x_1183 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.x, x_1186.w));
        let x_1189 : vec4<f32> = u_xlat9;
        let x_1190 : vec3<f32> = vec3<f32>(x_1189.x, x_1189.z, x_1189.w);
        let x_1191 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1190.x, x_1191.y, x_1190.y, x_1190.z);
        let x_1193 : vec4<f32> = u_xlat4;
        let x_1196 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y) * vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y)) + vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1199.y));
        let x_1203 : vec4<f32> = u_xlat4;
        let x_1206 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1209 : vec4<f32> = u_xlat7;
        u_xlat53 = ((vec2<f32>(x_1203.x, x_1203.y) * vec2<f32>(x_1206.x, x_1206.y)) + vec2<f32>(x_1209.w, x_1209.y));
        let x_1213 : f32 = u_xlat6.x;
        u_xlat7.x = x_1213;
        let x_1215 : vec4<f32> = u_xlat4;
        let x_1218 : vec4<f32> = x_328.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat7;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.x, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1227 : vec4<f32> = u_xlat5;
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1227.x, x_1227.x, x_1227.x, x_1227.x) * x_1229);
        let x_1232 : vec4<f32> = u_xlat5;
        let x_1234 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1232.y, x_1232.y, x_1232.y, x_1232.y) * x_1234);
        let x_1237 : vec4<f32> = u_xlat5;
        let x_1239 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1237.z, x_1237.z, x_1237.z, x_1237.z) * x_1239);
        let x_1241 : vec4<f32> = u_xlat5;
        let x_1243 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1241.w, x_1241.w, x_1241.w, x_1241.w) * x_1243);
        let x_1246 : vec4<f32> = u_xlat10;
        let x_1247 : vec2<f32> = vec2<f32>(x_1246.x, x_1246.y);
        let x_1249 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1247.x, x_1247.y, x_1249);
        let x_1256 : vec3<f32> = txVec13;
        let x_1258 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1256.xy, x_1256.z);
        u_xlat6.x = x_1258;
        let x_1261 : vec4<f32> = u_xlat10;
        let x_1262 : vec2<f32> = vec2<f32>(x_1261.z, x_1261.w);
        let x_1264 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1262.x, x_1262.y, x_1264);
        let x_1272 : vec3<f32> = txVec14;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1272.xy, x_1272.z);
        u_xlat75 = x_1274;
        let x_1275 : f32 = u_xlat75;
        let x_1277 : f32 = u_xlat15.y;
        u_xlat75 = (x_1275 * x_1277);
        let x_1280 : f32 = u_xlat15.x;
        let x_1282 : f32 = u_xlat6.x;
        let x_1284 : f32 = u_xlat75;
        u_xlat6.x = ((x_1280 * x_1282) + x_1284);
        let x_1288 : vec2<f32> = u_xlat50;
        let x_1290 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1288.x, x_1288.y, x_1290);
        let x_1297 : vec3<f32> = txVec15;
        let x_1299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1297.xy, x_1297.z);
        u_xlat50.x = x_1299;
        let x_1302 : f32 = u_xlat15.z;
        let x_1304 : f32 = u_xlat50.x;
        let x_1307 : f32 = u_xlat6.x;
        u_xlat50.x = ((x_1302 * x_1304) + x_1307);
        let x_1311 : vec4<f32> = u_xlat13;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.x, x_1311.y);
        let x_1314 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1322 : vec3<f32> = txVec16;
        let x_1324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1322.xy, x_1322.z);
        u_xlat73 = x_1324;
        let x_1326 : f32 = u_xlat15.w;
        let x_1327 : f32 = u_xlat73;
        let x_1330 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1326 * x_1327) + x_1330);
        let x_1334 : vec4<f32> = u_xlat11;
        let x_1335 : vec2<f32> = vec2<f32>(x_1334.x, x_1334.y);
        let x_1337 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1335.x, x_1335.y, x_1337);
        let x_1344 : vec3<f32> = txVec17;
        let x_1346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1344.xy, x_1344.z);
        u_xlat73 = x_1346;
        let x_1348 : f32 = u_xlat16.x;
        let x_1349 : f32 = u_xlat73;
        let x_1352 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1348 * x_1349) + x_1352);
        let x_1356 : vec4<f32> = u_xlat11;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.z, x_1356.w);
        let x_1359 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec18;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1366.xy, x_1366.z);
        u_xlat73 = x_1368;
        let x_1370 : f32 = u_xlat16.y;
        let x_1371 : f32 = u_xlat73;
        let x_1374 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1370 * x_1371) + x_1374);
        let x_1378 : vec4<f32> = u_xlat12;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec19;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1388.xy, x_1388.z);
        u_xlat73 = x_1390;
        let x_1392 : f32 = u_xlat16.z;
        let x_1393 : f32 = u_xlat73;
        let x_1396 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1392 * x_1393) + x_1396);
        let x_1400 : vec4<f32> = u_xlat13;
        let x_1401 : vec2<f32> = vec2<f32>(x_1400.z, x_1400.w);
        let x_1403 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1401.x, x_1401.y, x_1403);
        let x_1410 : vec3<f32> = txVec20;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1410.xy, x_1410.z);
        u_xlat73 = x_1412;
        let x_1414 : f32 = u_xlat16.w;
        let x_1415 : f32 = u_xlat73;
        let x_1418 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1414 * x_1415) + x_1418);
        let x_1422 : vec4<f32> = u_xlat14;
        let x_1423 : vec2<f32> = vec2<f32>(x_1422.x, x_1422.y);
        let x_1425 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec21;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat73 = x_1434;
        let x_1436 : f32 = u_xlat17.x;
        let x_1437 : f32 = u_xlat73;
        let x_1440 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1436 * x_1437) + x_1440);
        let x_1444 : vec4<f32> = u_xlat14;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.z, x_1444.w);
        let x_1447 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec22;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat73 = x_1456;
        let x_1458 : f32 = u_xlat17.y;
        let x_1459 : f32 = u_xlat73;
        let x_1462 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1458 * x_1459) + x_1462);
        let x_1466 : vec3<f32> = u_xlat29;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec23;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat73 = x_1478;
        let x_1480 : f32 = u_xlat17.z;
        let x_1481 : f32 = u_xlat73;
        let x_1484 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1480 * x_1481) + x_1484);
        let x_1488 : vec2<f32> = u_xlat58;
        let x_1490 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec24;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat73 = x_1499;
        let x_1501 : f32 = u_xlat17.w;
        let x_1502 : f32 = u_xlat73;
        let x_1505 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1501 * x_1502) + x_1505);
        let x_1509 : vec4<f32> = u_xlat9;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.x, x_1509.y);
        let x_1512 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec25;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat73 = x_1521;
        let x_1523 : f32 = u_xlat5.x;
        let x_1524 : f32 = u_xlat73;
        let x_1527 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1523 * x_1524) + x_1527);
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.z, x_1531.w);
        let x_1534 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec26;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat73 = x_1543;
        let x_1545 : f32 = u_xlat5.y;
        let x_1546 : f32 = u_xlat73;
        let x_1549 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1545 * x_1546) + x_1549);
        let x_1553 : vec2<f32> = u_xlat53;
        let x_1555 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec27;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat73 = x_1564;
        let x_1566 : f32 = u_xlat5.z;
        let x_1567 : f32 = u_xlat73;
        let x_1570 : f32 = u_xlat50.x;
        u_xlat50.x = ((x_1566 * x_1567) + x_1570);
        let x_1574 : vec4<f32> = u_xlat4;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.x, x_1574.y);
        let x_1577 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec28;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat4.x = x_1586;
        let x_1589 : f32 = u_xlat5.w;
        let x_1591 : f32 = u_xlat4.x;
        let x_1594 : f32 = u_xlat50.x;
        u_xlat71 = ((x_1589 * x_1591) + x_1594);
      }
    }
  } else {
    let x_1598 : vec4<f32> = vs_TEXCOORD6;
    let x_1599 : vec2<f32> = vec2<f32>(x_1598.x, x_1598.y);
    let x_1601 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
    let x_1608 : vec3<f32> = txVec29;
    let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1608.xy, x_1608.z);
    u_xlat71 = x_1610;
  }
  let x_1612 : f32 = x_328.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1612) + 1.0f);
  let x_1616 : f32 = u_xlat71;
  let x_1618 : f32 = x_328.x_MainLightShadowParams.x;
  let x_1621 : f32 = u_xlat4.x;
  u_xlat71 = ((x_1616 * x_1618) + x_1621);
  let x_1624 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_1624);
  let x_1628 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_1628 >= 1.0f);
  let x_1630 : bool = u_xlatb27;
  let x_1631 : bool = u_xlatb4;
  u_xlatb4 = (x_1630 | x_1631);
  let x_1633 : bool = u_xlatb4;
  let x_1634 : f32 = u_xlat71;
  u_xlat71 = select(x_1634, 1.0f, x_1633);
  let x_1636 : vec3<f32> = vs_TEXCOORD1;
  let x_1638 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1640 : vec3<f32> = (x_1636 + -(x_1638));
  let x_1641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1641.w);
  let x_1643 : vec4<f32> = u_xlat4;
  let x_1645 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_1643.x, x_1643.y, x_1643.z), vec3<f32>(x_1645.x, x_1645.y, x_1645.z));
  let x_1650 : f32 = u_xlat4.x;
  let x_1652 : f32 = x_328.x_MainLightShadowParams.z;
  let x_1655 : f32 = x_328.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1650 * x_1652) + x_1655);
  let x_1659 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1659, 0.0f, 1.0f);
  let x_1662 : f32 = u_xlat71;
  u_xlat50.x = (-(x_1662) + 1.0f);
  let x_1667 : f32 = u_xlat27.x;
  let x_1669 : f32 = u_xlat50.x;
  let x_1671 : f32 = u_xlat71;
  u_xlat71 = ((x_1667 * x_1669) + x_1671);
  let x_1673 : f32 = u_xlat71;
  let x_1675 : f32 = x_95.unity_LightData.z;
  u_xlat71 = (x_1673 * x_1675);
  let x_1677 : f32 = u_xlat71;
  let x_1680 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1677, x_1677, x_1677) * vec3<f32>(x_1680.x, x_1680.y, x_1680.z));
  let x_1683 : vec4<f32> = u_xlat2;
  let x_1686 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat71 = dot(vec3<f32>(x_1683.x, x_1683.y, x_1683.z), vec3<f32>(x_1686.x, x_1686.y, x_1686.z));
  let x_1689 : f32 = u_xlat71;
  u_xlat71 = clamp(x_1689, 0.0f, 1.0f);
  let x_1691 : f32 = u_xlat71;
  let x_1693 : vec3<f32> = u_xlat27;
  let x_1694 : vec3<f32> = (vec3<f32>(x_1691, x_1691, x_1691) * x_1693);
  let x_1695 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1694.x, x_1694.y, x_1694.z, x_1695.w);
  let x_1698 : f32 = u_xlat0.x;
  u_xlat71 = ((x_1698 * 10.0f) + 1.0f);
  let x_1702 : f32 = u_xlat71;
  u_xlat71 = exp2(x_1702);
  let x_1704 : vec3<f32> = u_xlat1;
  let x_1705 : f32 = u_xlat70;
  let x_1709 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1711 : vec3<f32> = ((x_1704 * vec3<f32>(x_1705, x_1705, x_1705)) + vec3<f32>(x_1709.x, x_1709.y, x_1709.z));
  let x_1712 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1711.x, x_1711.y, x_1711.z, x_1712.w);
  let x_1715 : vec4<f32> = u_xlat6;
  let x_1717 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1715.x, x_1715.y, x_1715.z), vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
  let x_1720 : f32 = u_xlat74;
  u_xlat74 = max(x_1720, 1.17549435e-38f);
  let x_1723 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1723);
  let x_1725 : f32 = u_xlat74;
  let x_1727 : vec4<f32> = u_xlat6;
  let x_1729 : vec3<f32> = (vec3<f32>(x_1725, x_1725, x_1725) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1730 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1732 : vec4<f32> = u_xlat2;
  let x_1734 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1732.x, x_1732.y, x_1732.z), vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
  let x_1737 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1737, 0.0f, 1.0f);
  let x_1739 : f32 = u_xlat74;
  u_xlat74 = log2(x_1739);
  let x_1741 : f32 = u_xlat71;
  let x_1742 : f32 = u_xlat74;
  u_xlat74 = (x_1741 * x_1742);
  let x_1744 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1744);
  let x_1746 : f32 = u_xlat74;
  let x_1749 : vec4<f32> = x_57.x_SpecColor;
  let x_1751 : vec3<f32> = (vec3<f32>(x_1746, x_1746, x_1746) * vec3<f32>(x_1749.x, x_1749.y, x_1749.z));
  let x_1752 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
  let x_1754 : vec3<f32> = u_xlat27;
  let x_1755 : vec4<f32> = u_xlat6;
  u_xlat27 = (x_1754 * vec3<f32>(x_1755.x, x_1755.y, x_1755.z));
  let x_1758 : vec4<f32> = u_xlat5;
  let x_1760 : vec4<f32> = u_xlat0;
  let x_1763 : vec3<f32> = u_xlat27;
  u_xlat27 = ((vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(x_1760.y, x_1760.z, x_1760.w)) + x_1763);
  let x_1766 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1768 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_1766, x_1768);
  let x_1774 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1774));
  let x_1778 : f32 = u_xlat4.x;
  let x_1781 : f32 = x_328.x_AdditionalShadowFadeParams.x;
  let x_1784 : f32 = x_328.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_1778 * x_1781) + x_1784);
  let x_1788 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_1788, 0.0f, 1.0f);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1801 : u32 = u_xlatu_loop_1;
    let x_1802 : u32 = u_xlatu5;
    if ((x_1801 < x_1802)) {
    } else {
      break;
    }
    let x_1805 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_1805 >> 2u);
    let x_1809 : u32 = u_xlatu_loop_1;
    u_xlati52 = bitcast<i32>((x_1809 & 3u));
    let x_1812 : u32 = u_xlatu29;
    let x_1815 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1812)];
    let x_1825 : i32 = u_xlati52;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1830 : vec4<u32> = indexable[x_1825];
    u_xlat29.x = dot(x_1815, bitcast<vec4<f32>>(x_1830));
    let x_1836 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_1836);
    let x_1838 : vec3<f32> = vs_TEXCOORD1;
    let x_1849 : i32 = u_xlati29;
    let x_1851 : vec4<f32> = x_1848.x_AdditionalLightsPosition[x_1849];
    let x_1854 : i32 = u_xlati29;
    let x_1856 : vec4<f32> = x_1848.x_AdditionalLightsPosition[x_1854];
    let x_1858 : vec3<f32> = ((-(x_1838) * vec3<f32>(x_1851.w, x_1851.w, x_1851.w)) + vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
    let x_1859 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
    let x_1861 : vec4<f32> = u_xlat7;
    let x_1863 : vec4<f32> = u_xlat7;
    u_xlat52.x = dot(vec3<f32>(x_1861.x, x_1861.y, x_1861.z), vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
    let x_1868 : f32 = u_xlat52.x;
    u_xlat52.x = max(x_1868, 0.00006103515625f);
    let x_1872 : f32 = u_xlat52.x;
    u_xlat75 = inverseSqrt(x_1872);
    let x_1874 : f32 = u_xlat75;
    let x_1876 : vec4<f32> = u_xlat7;
    let x_1878 : vec3<f32> = (vec3<f32>(x_1874, x_1874, x_1874) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
    let x_1879 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
    let x_1882 : f32 = u_xlat52.x;
    u_xlat75 = (1.0f / x_1882);
    let x_1885 : f32 = u_xlat52.x;
    let x_1886 : i32 = u_xlati29;
    let x_1888 : f32 = x_1848.x_AdditionalLightsAttenuation[x_1886].x;
    u_xlat52.x = (x_1885 * x_1888);
    let x_1892 : f32 = u_xlat52.x;
    let x_1895 : f32 = u_xlat52.x;
    u_xlat52.x = ((-(x_1892) * x_1895) + 1.0f);
    let x_1900 : f32 = u_xlat52.x;
    u_xlat52.x = max(x_1900, 0.0f);
    let x_1904 : f32 = u_xlat52.x;
    let x_1906 : f32 = u_xlat52.x;
    u_xlat52.x = (x_1904 * x_1906);
    let x_1910 : f32 = u_xlat52.x;
    let x_1911 : f32 = u_xlat75;
    u_xlat52.x = (x_1910 * x_1911);
    let x_1914 : i32 = u_xlati29;
    let x_1916 : vec4<f32> = x_1848.x_AdditionalLightsSpotDir[x_1914];
    let x_1918 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_1916.x, x_1916.y, x_1916.z), vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
    let x_1921 : f32 = u_xlat75;
    let x_1922 : i32 = u_xlati29;
    let x_1924 : f32 = x_1848.x_AdditionalLightsAttenuation[x_1922].z;
    let x_1926 : i32 = u_xlati29;
    let x_1928 : f32 = x_1848.x_AdditionalLightsAttenuation[x_1926].w;
    u_xlat75 = ((x_1921 * x_1924) + x_1928);
    let x_1930 : f32 = u_xlat75;
    u_xlat75 = clamp(x_1930, 0.0f, 1.0f);
    let x_1932 : f32 = u_xlat75;
    let x_1933 : f32 = u_xlat75;
    u_xlat75 = (x_1932 * x_1933);
    let x_1935 : f32 = u_xlat75;
    let x_1937 : f32 = u_xlat52.x;
    u_xlat52.x = (x_1935 * x_1937);
    let x_1942 : i32 = u_xlati29;
    let x_1944 : f32 = x_328.x_AdditionalShadowParams[x_1942].w;
    u_xlati75 = i32(x_1944);
    let x_1947 : i32 = u_xlati75;
    u_xlatb76 = (x_1947 >= 0i);
    let x_1949 : bool = u_xlatb76;
    if (x_1949) {
      let x_1953 : i32 = u_xlati29;
      let x_1955 : f32 = x_328.x_AdditionalShadowParams[x_1953].z;
      u_xlatb76 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1955, x_1955, x_1955, x_1955))));
      let x_1960 : bool = u_xlatb76;
      if (x_1960) {
        let x_1965 : vec4<f32> = u_xlat7;
        let x_1968 : vec4<f32> = u_xlat7;
        let x_1971 : vec4<bool> = (abs(vec4<f32>(x_1965.z, x_1965.z, x_1965.y, x_1965.z)) >= abs(vec4<f32>(x_1968.x, x_1968.y, x_1968.x, x_1968.x)));
        let x_1973 : vec3<bool> = vec3<bool>(x_1971.x, x_1971.y, x_1971.z);
        let x_1974 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
        let x_1977 : bool = u_xlatb8.y;
        let x_1979 : bool = u_xlatb8.x;
        u_xlatb76 = (x_1977 & x_1979);
        let x_1981 : vec4<f32> = u_xlat7;
        let x_1984 : vec4<bool> = (-(vec4<f32>(x_1981.z, x_1981.y, x_1981.z, x_1981.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1985 : vec3<bool> = vec3<bool>(x_1984.x, x_1984.y, x_1984.w);
        let x_1986 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_1985.x, x_1985.y, x_1986.z, x_1985.z);
        let x_1989 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_1989);
        let x_1995 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_1995);
        let x_2001 : bool = u_xlatb8.w;
        u_xlat77 = select(0.0f, 1.0f, x_2001);
        let x_2005 : bool = u_xlatb8.z;
        if (x_2005) {
          let x_2010 : f32 = u_xlat8.y;
          x_2006 = x_2010;
        } else {
          let x_2012 : f32 = u_xlat77;
          x_2006 = x_2012;
        }
        let x_2013 : f32 = x_2006;
        u_xlat31 = x_2013;
        let x_2015 : bool = u_xlatb76;
        if (x_2015) {
          let x_2020 : f32 = u_xlat8.x;
          x_2016 = x_2020;
        } else {
          let x_2022 : f32 = u_xlat31;
          x_2016 = x_2022;
        }
        let x_2023 : f32 = x_2016;
        u_xlat76 = x_2023;
        let x_2024 : i32 = u_xlati29;
        let x_2026 : f32 = x_328.x_AdditionalShadowParams[x_2024].w;
        u_xlat8.x = trunc(x_2026);
        let x_2029 : f32 = u_xlat76;
        let x_2031 : f32 = u_xlat8.x;
        u_xlat76 = (x_2029 + x_2031);
        let x_2033 : f32 = u_xlat76;
        u_xlati75 = i32(x_2033);
      }
      let x_2035 : i32 = u_xlati75;
      u_xlati75 = (x_2035 << bitcast<u32>(2i));
      let x_2037 : vec3<f32> = vs_TEXCOORD1;
      let x_2040 : i32 = u_xlati75;
      let x_2043 : i32 = u_xlati75;
      let x_2047 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[((x_2040 + 1i) / 4i)][((x_2043 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2037.y, x_2037.y, x_2037.y, x_2037.y) * x_2047);
      let x_2049 : i32 = u_xlati75;
      let x_2051 : i32 = u_xlati75;
      let x_2054 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[(x_2049 / 4i)][(x_2051 % 4i)];
      let x_2055 : vec3<f32> = vs_TEXCOORD1;
      let x_2058 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2054 * vec4<f32>(x_2055.x, x_2055.x, x_2055.x, x_2055.x)) + x_2058);
      let x_2060 : i32 = u_xlati75;
      let x_2063 : i32 = u_xlati75;
      let x_2067 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[((x_2060 + 2i) / 4i)][((x_2063 + 2i) % 4i)];
      let x_2068 : vec3<f32> = vs_TEXCOORD1;
      let x_2071 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2067 * vec4<f32>(x_2068.z, x_2068.z, x_2068.z, x_2068.z)) + x_2071);
      let x_2073 : vec4<f32> = u_xlat8;
      let x_2074 : i32 = u_xlati75;
      let x_2077 : i32 = u_xlati75;
      let x_2081 : vec4<f32> = x_328.x_AdditionalLightsWorldToShadow[((x_2074 + 3i) / 4i)][((x_2077 + 3i) % 4i)];
      u_xlat8 = (x_2073 + x_2081);
      let x_2083 : vec4<f32> = u_xlat8;
      let x_2085 : vec4<f32> = u_xlat8;
      let x_2087 : vec3<f32> = (vec3<f32>(x_2083.x, x_2083.y, x_2083.z) / vec3<f32>(x_2085.w, x_2085.w, x_2085.w));
      let x_2088 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
      let x_2091 : i32 = u_xlati29;
      let x_2093 : f32 = x_328.x_AdditionalShadowParams[x_2091].y;
      u_xlatb75 = (0.0f < x_2093);
      let x_2095 : bool = u_xlatb75;
      if (x_2095) {
        let x_2098 : i32 = u_xlati29;
        let x_2100 : f32 = x_328.x_AdditionalShadowParams[x_2098].y;
        u_xlatb75 = (1.0f == x_2100);
        let x_2102 : bool = u_xlatb75;
        if (x_2102) {
          let x_2105 : vec4<f32> = u_xlat8;
          let x_2108 : vec4<f32> = x_328.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2105.x, x_2105.y, x_2105.x, x_2105.y) + x_2108);
          let x_2111 : vec4<f32> = u_xlat9;
          let x_2112 : vec2<f32> = vec2<f32>(x_2111.x, x_2111.y);
          let x_2114 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2112.x, x_2112.y, x_2114);
          let x_2122 : vec3<f32> = txVec30;
          let x_2124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
          u_xlat10.x = x_2124;
          let x_2127 : vec4<f32> = u_xlat9;
          let x_2128 : vec2<f32> = vec2<f32>(x_2127.z, x_2127.w);
          let x_2130 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2128.x, x_2128.y, x_2130);
          let x_2137 : vec3<f32> = txVec31;
          let x_2139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2137.xy, x_2137.z);
          u_xlat10.y = x_2139;
          let x_2141 : vec4<f32> = u_xlat8;
          let x_2145 : vec4<f32> = x_328.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2141.x, x_2141.y, x_2141.x, x_2141.y) + x_2145);
          let x_2148 : vec4<f32> = u_xlat9;
          let x_2149 : vec2<f32> = vec2<f32>(x_2148.x, x_2148.y);
          let x_2151 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
          let x_2158 : vec3<f32> = txVec32;
          let x_2160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2158.xy, x_2158.z);
          u_xlat10.z = x_2160;
          let x_2163 : vec4<f32> = u_xlat9;
          let x_2164 : vec2<f32> = vec2<f32>(x_2163.z, x_2163.w);
          let x_2166 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2164.x, x_2164.y, x_2166);
          let x_2173 : vec3<f32> = txVec33;
          let x_2175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2173.xy, x_2173.z);
          u_xlat10.w = x_2175;
          let x_2177 : vec4<f32> = u_xlat10;
          u_xlat75 = dot(x_2177, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2180 : i32 = u_xlati29;
          let x_2182 : f32 = x_328.x_AdditionalShadowParams[x_2180].y;
          u_xlatb76 = (2.0f == x_2182);
          let x_2184 : bool = u_xlatb76;
          if (x_2184) {
            let x_2187 : vec4<f32> = u_xlat8;
            let x_2191 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2194 : vec2<f32> = ((vec2<f32>(x_2187.x, x_2187.y) * vec2<f32>(x_2191.z, x_2191.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2195 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2194.x, x_2194.y, x_2195.z, x_2195.w);
            let x_2197 : vec4<f32> = u_xlat9;
            let x_2199 : vec2<f32> = floor(vec2<f32>(x_2197.x, x_2197.y));
            let x_2200 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2199.x, x_2199.y, x_2200.z, x_2200.w);
            let x_2203 : vec4<f32> = u_xlat8;
            let x_2206 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2209 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2203.x, x_2203.y) * vec2<f32>(x_2206.z, x_2206.w)) + -(vec2<f32>(x_2209.x, x_2209.y)));
            let x_2213 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2213.x, x_2213.x, x_2213.y, x_2213.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2216 : vec4<f32> = u_xlat10;
            let x_2218 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2216.x, x_2216.x, x_2216.z, x_2216.z) * vec4<f32>(x_2218.x, x_2218.x, x_2218.z, x_2218.z));
            let x_2221 : vec4<f32> = u_xlat11;
            let x_2223 : vec2<f32> = (vec2<f32>(x_2221.y, x_2221.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2224 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2223.x, x_2224.y, x_2223.y, x_2224.w);
            let x_2226 : vec4<f32> = u_xlat11;
            let x_2229 : vec2<f32> = u_xlat55;
            let x_2231 : vec2<f32> = ((vec2<f32>(x_2226.x, x_2226.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2229));
            let x_2232 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
            let x_2235 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2235) + vec2<f32>(1.0f, 1.0f));
            let x_2238 : vec2<f32> = u_xlat55;
            let x_2239 : vec2<f32> = min(x_2238, vec2<f32>(0.0f, 0.0f));
            let x_2240 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2239.x, x_2239.y, x_2240.z, x_2240.w);
            let x_2242 : vec4<f32> = u_xlat12;
            let x_2245 : vec4<f32> = u_xlat12;
            let x_2248 : vec2<f32> = u_xlat57;
            let x_2249 : vec2<f32> = ((-(vec2<f32>(x_2242.x, x_2242.y)) * vec2<f32>(x_2245.x, x_2245.y)) + x_2248);
            let x_2250 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2249.x, x_2249.y, x_2250.z, x_2250.w);
            let x_2252 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2252, vec2<f32>(0.0f, 0.0f));
            let x_2254 : vec2<f32> = u_xlat55;
            let x_2256 : vec2<f32> = u_xlat55;
            let x_2258 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2254) * x_2256) + vec2<f32>(x_2258.y, x_2258.w));
            let x_2261 : vec4<f32> = u_xlat12;
            let x_2263 : vec2<f32> = (vec2<f32>(x_2261.x, x_2261.y) + vec2<f32>(1.0f, 1.0f));
            let x_2264 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
            let x_2266 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2266 + vec2<f32>(1.0f, 1.0f));
            let x_2268 : vec4<f32> = u_xlat11;
            let x_2270 : vec2<f32> = (vec2<f32>(x_2268.x, x_2268.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2271 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
            let x_2273 : vec2<f32> = u_xlat57;
            let x_2274 : vec2<f32> = (x_2273 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2275 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2274.x, x_2274.y, x_2275.z, x_2275.w);
            let x_2277 : vec4<f32> = u_xlat12;
            let x_2279 : vec2<f32> = (vec2<f32>(x_2277.x, x_2277.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2280 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2279.x, x_2279.y, x_2280.z, x_2280.w);
            let x_2282 : vec2<f32> = u_xlat55;
            let x_2283 : vec2<f32> = (x_2282 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2284 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
            let x_2286 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2286.y, x_2286.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2290 : f32 = u_xlat12.x;
            u_xlat13.z = x_2290;
            let x_2293 : f32 = u_xlat55.x;
            u_xlat13.w = x_2293;
            let x_2296 : f32 = u_xlat14.x;
            u_xlat11.z = x_2296;
            let x_2299 : f32 = u_xlat10.x;
            u_xlat11.w = x_2299;
            let x_2301 : vec4<f32> = u_xlat11;
            let x_2303 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2301.z, x_2301.w, x_2301.x, x_2301.z) + vec4<f32>(x_2303.z, x_2303.w, x_2303.x, x_2303.z));
            let x_2307 : f32 = u_xlat13.y;
            u_xlat12.z = x_2307;
            let x_2310 : f32 = u_xlat55.y;
            u_xlat12.w = x_2310;
            let x_2313 : f32 = u_xlat11.y;
            u_xlat14.z = x_2313;
            let x_2316 : f32 = u_xlat10.z;
            u_xlat14.w = x_2316;
            let x_2318 : vec4<f32> = u_xlat12;
            let x_2320 : vec4<f32> = u_xlat14;
            let x_2322 : vec3<f32> = (vec3<f32>(x_2318.z, x_2318.y, x_2318.w) + vec3<f32>(x_2320.z, x_2320.y, x_2320.w));
            let x_2323 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
            let x_2325 : vec4<f32> = u_xlat11;
            let x_2327 : vec4<f32> = u_xlat15;
            let x_2329 : vec3<f32> = (vec3<f32>(x_2325.x, x_2325.z, x_2325.w) / vec3<f32>(x_2327.z, x_2327.w, x_2327.y));
            let x_2330 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2329.x, x_2329.y, x_2329.z, x_2330.w);
            let x_2332 : vec4<f32> = u_xlat11;
            let x_2334 : vec3<f32> = (vec3<f32>(x_2332.x, x_2332.y, x_2332.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2335 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
            let x_2337 : vec4<f32> = u_xlat14;
            let x_2339 : vec4<f32> = u_xlat10;
            let x_2341 : vec3<f32> = (vec3<f32>(x_2337.z, x_2337.y, x_2337.w) / vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
            let x_2342 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
            let x_2344 : vec4<f32> = u_xlat12;
            let x_2346 : vec3<f32> = (vec3<f32>(x_2344.x, x_2344.y, x_2344.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2347 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
            let x_2349 : vec4<f32> = u_xlat11;
            let x_2352 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2354 : vec3<f32> = (vec3<f32>(x_2349.y, x_2349.x, x_2349.z) * vec3<f32>(x_2352.x, x_2352.x, x_2352.x));
            let x_2355 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
            let x_2357 : vec4<f32> = u_xlat12;
            let x_2360 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2362 : vec3<f32> = (vec3<f32>(x_2357.x, x_2357.y, x_2357.z) * vec3<f32>(x_2360.y, x_2360.y, x_2360.y));
            let x_2363 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2362.x, x_2362.y, x_2362.z, x_2363.w);
            let x_2366 : f32 = u_xlat12.x;
            u_xlat11.w = x_2366;
            let x_2368 : vec4<f32> = u_xlat9;
            let x_2371 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2374 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2368.x, x_2368.y, x_2368.x, x_2368.y) * vec4<f32>(x_2371.x, x_2371.y, x_2371.x, x_2371.y)) + vec4<f32>(x_2374.y, x_2374.w, x_2374.x, x_2374.w));
            let x_2377 : vec4<f32> = u_xlat9;
            let x_2380 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2383 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2377.x, x_2377.y) * vec2<f32>(x_2380.x, x_2380.y)) + vec2<f32>(x_2383.z, x_2383.w));
            let x_2387 : f32 = u_xlat11.y;
            u_xlat12.w = x_2387;
            let x_2389 : vec4<f32> = u_xlat12;
            let x_2390 : vec2<f32> = vec2<f32>(x_2389.y, x_2389.z);
            let x_2391 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2391.x, x_2390.x, x_2391.z, x_2390.y);
            let x_2393 : vec4<f32> = u_xlat9;
            let x_2396 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2399 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2393.x, x_2393.y, x_2393.x, x_2393.y) * vec4<f32>(x_2396.x, x_2396.y, x_2396.x, x_2396.y)) + vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2399.y));
            let x_2402 : vec4<f32> = u_xlat9;
            let x_2405 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2408 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2402.x, x_2402.y, x_2402.x, x_2402.y) * vec4<f32>(x_2405.x, x_2405.y, x_2405.x, x_2405.y)) + vec4<f32>(x_2408.w, x_2408.y, x_2408.w, x_2408.z));
            let x_2411 : vec4<f32> = u_xlat9;
            let x_2414 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2417 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2411.x, x_2411.y, x_2411.x, x_2411.y) * vec4<f32>(x_2414.x, x_2414.y, x_2414.x, x_2414.y)) + vec4<f32>(x_2417.x, x_2417.w, x_2417.z, x_2417.w));
            let x_2420 : vec4<f32> = u_xlat10;
            let x_2422 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2420.x, x_2420.x, x_2420.x, x_2420.y) * vec4<f32>(x_2422.z, x_2422.w, x_2422.y, x_2422.z));
            let x_2425 : vec4<f32> = u_xlat10;
            let x_2427 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2425.y, x_2425.y, x_2425.z, x_2425.z) * x_2427);
            let x_2430 : f32 = u_xlat10.z;
            let x_2432 : f32 = u_xlat15.y;
            u_xlat76 = (x_2430 * x_2432);
            let x_2435 : vec4<f32> = u_xlat13;
            let x_2436 : vec2<f32> = vec2<f32>(x_2435.x, x_2435.y);
            let x_2438 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2436.x, x_2436.y, x_2438);
            let x_2445 : vec3<f32> = txVec34;
            let x_2447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2445.xy, x_2445.z);
            u_xlat77 = x_2447;
            let x_2449 : vec4<f32> = u_xlat13;
            let x_2450 : vec2<f32> = vec2<f32>(x_2449.z, x_2449.w);
            let x_2452 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
            let x_2459 : vec3<f32> = txVec35;
            let x_2461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
            u_xlat9.x = x_2461;
            let x_2464 : f32 = u_xlat9.x;
            let x_2466 : f32 = u_xlat16.y;
            u_xlat9.x = (x_2464 * x_2466);
            let x_2470 : f32 = u_xlat16.x;
            let x_2471 : f32 = u_xlat77;
            let x_2474 : f32 = u_xlat9.x;
            u_xlat77 = ((x_2470 * x_2471) + x_2474);
            let x_2477 : vec2<f32> = u_xlat55;
            let x_2479 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2486 : vec3<f32> = txVec36;
            let x_2488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
            u_xlat9.x = x_2488;
            let x_2491 : f32 = u_xlat16.z;
            let x_2493 : f32 = u_xlat9.x;
            let x_2495 : f32 = u_xlat77;
            u_xlat77 = ((x_2491 * x_2493) + x_2495);
            let x_2498 : vec4<f32> = u_xlat12;
            let x_2499 : vec2<f32> = vec2<f32>(x_2498.x, x_2498.y);
            let x_2501 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2499.x, x_2499.y, x_2501);
            let x_2508 : vec3<f32> = txVec37;
            let x_2510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2508.xy, x_2508.z);
            u_xlat9.x = x_2510;
            let x_2513 : f32 = u_xlat16.w;
            let x_2515 : f32 = u_xlat9.x;
            let x_2517 : f32 = u_xlat77;
            u_xlat77 = ((x_2513 * x_2515) + x_2517);
            let x_2520 : vec4<f32> = u_xlat14;
            let x_2521 : vec2<f32> = vec2<f32>(x_2520.x, x_2520.y);
            let x_2523 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2521.x, x_2521.y, x_2523);
            let x_2530 : vec3<f32> = txVec38;
            let x_2532 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2530.xy, x_2530.z);
            u_xlat9.x = x_2532;
            let x_2535 : f32 = u_xlat17.x;
            let x_2537 : f32 = u_xlat9.x;
            let x_2539 : f32 = u_xlat77;
            u_xlat77 = ((x_2535 * x_2537) + x_2539);
            let x_2542 : vec4<f32> = u_xlat14;
            let x_2543 : vec2<f32> = vec2<f32>(x_2542.z, x_2542.w);
            let x_2545 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2543.x, x_2543.y, x_2545);
            let x_2552 : vec3<f32> = txVec39;
            let x_2554 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2552.xy, x_2552.z);
            u_xlat9.x = x_2554;
            let x_2557 : f32 = u_xlat17.y;
            let x_2559 : f32 = u_xlat9.x;
            let x_2561 : f32 = u_xlat77;
            u_xlat77 = ((x_2557 * x_2559) + x_2561);
            let x_2564 : vec4<f32> = u_xlat12;
            let x_2565 : vec2<f32> = vec2<f32>(x_2564.z, x_2564.w);
            let x_2567 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2565.x, x_2565.y, x_2567);
            let x_2574 : vec3<f32> = txVec40;
            let x_2576 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2574.xy, x_2574.z);
            u_xlat9.x = x_2576;
            let x_2579 : f32 = u_xlat17.z;
            let x_2581 : f32 = u_xlat9.x;
            let x_2583 : f32 = u_xlat77;
            u_xlat77 = ((x_2579 * x_2581) + x_2583);
            let x_2586 : vec4<f32> = u_xlat11;
            let x_2587 : vec2<f32> = vec2<f32>(x_2586.x, x_2586.y);
            let x_2589 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2587.x, x_2587.y, x_2589);
            let x_2596 : vec3<f32> = txVec41;
            let x_2598 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2596.xy, x_2596.z);
            u_xlat9.x = x_2598;
            let x_2601 : f32 = u_xlat17.w;
            let x_2603 : f32 = u_xlat9.x;
            let x_2605 : f32 = u_xlat77;
            u_xlat77 = ((x_2601 * x_2603) + x_2605);
            let x_2608 : vec4<f32> = u_xlat11;
            let x_2609 : vec2<f32> = vec2<f32>(x_2608.z, x_2608.w);
            let x_2611 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2609.x, x_2609.y, x_2611);
            let x_2618 : vec3<f32> = txVec42;
            let x_2620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2618.xy, x_2618.z);
            u_xlat9.x = x_2620;
            let x_2622 : f32 = u_xlat76;
            let x_2624 : f32 = u_xlat9.x;
            let x_2626 : f32 = u_xlat77;
            u_xlat75 = ((x_2622 * x_2624) + x_2626);
          } else {
            let x_2629 : vec4<f32> = u_xlat8;
            let x_2632 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2635 : vec2<f32> = ((vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(x_2632.z, x_2632.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2636 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2635.x, x_2635.y, x_2636.z, x_2636.w);
            let x_2638 : vec4<f32> = u_xlat9;
            let x_2640 : vec2<f32> = floor(vec2<f32>(x_2638.x, x_2638.y));
            let x_2641 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2640.x, x_2640.y, x_2641.z, x_2641.w);
            let x_2643 : vec4<f32> = u_xlat8;
            let x_2646 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2649 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2643.x, x_2643.y) * vec2<f32>(x_2646.z, x_2646.w)) + -(vec2<f32>(x_2649.x, x_2649.y)));
            let x_2653 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2653.x, x_2653.x, x_2653.y, x_2653.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2656 : vec4<f32> = u_xlat10;
            let x_2658 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2656.x, x_2656.x, x_2656.z, x_2656.z) * vec4<f32>(x_2658.x, x_2658.x, x_2658.z, x_2658.z));
            let x_2661 : vec4<f32> = u_xlat11;
            let x_2663 : vec2<f32> = (vec2<f32>(x_2661.y, x_2661.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2664 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2664.x, x_2663.x, x_2664.z, x_2663.y);
            let x_2666 : vec4<f32> = u_xlat11;
            let x_2669 : vec2<f32> = u_xlat55;
            let x_2671 : vec2<f32> = ((vec2<f32>(x_2666.x, x_2666.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2669));
            let x_2672 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2671.x, x_2672.y, x_2671.y, x_2672.w);
            let x_2674 : vec2<f32> = u_xlat55;
            let x_2676 : vec2<f32> = (-(x_2674) + vec2<f32>(1.0f, 1.0f));
            let x_2677 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2676.x, x_2676.y, x_2677.z, x_2677.w);
            let x_2679 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2679, vec2<f32>(0.0f, 0.0f));
            let x_2681 : vec2<f32> = u_xlat57;
            let x_2683 : vec2<f32> = u_xlat57;
            let x_2685 : vec4<f32> = u_xlat11;
            let x_2687 : vec2<f32> = ((-(x_2681) * x_2683) + vec2<f32>(x_2685.x, x_2685.y));
            let x_2688 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2687.x, x_2687.y, x_2688.z, x_2688.w);
            let x_2690 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2690, vec2<f32>(0.0f, 0.0f));
            let x_2693 : vec2<f32> = u_xlat57;
            let x_2695 : vec2<f32> = u_xlat57;
            let x_2697 : vec4<f32> = u_xlat10;
            let x_2699 : vec2<f32> = ((-(x_2693) * x_2695) + vec2<f32>(x_2697.y, x_2697.w));
            let x_2700 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2699.x, x_2700.y, x_2699.y);
            let x_2702 : vec4<f32> = u_xlat11;
            let x_2704 : vec2<f32> = (vec2<f32>(x_2702.x, x_2702.y) + vec2<f32>(2.0f, 2.0f));
            let x_2705 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2704.x, x_2704.y, x_2705.z, x_2705.w);
            let x_2707 : vec3<f32> = u_xlat33;
            let x_2709 : vec2<f32> = (vec2<f32>(x_2707.x, x_2707.z) + vec2<f32>(2.0f, 2.0f));
            let x_2710 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2710.x, x_2709.x, x_2710.z, x_2709.y);
            let x_2713 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2713 * 0.08163200318813323975f);
            let x_2716 : vec4<f32> = u_xlat10;
            let x_2718 : vec3<f32> = (vec3<f32>(x_2716.z, x_2716.x, x_2716.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2719 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
            let x_2721 : vec4<f32> = u_xlat11;
            let x_2723 : vec2<f32> = (vec2<f32>(x_2721.x, x_2721.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2724 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2723.x, x_2723.y, x_2724.z, x_2724.w);
            let x_2727 : f32 = u_xlat14.y;
            u_xlat13.x = x_2727;
            let x_2729 : vec2<f32> = u_xlat55;
            let x_2732 : vec2<f32> = ((vec2<f32>(x_2729.x, x_2729.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2733 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2733.x, x_2732.x, x_2733.z, x_2732.y);
            let x_2735 : vec2<f32> = u_xlat55;
            let x_2738 : vec2<f32> = ((vec2<f32>(x_2735.x, x_2735.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2739 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2738.x, x_2739.y, x_2738.y, x_2739.w);
            let x_2742 : f32 = u_xlat10.x;
            u_xlat11.y = x_2742;
            let x_2745 : f32 = u_xlat12.y;
            u_xlat11.w = x_2745;
            let x_2747 : vec4<f32> = u_xlat11;
            let x_2748 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2747 + x_2748);
            let x_2750 : vec2<f32> = u_xlat55;
            let x_2753 : vec2<f32> = ((vec2<f32>(x_2750.y, x_2750.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2754 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2754.x, x_2753.x, x_2754.z, x_2753.y);
            let x_2756 : vec2<f32> = u_xlat55;
            let x_2759 : vec2<f32> = ((vec2<f32>(x_2756.y, x_2756.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2760 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2759.x, x_2760.y, x_2759.y, x_2760.w);
            let x_2763 : f32 = u_xlat10.y;
            u_xlat12.y = x_2763;
            let x_2765 : vec4<f32> = u_xlat12;
            let x_2766 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2765 + x_2766);
            let x_2768 : vec4<f32> = u_xlat11;
            let x_2769 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2768 / x_2769);
            let x_2771 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2771 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2773 : vec4<f32> = u_xlat12;
            let x_2774 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2773 / x_2774);
            let x_2776 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2776 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2778 : vec4<f32> = u_xlat11;
            let x_2781 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2778.w, x_2778.x, x_2778.y, x_2778.z) * vec4<f32>(x_2781.x, x_2781.x, x_2781.x, x_2781.x));
            let x_2784 : vec4<f32> = u_xlat12;
            let x_2787 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2784.x, x_2784.w, x_2784.y, x_2784.z) * vec4<f32>(x_2787.y, x_2787.y, x_2787.y, x_2787.y));
            let x_2790 : vec4<f32> = u_xlat11;
            let x_2791 : vec3<f32> = vec3<f32>(x_2790.y, x_2790.z, x_2790.w);
            let x_2792 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2791.x, x_2792.y, x_2791.y, x_2791.z);
            let x_2795 : f32 = u_xlat12.x;
            u_xlat14.y = x_2795;
            let x_2797 : vec4<f32> = u_xlat9;
            let x_2800 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2803 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y) * vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y)) + vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2803.y));
            let x_2806 : vec4<f32> = u_xlat9;
            let x_2809 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2812 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(x_2809.x, x_2809.y)) + vec2<f32>(x_2812.w, x_2812.y));
            let x_2816 : f32 = u_xlat14.y;
            u_xlat11.y = x_2816;
            let x_2819 : f32 = u_xlat12.z;
            u_xlat14.y = x_2819;
            let x_2821 : vec4<f32> = u_xlat9;
            let x_2824 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2827 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2821.x, x_2821.y, x_2821.x, x_2821.y) * vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y)) + vec4<f32>(x_2827.x, x_2827.y, x_2827.z, x_2827.y));
            let x_2830 : vec4<f32> = u_xlat9;
            let x_2833 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2836 : vec4<f32> = u_xlat14;
            let x_2838 : vec2<f32> = ((vec2<f32>(x_2830.x, x_2830.y) * vec2<f32>(x_2833.x, x_2833.y)) + vec2<f32>(x_2836.w, x_2836.y));
            let x_2839 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2838.x, x_2838.y, x_2839.z, x_2839.w);
            let x_2842 : f32 = u_xlat14.y;
            u_xlat11.z = x_2842;
            let x_2845 : vec4<f32> = u_xlat9;
            let x_2848 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2851 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2845.x, x_2845.y, x_2845.x, x_2845.y) * vec4<f32>(x_2848.x, x_2848.y, x_2848.x, x_2848.y)) + vec4<f32>(x_2851.x, x_2851.y, x_2851.x, x_2851.z));
            let x_2855 : f32 = u_xlat12.w;
            u_xlat14.y = x_2855;
            let x_2858 : vec4<f32> = u_xlat9;
            let x_2861 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2864 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2858.x, x_2858.y, x_2858.x, x_2858.y) * vec4<f32>(x_2861.x, x_2861.y, x_2861.x, x_2861.y)) + vec4<f32>(x_2864.x, x_2864.y, x_2864.z, x_2864.y));
            let x_2868 : vec4<f32> = u_xlat9;
            let x_2871 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2874 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_2868.x, x_2868.y) * vec2<f32>(x_2871.x, x_2871.y)) + vec2<f32>(x_2874.w, x_2874.y));
            let x_2878 : f32 = u_xlat14.y;
            u_xlat11.w = x_2878;
            let x_2881 : vec4<f32> = u_xlat9;
            let x_2884 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2887 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_2881.x, x_2881.y) * vec2<f32>(x_2884.x, x_2884.y)) + vec2<f32>(x_2887.x, x_2887.w));
            let x_2890 : vec4<f32> = u_xlat14;
            let x_2891 : vec3<f32> = vec3<f32>(x_2890.x, x_2890.z, x_2890.w);
            let x_2892 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2891.x, x_2892.y, x_2891.y, x_2891.z);
            let x_2894 : vec4<f32> = u_xlat9;
            let x_2897 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2900 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_2894.x, x_2894.y, x_2894.x, x_2894.y) * vec4<f32>(x_2897.x, x_2897.y, x_2897.x, x_2897.y)) + vec4<f32>(x_2900.x, x_2900.y, x_2900.z, x_2900.y));
            let x_2903 : vec4<f32> = u_xlat9;
            let x_2906 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2909 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_2903.x, x_2903.y) * vec2<f32>(x_2906.x, x_2906.y)) + vec2<f32>(x_2909.w, x_2909.y));
            let x_2913 : f32 = u_xlat11.x;
            u_xlat12.x = x_2913;
            let x_2915 : vec4<f32> = u_xlat9;
            let x_2918 : vec4<f32> = x_328.x_AdditionalShadowmapSize;
            let x_2921 : vec4<f32> = u_xlat12;
            let x_2923 : vec2<f32> = ((vec2<f32>(x_2915.x, x_2915.y) * vec2<f32>(x_2918.x, x_2918.y)) + vec2<f32>(x_2921.x, x_2921.y));
            let x_2924 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2923.x, x_2923.y, x_2924.z, x_2924.w);
            let x_2927 : vec4<f32> = u_xlat10;
            let x_2929 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2927.x, x_2927.x, x_2927.x, x_2927.x) * x_2929);
            let x_2932 : vec4<f32> = u_xlat10;
            let x_2934 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_2932.y, x_2932.y, x_2932.y, x_2932.y) * x_2934);
            let x_2937 : vec4<f32> = u_xlat10;
            let x_2939 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_2937.z, x_2937.z, x_2937.z, x_2937.z) * x_2939);
            let x_2941 : vec4<f32> = u_xlat10;
            let x_2943 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_2941.w, x_2941.w, x_2941.w, x_2941.w) * x_2943);
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
            let x_2949 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec43;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat76 = x_2958;
            let x_2960 : vec4<f32> = u_xlat15;
            let x_2961 : vec2<f32> = vec2<f32>(x_2960.z, x_2960.w);
            let x_2963 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_2961.x, x_2961.y, x_2963);
            let x_2970 : vec3<f32> = txVec44;
            let x_2972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2970.xy, x_2970.z);
            u_xlat77 = x_2972;
            let x_2973 : f32 = u_xlat77;
            let x_2975 : f32 = u_xlat20.y;
            u_xlat77 = (x_2973 * x_2975);
            let x_2978 : f32 = u_xlat20.x;
            let x_2979 : f32 = u_xlat76;
            let x_2981 : f32 = u_xlat77;
            u_xlat76 = ((x_2978 * x_2979) + x_2981);
            let x_2984 : vec2<f32> = u_xlat55;
            let x_2986 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
            let x_2993 : vec3<f32> = txVec45;
            let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
            u_xlat77 = x_2995;
            let x_2997 : f32 = u_xlat20.z;
            let x_2998 : f32 = u_xlat77;
            let x_3000 : f32 = u_xlat76;
            u_xlat76 = ((x_2997 * x_2998) + x_3000);
            let x_3003 : vec4<f32> = u_xlat18;
            let x_3004 : vec2<f32> = vec2<f32>(x_3003.x, x_3003.y);
            let x_3006 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3004.x, x_3004.y, x_3006);
            let x_3013 : vec3<f32> = txVec46;
            let x_3015 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3013.xy, x_3013.z);
            u_xlat77 = x_3015;
            let x_3017 : f32 = u_xlat20.w;
            let x_3018 : f32 = u_xlat77;
            let x_3020 : f32 = u_xlat76;
            u_xlat76 = ((x_3017 * x_3018) + x_3020);
            let x_3023 : vec4<f32> = u_xlat16;
            let x_3024 : vec2<f32> = vec2<f32>(x_3023.x, x_3023.y);
            let x_3026 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
            let x_3033 : vec3<f32> = txVec47;
            let x_3035 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
            u_xlat77 = x_3035;
            let x_3037 : f32 = u_xlat21.x;
            let x_3038 : f32 = u_xlat77;
            let x_3040 : f32 = u_xlat76;
            u_xlat76 = ((x_3037 * x_3038) + x_3040);
            let x_3043 : vec4<f32> = u_xlat16;
            let x_3044 : vec2<f32> = vec2<f32>(x_3043.z, x_3043.w);
            let x_3046 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec48;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat77 = x_3055;
            let x_3057 : f32 = u_xlat21.y;
            let x_3058 : f32 = u_xlat77;
            let x_3060 : f32 = u_xlat76;
            u_xlat76 = ((x_3057 * x_3058) + x_3060);
            let x_3063 : vec4<f32> = u_xlat17;
            let x_3064 : vec2<f32> = vec2<f32>(x_3063.x, x_3063.y);
            let x_3066 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3064.x, x_3064.y, x_3066);
            let x_3073 : vec3<f32> = txVec49;
            let x_3075 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3073.xy, x_3073.z);
            u_xlat77 = x_3075;
            let x_3077 : f32 = u_xlat21.z;
            let x_3078 : f32 = u_xlat77;
            let x_3080 : f32 = u_xlat76;
            u_xlat76 = ((x_3077 * x_3078) + x_3080);
            let x_3083 : vec4<f32> = u_xlat18;
            let x_3084 : vec2<f32> = vec2<f32>(x_3083.z, x_3083.w);
            let x_3086 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3084.x, x_3084.y, x_3086);
            let x_3093 : vec3<f32> = txVec50;
            let x_3095 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3093.xy, x_3093.z);
            u_xlat77 = x_3095;
            let x_3097 : f32 = u_xlat21.w;
            let x_3098 : f32 = u_xlat77;
            let x_3100 : f32 = u_xlat76;
            u_xlat76 = ((x_3097 * x_3098) + x_3100);
            let x_3103 : vec4<f32> = u_xlat19;
            let x_3104 : vec2<f32> = vec2<f32>(x_3103.x, x_3103.y);
            let x_3106 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3104.x, x_3104.y, x_3106);
            let x_3113 : vec3<f32> = txVec51;
            let x_3115 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3113.xy, x_3113.z);
            u_xlat77 = x_3115;
            let x_3117 : f32 = u_xlat22.x;
            let x_3118 : f32 = u_xlat77;
            let x_3120 : f32 = u_xlat76;
            u_xlat76 = ((x_3117 * x_3118) + x_3120);
            let x_3123 : vec4<f32> = u_xlat19;
            let x_3124 : vec2<f32> = vec2<f32>(x_3123.z, x_3123.w);
            let x_3126 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec52;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat77 = x_3135;
            let x_3137 : f32 = u_xlat22.y;
            let x_3138 : f32 = u_xlat77;
            let x_3140 : f32 = u_xlat76;
            u_xlat76 = ((x_3137 * x_3138) + x_3140);
            let x_3143 : vec2<f32> = u_xlat34;
            let x_3145 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
            let x_3152 : vec3<f32> = txVec53;
            let x_3154 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
            u_xlat77 = x_3154;
            let x_3156 : f32 = u_xlat22.z;
            let x_3157 : f32 = u_xlat77;
            let x_3159 : f32 = u_xlat76;
            u_xlat76 = ((x_3156 * x_3157) + x_3159);
            let x_3162 : vec2<f32> = u_xlat63;
            let x_3164 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3162.x, x_3162.y, x_3164);
            let x_3171 : vec3<f32> = txVec54;
            let x_3173 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3171.xy, x_3171.z);
            u_xlat77 = x_3173;
            let x_3175 : f32 = u_xlat22.w;
            let x_3176 : f32 = u_xlat77;
            let x_3178 : f32 = u_xlat76;
            u_xlat76 = ((x_3175 * x_3176) + x_3178);
            let x_3181 : vec4<f32> = u_xlat14;
            let x_3182 : vec2<f32> = vec2<f32>(x_3181.x, x_3181.y);
            let x_3184 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3182.x, x_3182.y, x_3184);
            let x_3191 : vec3<f32> = txVec55;
            let x_3193 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3191.xy, x_3191.z);
            u_xlat77 = x_3193;
            let x_3195 : f32 = u_xlat10.x;
            let x_3196 : f32 = u_xlat77;
            let x_3198 : f32 = u_xlat76;
            u_xlat76 = ((x_3195 * x_3196) + x_3198);
            let x_3201 : vec4<f32> = u_xlat14;
            let x_3202 : vec2<f32> = vec2<f32>(x_3201.z, x_3201.w);
            let x_3204 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
            let x_3211 : vec3<f32> = txVec56;
            let x_3213 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
            u_xlat77 = x_3213;
            let x_3215 : f32 = u_xlat10.y;
            let x_3216 : f32 = u_xlat77;
            let x_3218 : f32 = u_xlat76;
            u_xlat76 = ((x_3215 * x_3216) + x_3218);
            let x_3221 : vec2<f32> = u_xlat58;
            let x_3223 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec57;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat77 = x_3232;
            let x_3234 : f32 = u_xlat10.z;
            let x_3235 : f32 = u_xlat77;
            let x_3237 : f32 = u_xlat76;
            u_xlat76 = ((x_3234 * x_3235) + x_3237);
            let x_3240 : vec4<f32> = u_xlat9;
            let x_3241 : vec2<f32> = vec2<f32>(x_3240.x, x_3240.y);
            let x_3243 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3241.x, x_3241.y, x_3243);
            let x_3250 : vec3<f32> = txVec58;
            let x_3252 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3250.xy, x_3250.z);
            u_xlat77 = x_3252;
            let x_3254 : f32 = u_xlat10.w;
            let x_3255 : f32 = u_xlat77;
            let x_3257 : f32 = u_xlat76;
            u_xlat75 = ((x_3254 * x_3255) + x_3257);
          }
        }
      } else {
        let x_3261 : vec4<f32> = u_xlat8;
        let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
        let x_3264 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
        let x_3271 : vec3<f32> = txVec59;
        let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
        u_xlat75 = x_3273;
      }
      let x_3274 : i32 = u_xlati29;
      let x_3276 : f32 = x_328.x_AdditionalShadowParams[x_3274].x;
      u_xlat76 = (1.0f + -(x_3276));
      let x_3279 : f32 = u_xlat75;
      let x_3280 : i32 = u_xlati29;
      let x_3282 : f32 = x_328.x_AdditionalShadowParams[x_3280].x;
      let x_3284 : f32 = u_xlat76;
      u_xlat75 = ((x_3279 * x_3282) + x_3284);
      let x_3287 : f32 = u_xlat8.z;
      u_xlatb76 = (0.0f >= x_3287);
      let x_3290 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_3290 >= 1.0f);
      let x_3293 : bool = u_xlatb76;
      let x_3295 : bool = u_xlatb8.x;
      u_xlatb76 = (x_3293 | x_3295);
      let x_3297 : bool = u_xlatb76;
      let x_3298 : f32 = u_xlat75;
      u_xlat75 = select(x_3298, 1.0f, x_3297);
    } else {
      u_xlat75 = 1.0f;
    }
    let x_3301 : f32 = u_xlat75;
    u_xlat76 = (-(x_3301) + 1.0f);
    let x_3305 : f32 = u_xlat4.x;
    let x_3306 : f32 = u_xlat76;
    let x_3308 : f32 = u_xlat75;
    u_xlat75 = ((x_3305 * x_3306) + x_3308);
    let x_3310 : f32 = u_xlat75;
    let x_3312 : f32 = u_xlat52.x;
    u_xlat52.x = (x_3310 * x_3312);
    let x_3315 : vec2<f32> = u_xlat52;
    let x_3317 : i32 = u_xlati29;
    let x_3319 : vec4<f32> = x_1848.x_AdditionalLightsColor[x_3317];
    u_xlat29 = (vec3<f32>(x_3315.x, x_3315.x, x_3315.x) * vec3<f32>(x_3319.x, x_3319.y, x_3319.z));
    let x_3322 : vec4<f32> = u_xlat2;
    let x_3324 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_3322.x, x_3322.y, x_3322.z), vec3<f32>(x_3324.x, x_3324.y, x_3324.z));
    let x_3327 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3327, 0.0f, 1.0f);
    let x_3329 : vec3<f32> = u_xlat29;
    let x_3330 : f32 = u_xlat76;
    let x_3332 : vec3<f32> = (x_3329 * vec3<f32>(x_3330, x_3330, x_3330));
    let x_3333 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3332.x, x_3332.y, x_3332.z, x_3333.w);
    let x_3335 : vec3<f32> = u_xlat1;
    let x_3336 : f32 = u_xlat70;
    let x_3339 : vec4<f32> = u_xlat7;
    let x_3341 : vec3<f32> = ((x_3335 * vec3<f32>(x_3336, x_3336, x_3336)) + vec3<f32>(x_3339.x, x_3339.y, x_3339.z));
    let x_3342 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3341.x, x_3341.y, x_3341.z, x_3342.w);
    let x_3344 : vec4<f32> = u_xlat7;
    let x_3346 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_3344.x, x_3344.y, x_3344.z), vec3<f32>(x_3346.x, x_3346.y, x_3346.z));
    let x_3349 : f32 = u_xlat76;
    u_xlat76 = max(x_3349, 1.17549435e-38f);
    let x_3351 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_3351);
    let x_3353 : f32 = u_xlat76;
    let x_3355 : vec4<f32> = u_xlat7;
    let x_3357 : vec3<f32> = (vec3<f32>(x_3353, x_3353, x_3353) * vec3<f32>(x_3355.x, x_3355.y, x_3355.z));
    let x_3358 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3357.x, x_3357.y, x_3357.z, x_3358.w);
    let x_3360 : vec4<f32> = u_xlat2;
    let x_3362 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_3360.x, x_3360.y, x_3360.z), vec3<f32>(x_3362.x, x_3362.y, x_3362.z));
    let x_3367 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_3367, 0.0f, 1.0f);
    let x_3371 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_3371);
    let x_3374 : f32 = u_xlat71;
    let x_3376 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3374 * x_3376);
    let x_3380 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_3380);
    let x_3383 : vec4<f32> = u_xlat7;
    let x_3386 : vec4<f32> = x_57.x_SpecColor;
    let x_3388 : vec3<f32> = (vec3<f32>(x_3383.x, x_3383.x, x_3383.x) * vec3<f32>(x_3386.x, x_3386.y, x_3386.z));
    let x_3389 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3388.x, x_3388.y, x_3388.z, x_3389.w);
    let x_3391 : vec3<f32> = u_xlat29;
    let x_3392 : vec4<f32> = u_xlat7;
    u_xlat29 = (x_3391 * vec3<f32>(x_3392.x, x_3392.y, x_3392.z));
    let x_3395 : vec4<f32> = u_xlat8;
    let x_3397 : vec4<f32> = u_xlat0;
    let x_3400 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3395.x, x_3395.y, x_3395.z) * vec3<f32>(x_3397.y, x_3397.z, x_3397.w)) + x_3400);
    let x_3402 : vec3<f32> = u_xlat28;
    let x_3403 : vec3<f32> = u_xlat29;
    u_xlat28 = (x_3402 + x_3403);

    continuing {
      let x_3405 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3405 + bitcast<u32>(1i));
    }
  }
  let x_3408 : vec3<f32> = u_xlat26;
  let x_3409 : vec4<f32> = u_xlat0;
  let x_3412 : vec3<f32> = u_xlat27;
  u_xlat23 = ((x_3408 * vec3<f32>(x_3409.y, x_3409.z, x_3409.w)) + x_3412);
  let x_3414 : vec3<f32> = u_xlat28;
  let x_3415 : vec3<f32> = u_xlat23;
  u_xlat23 = (x_3414 + x_3415);
  let x_3417 : f32 = u_xlat3;
  let x_3418 : f32 = u_xlat3;
  u_xlat1.x = (x_3417 * -(x_3418));
  let x_3423 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3423);
  let x_3426 : vec3<f32> = u_xlat23;
  let x_3428 : vec4<f32> = x_45.unity_FogColor;
  u_xlat23 = (x_3426 + -(vec3<f32>(x_3428.x, x_3428.y, x_3428.z)));
  let x_3434 : vec3<f32> = u_xlat1;
  let x_3436 : vec3<f32> = u_xlat23;
  let x_3439 : vec4<f32> = x_45.unity_FogColor;
  let x_3441 : vec3<f32> = ((vec3<f32>(x_3434.x, x_3434.x, x_3434.x) * x_3436) + vec3<f32>(x_3439.x, x_3439.y, x_3439.z));
  let x_3442 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3441.x, x_3441.y, x_3441.z, x_3442.w);
  let x_3446 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3446 == 1.0f);
  let x_3448 : bool = u_xlatb23;
  if (x_3448) {
    let x_3453 : f32 = u_xlat0.x;
    x_3449 = x_3453;
  } else {
    x_3449 = 1.0f;
  }
  let x_3455 : f32 = x_3449;
  SV_Target0.w = x_3455;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


