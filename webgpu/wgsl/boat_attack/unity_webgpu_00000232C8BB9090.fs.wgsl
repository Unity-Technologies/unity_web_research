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

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb23 : bool;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlat24 : vec3<f32>;

var<private> u_xlatb67 : bool;

@group(1) @binding(4) var<uniform> x_278 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb3 : bool;

var<private> u_xlat47 : vec2<f32>;

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

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatu67 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1733 : AdditionalLights;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlati28 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat73 : f32;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> u_xlat22 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlatu70 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_102 : f32;
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
  var x_1896 : f32;
  var x_1905 : f32;
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
  var x_3215 : f32;
  var x_3325 : f32;
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
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_45.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : f32 = x_45.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_79.x, x_79.y), x_82);
  u_xlat1.x = x_83.w;
  let x_97 : f32 = x_94.unity_LODFade.x;
  u_xlatb23 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb23;
  if (x_100) {
    let x_106 : f32 = u_xlat1.x;
    x_102 = abs(x_106);
  } else {
    let x_110 : f32 = u_xlat1.x;
    x_102 = -(abs(x_110));
  }
  let x_113 : f32 = x_102;
  u_xlat1.x = x_113;
  let x_116 : f32 = u_xlat1.x;
  let x_119 : f32 = x_94.unity_LODFade.x;
  u_xlat1.x = (-(x_116) + x_119);
  let x_124 : f32 = u_xlat1.x;
  u_xlatb1 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb1;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_141);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = vs_TEXCOORD2;
  let x_147 : vec3<f32> = (vec3<f32>(x_144.x, x_144.x, x_144.x) * x_146);
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_154 : f32 = vs_TEXCOORD1.y;
  let x_157 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat2 = (x_154 * x_157);
  let x_160 : f32 = x_45.unity_MatrixV[0i].z;
  let x_162 : f32 = vs_TEXCOORD1.x;
  let x_164 : f32 = u_xlat2;
  u_xlat2 = ((x_160 * x_162) + x_164);
  let x_167 : f32 = x_45.unity_MatrixV[2i].z;
  let x_169 : f32 = vs_TEXCOORD1.z;
  let x_171 : f32 = u_xlat2;
  u_xlat2 = ((x_167 * x_169) + x_171);
  let x_173 : f32 = u_xlat2;
  let x_176 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat2 = (x_173 + x_176);
  let x_178 : f32 = u_xlat2;
  let x_182 : f32 = x_45.x_ProjectionParams.y;
  u_xlat2 = (-(x_178) + -(x_182));
  let x_185 : f32 = u_xlat2;
  u_xlat2 = max(x_185, 0.0f);
  let x_187 : f32 = u_xlat2;
  let x_190 : f32 = x_45.unity_FogParams.x;
  u_xlat2 = (x_187 * x_190);
  u_xlat1.w = 1.0f;
  let x_196 : vec4<f32> = x_94.unity_SHAr;
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_196, x_197);
  let x_202 : vec4<f32> = x_94.unity_SHAg;
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_202, x_203);
  let x_208 : vec4<f32> = x_94.unity_SHAb;
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_208, x_209);
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_213.y, x_213.z, x_213.z, x_213.x) * vec4<f32>(x_215.x, x_215.y, x_215.z, x_215.z));
  let x_221 : vec4<f32> = x_94.unity_SHBr;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_221, x_222);
  let x_227 : vec4<f32> = x_94.unity_SHBg;
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_227, x_228);
  let x_233 : vec4<f32> = x_94.unity_SHBb;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_233, x_234);
  let x_239 : f32 = u_xlat1.y;
  let x_241 : f32 = u_xlat1.y;
  u_xlat67 = (x_239 * x_241);
  let x_244 : f32 = u_xlat1.x;
  let x_246 : f32 = u_xlat1.x;
  let x_248 : f32 = u_xlat67;
  u_xlat67 = ((x_244 * x_246) + -(x_248));
  let x_255 : vec4<f32> = x_94.unity_SHC;
  let x_257 : f32 = u_xlat67;
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat24 = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257, x_257, x_257)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec3<f32> = u_xlat24;
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat24 = (x_263 + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec3<f32> = u_xlat24;
  u_xlat24 = max(x_267, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_280 : f32 = x_278.x_MainLightShadowParams.y;
  u_xlatb67 = (0.0f < x_280);
  let x_282 : bool = u_xlatb67;
  if (x_282) {
    let x_286 : f32 = x_278.x_MainLightShadowParams.y;
    u_xlatb67 = (x_286 == 1.0f);
    let x_288 : bool = u_xlatb67;
    if (x_288) {
      let x_292 : vec4<f32> = vs_TEXCOORD6;
      let x_295 : vec4<f32> = x_278.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_292.x, x_292.y, x_292.x, x_292.y) + x_295);
      let x_299 : vec4<f32> = u_xlat3;
      let x_300 : vec2<f32> = vec2<f32>(x_299.x, x_299.y);
      let x_302 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_300.x, x_300.y, x_302);
      let x_314 : vec3<f32> = txVec0;
      let x_316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_314.xy, x_314.z);
      u_xlat4.x = x_316;
      let x_319 : vec4<f32> = u_xlat3;
      let x_320 : vec2<f32> = vec2<f32>(x_319.z, x_319.w);
      let x_322 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_320.x, x_320.y, x_322);
      let x_329 : vec3<f32> = txVec1;
      let x_331 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_329.xy, x_329.z);
      u_xlat4.y = x_331;
      let x_333 : vec4<f32> = vs_TEXCOORD6;
      let x_337 : vec4<f32> = x_278.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_333.x, x_333.y, x_333.x, x_333.y) + x_337);
      let x_340 : vec4<f32> = u_xlat3;
      let x_341 : vec2<f32> = vec2<f32>(x_340.x, x_340.y);
      let x_343 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_341.x, x_341.y, x_343);
      let x_350 : vec3<f32> = txVec2;
      let x_352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_350.xy, x_350.z);
      u_xlat4.z = x_352;
      let x_355 : vec4<f32> = u_xlat3;
      let x_356 : vec2<f32> = vec2<f32>(x_355.z, x_355.w);
      let x_358 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_356.x, x_356.y, x_358);
      let x_365 : vec3<f32> = txVec3;
      let x_367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_365.xy, x_365.z);
      u_xlat4.w = x_367;
      let x_369 : vec4<f32> = u_xlat4;
      u_xlat67 = dot(x_369, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_376 : f32 = x_278.x_MainLightShadowParams.y;
      u_xlatb3 = (x_376 == 2.0f);
      let x_379 : bool = u_xlatb3;
      if (x_379) {
        let x_382 : vec4<f32> = vs_TEXCOORD6;
        let x_385 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_390 : vec2<f32> = ((vec2<f32>(x_382.x, x_382.y) * vec2<f32>(x_385.z, x_385.w)) + vec2<f32>(0.5f, 0.5f));
        let x_391 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
        let x_393 : vec4<f32> = u_xlat3;
        let x_395 : vec2<f32> = floor(vec2<f32>(x_393.x, x_393.y));
        let x_396 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
        let x_400 : vec4<f32> = vs_TEXCOORD6;
        let x_403 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_406 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_400.x, x_400.y) * vec2<f32>(x_403.z, x_403.w)) + -(vec2<f32>(x_406.x, x_406.y)));
        let x_410 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_410.x, x_410.x, x_410.y, x_410.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_414 : vec4<f32> = u_xlat4;
        let x_416 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_414.x, x_414.x, x_414.z, x_414.z) * vec4<f32>(x_416.x, x_416.x, x_416.z, x_416.z));
        let x_419 : vec4<f32> = u_xlat5;
        let x_423 : vec2<f32> = (vec2<f32>(x_419.y, x_419.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_424 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_423.x, x_424.y, x_423.y, x_424.w);
        let x_426 : vec4<f32> = u_xlat5;
        let x_429 : vec2<f32> = u_xlat47;
        let x_431 : vec2<f32> = ((vec2<f32>(x_426.x, x_426.z) * vec2<f32>(0.5f, 0.5f)) + -(x_429));
        let x_432 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec2<f32> = u_xlat47;
        u_xlat49 = (-(x_435) + vec2<f32>(1.0f, 1.0f));
        let x_440 : vec2<f32> = u_xlat47;
        let x_442 : vec2<f32> = min(x_440, vec2<f32>(0.0f, 0.0f));
        let x_443 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
        let x_445 : vec4<f32> = u_xlat6;
        let x_448 : vec4<f32> = u_xlat6;
        let x_451 : vec2<f32> = u_xlat49;
        let x_452 : vec2<f32> = ((-(vec2<f32>(x_445.x, x_445.y)) * vec2<f32>(x_448.x, x_448.y)) + x_451);
        let x_453 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec2<f32> = u_xlat47;
        u_xlat47 = max(x_455, vec2<f32>(0.0f, 0.0f));
        let x_457 : vec2<f32> = u_xlat47;
        let x_459 : vec2<f32> = u_xlat47;
        let x_461 : vec4<f32> = u_xlat4;
        u_xlat47 = ((-(x_457) * x_459) + vec2<f32>(x_461.y, x_461.w));
        let x_464 : vec4<f32> = u_xlat6;
        let x_466 : vec2<f32> = (vec2<f32>(x_464.x, x_464.y) + vec2<f32>(1.0f, 1.0f));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_469 : vec2<f32> = u_xlat47;
        u_xlat47 = (x_469 + vec2<f32>(1.0f, 1.0f));
        let x_472 : vec4<f32> = u_xlat5;
        let x_476 : vec2<f32> = (vec2<f32>(x_472.x, x_472.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_477 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_479 : vec2<f32> = u_xlat49;
        let x_480 : vec2<f32> = (x_479 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_481 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_483 : vec4<f32> = u_xlat6;
        let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_486 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_489 : vec2<f32> = u_xlat47;
        let x_490 : vec2<f32> = (x_489 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_491 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat4;
        u_xlat47 = (vec2<f32>(x_493.y, x_493.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_497 : f32 = u_xlat6.x;
        u_xlat7.z = x_497;
        let x_500 : f32 = u_xlat47.x;
        u_xlat7.w = x_500;
        let x_503 : f32 = u_xlat8.x;
        u_xlat5.z = x_503;
        let x_506 : f32 = u_xlat4.x;
        u_xlat5.w = x_506;
        let x_509 : vec4<f32> = u_xlat5;
        let x_511 : vec4<f32> = u_xlat7;
        u_xlat9 = (vec4<f32>(x_509.z, x_509.w, x_509.x, x_509.z) + vec4<f32>(x_511.z, x_511.w, x_511.x, x_511.z));
        let x_515 : f32 = u_xlat7.y;
        u_xlat6.z = x_515;
        let x_518 : f32 = u_xlat47.y;
        u_xlat6.w = x_518;
        let x_521 : f32 = u_xlat5.y;
        u_xlat8.z = x_521;
        let x_524 : f32 = u_xlat4.z;
        u_xlat8.w = x_524;
        let x_526 : vec4<f32> = u_xlat6;
        let x_528 : vec4<f32> = u_xlat8;
        let x_530 : vec3<f32> = (vec3<f32>(x_526.z, x_526.y, x_526.w) + vec3<f32>(x_528.z, x_528.y, x_528.w));
        let x_531 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
        let x_533 : vec4<f32> = u_xlat5;
        let x_535 : vec4<f32> = u_xlat9;
        let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.z, x_533.w) / vec3<f32>(x_535.z, x_535.w, x_535.y));
        let x_538 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
        let x_540 : vec4<f32> = u_xlat5;
        let x_546 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_547 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
        let x_549 : vec4<f32> = u_xlat8;
        let x_551 : vec4<f32> = u_xlat4;
        let x_553 : vec3<f32> = (vec3<f32>(x_549.z, x_549.y, x_549.w) / vec3<f32>(x_551.x, x_551.y, x_551.z));
        let x_554 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat6;
        let x_558 : vec3<f32> = (vec3<f32>(x_556.x, x_556.y, x_556.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat5;
        let x_564 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_566 : vec3<f32> = (vec3<f32>(x_561.y, x_561.x, x_561.z) * vec3<f32>(x_564.x, x_564.x, x_564.x));
        let x_567 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat6;
        let x_572 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_572.y, x_572.y, x_572.y));
        let x_575 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
        let x_578 : f32 = u_xlat6.x;
        u_xlat5.w = x_578;
        let x_580 : vec4<f32> = u_xlat3;
        let x_583 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat5;
        u_xlat7 = ((vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y)) + vec4<f32>(x_586.y, x_586.w, x_586.x, x_586.w));
        let x_589 : vec4<f32> = u_xlat3;
        let x_592 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_595 : vec4<f32> = u_xlat5;
        u_xlat47 = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_592.x, x_592.y)) + vec2<f32>(x_595.z, x_595.w));
        let x_599 : f32 = u_xlat5.y;
        u_xlat6.w = x_599;
        let x_601 : vec4<f32> = u_xlat6;
        let x_602 : vec2<f32> = vec2<f32>(x_601.y, x_601.z);
        let x_603 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_603.x, x_602.x, x_603.z, x_602.y);
        let x_605 : vec4<f32> = u_xlat3;
        let x_608 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_611 : vec4<f32> = u_xlat5;
        u_xlat8 = ((vec4<f32>(x_605.x, x_605.y, x_605.x, x_605.y) * vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y)) + vec4<f32>(x_611.x, x_611.y, x_611.z, x_611.y));
        let x_614 : vec4<f32> = u_xlat3;
        let x_617 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_620 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y) * vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y)) + vec4<f32>(x_620.w, x_620.y, x_620.w, x_620.z));
        let x_623 : vec4<f32> = u_xlat3;
        let x_626 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_629 : vec4<f32> = u_xlat5;
        u_xlat5 = ((vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y) * vec4<f32>(x_626.x, x_626.y, x_626.x, x_626.y)) + vec4<f32>(x_629.x, x_629.w, x_629.z, x_629.w));
        let x_633 : vec4<f32> = u_xlat4;
        let x_635 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_633.x, x_633.x, x_633.x, x_633.y) * vec4<f32>(x_635.z, x_635.w, x_635.y, x_635.z));
        let x_639 : vec4<f32> = u_xlat4;
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_639.y, x_639.y, x_639.z, x_639.z) * x_641);
        let x_644 : f32 = u_xlat4.z;
        let x_646 : f32 = u_xlat9.y;
        u_xlat3.x = (x_644 * x_646);
        let x_650 : vec4<f32> = u_xlat7;
        let x_651 : vec2<f32> = vec2<f32>(x_650.x, x_650.y);
        let x_653 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_651.x, x_651.y, x_653);
        let x_661 : vec3<f32> = txVec4;
        let x_663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_661.xy, x_661.z);
        u_xlat25.x = x_663;
        let x_666 : vec4<f32> = u_xlat7;
        let x_667 : vec2<f32> = vec2<f32>(x_666.z, x_666.w);
        let x_669 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_667.x, x_667.y, x_669);
        let x_676 : vec3<f32> = txVec5;
        let x_678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_676.xy, x_676.z);
        u_xlat4.x = x_678;
        let x_681 : f32 = u_xlat4.x;
        let x_683 : f32 = u_xlat10.y;
        u_xlat4.x = (x_681 * x_683);
        let x_687 : f32 = u_xlat10.x;
        let x_689 : f32 = u_xlat25.x;
        let x_692 : f32 = u_xlat4.x;
        u_xlat25.x = ((x_687 * x_689) + x_692);
        let x_696 : vec2<f32> = u_xlat47;
        let x_698 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_705 : vec3<f32> = txVec6;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_705.xy, x_705.z);
        u_xlat47.x = x_707;
        let x_710 : f32 = u_xlat10.z;
        let x_712 : f32 = u_xlat47.x;
        let x_715 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_710 * x_712) + x_715);
        let x_719 : vec4<f32> = u_xlat6;
        let x_720 : vec2<f32> = vec2<f32>(x_719.x, x_719.y);
        let x_722 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_720.x, x_720.y, x_722);
        let x_729 : vec3<f32> = txVec7;
        let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_729.xy, x_729.z);
        u_xlat47.x = x_731;
        let x_734 : f32 = u_xlat10.w;
        let x_736 : f32 = u_xlat47.x;
        let x_739 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_734 * x_736) + x_739);
        let x_743 : vec4<f32> = u_xlat8;
        let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
        let x_746 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_744.x, x_744.y, x_746);
        let x_753 : vec3<f32> = txVec8;
        let x_755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_753.xy, x_753.z);
        u_xlat47.x = x_755;
        let x_758 : f32 = u_xlat11.x;
        let x_760 : f32 = u_xlat47.x;
        let x_763 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_758 * x_760) + x_763);
        let x_767 : vec4<f32> = u_xlat8;
        let x_768 : vec2<f32> = vec2<f32>(x_767.z, x_767.w);
        let x_770 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_768.x, x_768.y, x_770);
        let x_777 : vec3<f32> = txVec9;
        let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
        u_xlat47.x = x_779;
        let x_782 : f32 = u_xlat11.y;
        let x_784 : f32 = u_xlat47.x;
        let x_787 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_782 * x_784) + x_787);
        let x_791 : vec4<f32> = u_xlat6;
        let x_792 : vec2<f32> = vec2<f32>(x_791.z, x_791.w);
        let x_794 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_792.x, x_792.y, x_794);
        let x_801 : vec3<f32> = txVec10;
        let x_803 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_801.xy, x_801.z);
        u_xlat47.x = x_803;
        let x_806 : f32 = u_xlat11.z;
        let x_808 : f32 = u_xlat47.x;
        let x_811 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_806 * x_808) + x_811);
        let x_815 : vec4<f32> = u_xlat5;
        let x_816 : vec2<f32> = vec2<f32>(x_815.x, x_815.y);
        let x_818 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec11;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat47.x = x_827;
        let x_830 : f32 = u_xlat11.w;
        let x_832 : f32 = u_xlat47.x;
        let x_835 : f32 = u_xlat25.x;
        u_xlat25.x = ((x_830 * x_832) + x_835);
        let x_839 : vec4<f32> = u_xlat5;
        let x_840 : vec2<f32> = vec2<f32>(x_839.z, x_839.w);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_849 : vec3<f32> = txVec12;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_849.xy, x_849.z);
        u_xlat47.x = x_851;
        let x_854 : f32 = u_xlat3.x;
        let x_856 : f32 = u_xlat47.x;
        let x_859 : f32 = u_xlat25.x;
        u_xlat67 = ((x_854 * x_856) + x_859);
      } else {
        let x_862 : vec4<f32> = vs_TEXCOORD6;
        let x_865 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_868 : vec2<f32> = ((vec2<f32>(x_862.x, x_862.y) * vec2<f32>(x_865.z, x_865.w)) + vec2<f32>(0.5f, 0.5f));
        let x_869 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_871 : vec4<f32> = u_xlat3;
        let x_873 : vec2<f32> = floor(vec2<f32>(x_871.x, x_871.y));
        let x_874 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec4<f32> = vs_TEXCOORD6;
        let x_879 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_882 : vec4<f32> = u_xlat3;
        u_xlat47 = ((vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_879.z, x_879.w)) + -(vec2<f32>(x_882.x, x_882.y)));
        let x_886 : vec2<f32> = u_xlat47;
        u_xlat4 = (vec4<f32>(x_886.x, x_886.x, x_886.y, x_886.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_889 : vec4<f32> = u_xlat4;
        let x_891 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_889.x, x_889.x, x_889.z, x_889.z) * vec4<f32>(x_891.x, x_891.x, x_891.z, x_891.z));
        let x_894 : vec4<f32> = u_xlat5;
        let x_898 : vec2<f32> = (vec2<f32>(x_894.y, x_894.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_899 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_899.x, x_898.x, x_899.z, x_898.y);
        let x_901 : vec4<f32> = u_xlat5;
        let x_904 : vec2<f32> = u_xlat47;
        let x_906 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.z) * vec2<f32>(0.5f, 0.5f)) + -(x_904));
        let x_907 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_906.x, x_907.y, x_906.y, x_907.w);
        let x_909 : vec2<f32> = u_xlat47;
        let x_911 : vec2<f32> = (-(x_909) + vec2<f32>(1.0f, 1.0f));
        let x_912 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec2<f32> = u_xlat47;
        u_xlat49 = min(x_914, vec2<f32>(0.0f, 0.0f));
        let x_916 : vec2<f32> = u_xlat49;
        let x_918 : vec2<f32> = u_xlat49;
        let x_920 : vec4<f32> = u_xlat5;
        let x_922 : vec2<f32> = ((-(x_916) * x_918) + vec2<f32>(x_920.x, x_920.y));
        let x_923 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_922.x, x_922.y, x_923.z, x_923.w);
        let x_925 : vec2<f32> = u_xlat47;
        u_xlat49 = max(x_925, vec2<f32>(0.0f, 0.0f));
        let x_928 : vec2<f32> = u_xlat49;
        let x_930 : vec2<f32> = u_xlat49;
        let x_932 : vec4<f32> = u_xlat4;
        let x_934 : vec2<f32> = ((-(x_928) * x_930) + vec2<f32>(x_932.y, x_932.w));
        let x_935 : vec3<f32> = u_xlat26;
        u_xlat26 = vec3<f32>(x_934.x, x_935.y, x_934.y);
        let x_937 : vec4<f32> = u_xlat5;
        let x_940 : vec2<f32> = (vec2<f32>(x_937.x, x_937.y) + vec2<f32>(2.0f, 2.0f));
        let x_941 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
        let x_943 : vec3<f32> = u_xlat26;
        let x_945 : vec2<f32> = (vec2<f32>(x_943.x, x_943.z) + vec2<f32>(2.0f, 2.0f));
        let x_946 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_946.x, x_945.x, x_946.z, x_945.y);
        let x_949 : f32 = u_xlat4.y;
        u_xlat7.z = (x_949 * 0.08163200318813323975f);
        let x_953 : vec4<f32> = u_xlat4;
        let x_956 : vec3<f32> = (vec3<f32>(x_953.z, x_953.x, x_953.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
        let x_959 : vec4<f32> = u_xlat5;
        let x_962 : vec2<f32> = (vec2<f32>(x_959.x, x_959.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_963 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_962.x, x_962.y, x_963.z, x_963.w);
        let x_966 : f32 = u_xlat8.y;
        u_xlat7.x = x_966;
        let x_968 : vec2<f32> = u_xlat47;
        let x_975 : vec2<f32> = ((vec2<f32>(x_968.x, x_968.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_976 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_976.x, x_975.x, x_976.z, x_975.y);
        let x_978 : vec2<f32> = u_xlat47;
        let x_982 : vec2<f32> = ((vec2<f32>(x_978.x, x_978.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_983 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_982.x, x_983.y, x_982.y, x_983.w);
        let x_986 : f32 = u_xlat4.x;
        u_xlat5.y = x_986;
        let x_989 : f32 = u_xlat6.y;
        u_xlat5.w = x_989;
        let x_991 : vec4<f32> = u_xlat5;
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_991 + x_992);
        let x_994 : vec2<f32> = u_xlat47;
        let x_997 : vec2<f32> = ((vec2<f32>(x_994.y, x_994.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec2<f32> = u_xlat47;
        let x_1003 : vec2<f32> = ((vec2<f32>(x_1000.y, x_1000.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1004 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1003.x, x_1004.y, x_1003.y, x_1004.w);
        let x_1007 : f32 = u_xlat4.y;
        u_xlat6.y = x_1007;
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1010 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_1009 + x_1010);
        let x_1012 : vec4<f32> = u_xlat5;
        let x_1013 : vec4<f32> = u_xlat7;
        u_xlat5 = (x_1012 / x_1013);
        let x_1015 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_1015 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1022 : vec4<f32> = u_xlat4;
        u_xlat6 = (x_1021 / x_1022);
        let x_1024 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1024 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1026 : vec4<f32> = u_xlat5;
        let x_1029 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1026.w, x_1026.x, x_1026.y, x_1026.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.x, x_1029.x));
        let x_1032 : vec4<f32> = u_xlat6;
        let x_1035 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1032.x, x_1032.w, x_1032.y, x_1032.z) * vec4<f32>(x_1035.y, x_1035.y, x_1035.y, x_1035.y));
        let x_1038 : vec4<f32> = u_xlat5;
        let x_1039 : vec3<f32> = vec3<f32>(x_1038.y, x_1038.z, x_1038.w);
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1039.x, x_1040.y, x_1039.y, x_1039.z);
        let x_1043 : f32 = u_xlat6.x;
        u_xlat8.y = x_1043;
        let x_1045 : vec4<f32> = u_xlat3;
        let x_1048 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1051 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y) * vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y)) + vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1051.y));
        let x_1054 : vec4<f32> = u_xlat3;
        let x_1057 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat47 = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1057.x, x_1057.y)) + vec2<f32>(x_1060.w, x_1060.y));
        let x_1064 : f32 = u_xlat8.y;
        u_xlat5.y = x_1064;
        let x_1067 : f32 = u_xlat6.z;
        u_xlat8.y = x_1067;
        let x_1069 : vec4<f32> = u_xlat3;
        let x_1072 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y) * vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y)) + vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat3;
        let x_1081 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat8;
        let x_1086 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(x_1081.x, x_1081.y)) + vec2<f32>(x_1084.w, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat8.y;
        u_xlat5.z = x_1090;
        let x_1093 : vec4<f32> = u_xlat3;
        let x_1096 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.y) * vec4<f32>(x_1096.x, x_1096.y, x_1096.x, x_1096.y)) + vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.z));
        let x_1103 : f32 = u_xlat6.w;
        u_xlat8.y = x_1103;
        let x_1106 : vec4<f32> = u_xlat3;
        let x_1109 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y) * vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y)) + vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1112.y));
        let x_1116 : vec4<f32> = u_xlat3;
        let x_1119 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat8;
        let x_1124 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1122.w, x_1122.y));
        let x_1125 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1124.x, x_1124.y, x_1125.z);
        let x_1128 : f32 = u_xlat8.y;
        u_xlat5.w = x_1128;
        let x_1131 : vec4<f32> = u_xlat3;
        let x_1134 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(x_1134.x, x_1134.y)) + vec2<f32>(x_1137.x, x_1137.w));
        let x_1140 : vec4<f32> = u_xlat8;
        let x_1141 : vec3<f32> = vec3<f32>(x_1140.x, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1141.z);
        let x_1144 : vec4<f32> = u_xlat3;
        let x_1147 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1150.y));
        let x_1154 : vec4<f32> = u_xlat3;
        let x_1157 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(x_1160.w, x_1160.y));
        let x_1164 : f32 = u_xlat5.x;
        u_xlat6.x = x_1164;
        let x_1166 : vec4<f32> = u_xlat3;
        let x_1169 : vec4<f32> = x_278.x_MainLightShadowmapSize;
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1174 : vec2<f32> = ((vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(x_1169.x, x_1169.y)) + vec2<f32>(x_1172.x, x_1172.y));
        let x_1175 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
        let x_1178 : vec4<f32> = u_xlat4;
        let x_1180 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1178.x, x_1178.x, x_1178.x, x_1178.x) * x_1180);
        let x_1183 : vec4<f32> = u_xlat4;
        let x_1185 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1183.y, x_1183.y, x_1183.y, x_1183.y) * x_1185);
        let x_1188 : vec4<f32> = u_xlat4;
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1188.z, x_1188.z, x_1188.z, x_1188.z) * x_1190);
        let x_1192 : vec4<f32> = u_xlat4;
        let x_1194 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1192.w, x_1192.w, x_1192.w, x_1192.w) * x_1194);
        let x_1197 : vec4<f32> = u_xlat9;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec13;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat5.x = x_1209;
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.z, x_1212.w);
        let x_1215 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1223 : vec3<f32> = txVec14;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat71 = x_1225;
        let x_1226 : f32 = u_xlat71;
        let x_1228 : f32 = u_xlat14.y;
        u_xlat71 = (x_1226 * x_1228);
        let x_1231 : f32 = u_xlat14.x;
        let x_1233 : f32 = u_xlat5.x;
        let x_1235 : f32 = u_xlat71;
        u_xlat5.x = ((x_1231 * x_1233) + x_1235);
        let x_1239 : vec2<f32> = u_xlat47;
        let x_1241 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1239.x, x_1239.y, x_1241);
        let x_1248 : vec3<f32> = txVec15;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1248.xy, x_1248.z);
        u_xlat47.x = x_1250;
        let x_1253 : f32 = u_xlat14.z;
        let x_1255 : f32 = u_xlat47.x;
        let x_1258 : f32 = u_xlat5.x;
        u_xlat47.x = ((x_1253 * x_1255) + x_1258);
        let x_1262 : vec4<f32> = u_xlat12;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1273 : vec3<f32> = txVec16;
        let x_1275 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1273.xy, x_1273.z);
        u_xlat69 = x_1275;
        let x_1277 : f32 = u_xlat14.w;
        let x_1278 : f32 = u_xlat69;
        let x_1281 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1277 * x_1278) + x_1281);
        let x_1285 : vec4<f32> = u_xlat10;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.x, x_1285.y);
        let x_1288 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec17;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat69 = x_1297;
        let x_1299 : f32 = u_xlat15.x;
        let x_1300 : f32 = u_xlat69;
        let x_1303 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1299 * x_1300) + x_1303);
        let x_1307 : vec4<f32> = u_xlat10;
        let x_1308 : vec2<f32> = vec2<f32>(x_1307.z, x_1307.w);
        let x_1310 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1308.x, x_1308.y, x_1310);
        let x_1317 : vec3<f32> = txVec18;
        let x_1319 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1317.xy, x_1317.z);
        u_xlat69 = x_1319;
        let x_1321 : f32 = u_xlat15.y;
        let x_1322 : f32 = u_xlat69;
        let x_1325 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1321 * x_1322) + x_1325);
        let x_1329 : vec4<f32> = u_xlat11;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec19;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat69 = x_1341;
        let x_1343 : f32 = u_xlat15.z;
        let x_1344 : f32 = u_xlat69;
        let x_1347 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1343 * x_1344) + x_1347);
        let x_1351 : vec4<f32> = u_xlat12;
        let x_1352 : vec2<f32> = vec2<f32>(x_1351.z, x_1351.w);
        let x_1354 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec20;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1361.xy, x_1361.z);
        u_xlat69 = x_1363;
        let x_1365 : f32 = u_xlat15.w;
        let x_1366 : f32 = u_xlat69;
        let x_1369 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1365 * x_1366) + x_1369);
        let x_1373 : vec4<f32> = u_xlat13;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
        let x_1376 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec21;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat69 = x_1385;
        let x_1387 : f32 = u_xlat16.x;
        let x_1388 : f32 = u_xlat69;
        let x_1391 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1387 * x_1388) + x_1391);
        let x_1395 : vec4<f32> = u_xlat13;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec22;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat69 = x_1407;
        let x_1409 : f32 = u_xlat16.y;
        let x_1410 : f32 = u_xlat69;
        let x_1413 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1409 * x_1410) + x_1413);
        let x_1417 : vec3<f32> = u_xlat27;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec23;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat69 = x_1429;
        let x_1431 : f32 = u_xlat16.z;
        let x_1432 : f32 = u_xlat69;
        let x_1435 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1431 * x_1432) + x_1435);
        let x_1439 : vec2<f32> = u_xlat55;
        let x_1441 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec24;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1448.xy, x_1448.z);
        u_xlat69 = x_1450;
        let x_1452 : f32 = u_xlat16.w;
        let x_1453 : f32 = u_xlat69;
        let x_1456 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1452 * x_1453) + x_1456);
        let x_1460 : vec4<f32> = u_xlat8;
        let x_1461 : vec2<f32> = vec2<f32>(x_1460.x, x_1460.y);
        let x_1463 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1461.x, x_1461.y, x_1463);
        let x_1470 : vec3<f32> = txVec25;
        let x_1472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1470.xy, x_1470.z);
        u_xlat69 = x_1472;
        let x_1474 : f32 = u_xlat4.x;
        let x_1475 : f32 = u_xlat69;
        let x_1478 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1474 * x_1475) + x_1478);
        let x_1482 : vec4<f32> = u_xlat8;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.z, x_1482.w);
        let x_1485 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec26;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat69 = x_1494;
        let x_1496 : f32 = u_xlat4.y;
        let x_1497 : f32 = u_xlat69;
        let x_1500 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1496 * x_1497) + x_1500);
        let x_1504 : vec2<f32> = u_xlat50;
        let x_1506 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
        let x_1513 : vec3<f32> = txVec27;
        let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
        u_xlat69 = x_1515;
        let x_1517 : f32 = u_xlat4.z;
        let x_1518 : f32 = u_xlat69;
        let x_1521 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1517 * x_1518) + x_1521);
        let x_1525 : vec4<f32> = u_xlat3;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec28;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1535.xy, x_1535.z);
        u_xlat3.x = x_1537;
        let x_1540 : f32 = u_xlat4.w;
        let x_1542 : f32 = u_xlat3.x;
        let x_1545 : f32 = u_xlat47.x;
        u_xlat67 = ((x_1540 * x_1542) + x_1545);
      }
    }
  } else {
    let x_1549 : vec4<f32> = vs_TEXCOORD6;
    let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.y);
    let x_1552 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
    let x_1559 : vec3<f32> = txVec29;
    let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
    u_xlat67 = x_1561;
  }
  let x_1563 : f32 = x_278.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1563) + 1.0f);
  let x_1567 : f32 = u_xlat67;
  let x_1569 : f32 = x_278.x_MainLightShadowParams.x;
  let x_1572 : f32 = u_xlat3.x;
  u_xlat67 = ((x_1567 * x_1569) + x_1572);
  let x_1575 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_1575);
  let x_1579 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_1579 >= 1.0f);
  let x_1581 : bool = u_xlatb25;
  let x_1582 : bool = u_xlatb3;
  u_xlatb3 = (x_1581 | x_1582);
  let x_1584 : bool = u_xlatb3;
  let x_1585 : f32 = u_xlat67;
  u_xlat67 = select(x_1585, 1.0f, x_1584);
  let x_1587 : vec3<f32> = vs_TEXCOORD1;
  let x_1591 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1593 : vec3<f32> = (x_1587 + -(x_1591));
  let x_1594 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
  let x_1596 : vec4<f32> = u_xlat3;
  let x_1598 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1598.x, x_1598.y, x_1598.z));
  let x_1603 : f32 = u_xlat3.x;
  let x_1605 : f32 = x_278.x_MainLightShadowParams.z;
  let x_1608 : f32 = x_278.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1603 * x_1605) + x_1608);
  let x_1612 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1612, 0.0f, 1.0f);
  let x_1615 : f32 = u_xlat67;
  u_xlat47.x = (-(x_1615) + 1.0f);
  let x_1620 : f32 = u_xlat25.x;
  let x_1622 : f32 = u_xlat47.x;
  let x_1624 : f32 = u_xlat67;
  u_xlat67 = ((x_1620 * x_1622) + x_1624);
  let x_1626 : f32 = u_xlat67;
  let x_1628 : f32 = x_94.unity_LightData.z;
  u_xlat67 = (x_1626 * x_1628);
  let x_1630 : f32 = u_xlat67;
  let x_1633 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat25 = (vec3<f32>(x_1630, x_1630, x_1630) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
  let x_1636 : vec4<f32> = u_xlat1;
  let x_1639 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat67 = dot(vec3<f32>(x_1636.x, x_1636.y, x_1636.z), vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
  let x_1642 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1642, 0.0f, 1.0f);
  let x_1644 : f32 = u_xlat67;
  let x_1646 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1644, x_1644, x_1644) * x_1646);
  let x_1648 : vec4<f32> = u_xlat0;
  let x_1650 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1648.y, x_1648.z, x_1648.w) * x_1650);
  let x_1653 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1655 : f32 = x_94.unity_LightData.y;
  u_xlat67 = min(x_1653, x_1655);
  let x_1659 : f32 = u_xlat67;
  u_xlatu67 = bitcast<u32>(i32(x_1659));
  let x_1663 : f32 = u_xlat3.x;
  let x_1666 : f32 = x_278.x_AdditionalShadowFadeParams.x;
  let x_1669 : f32 = x_278.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1663 * x_1666) + x_1669);
  let x_1673 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1673, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1686 : u32 = u_xlatu_loop_1;
    let x_1687 : u32 = u_xlatu67;
    if ((x_1686 < x_1687)) {
    } else {
      break;
    }
    let x_1690 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1690 >> 2u);
    let x_1694 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_1694 & 3u));
    let x_1697 : u32 = u_xlatu5;
    let x_1700 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_1697)];
    let x_1710 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1715 : vec4<u32> = indexable[x_1710];
    u_xlat5.x = dot(x_1700, bitcast<vec4<f32>>(x_1715));
    let x_1721 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1721);
    let x_1723 : vec3<f32> = vs_TEXCOORD1;
    let x_1734 : i32 = u_xlati5;
    let x_1736 : vec4<f32> = x_1733.x_AdditionalLightsPosition[x_1734];
    let x_1739 : i32 = u_xlati5;
    let x_1741 : vec4<f32> = x_1733.x_AdditionalLightsPosition[x_1739];
    u_xlat27 = ((-(x_1723) * vec3<f32>(x_1736.w, x_1736.w, x_1736.w)) + vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
    let x_1744 : vec3<f32> = u_xlat27;
    let x_1745 : vec3<f32> = u_xlat27;
    u_xlat6.x = dot(x_1744, x_1745);
    let x_1749 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1749, 0.00006103515625f);
    let x_1755 : f32 = u_xlat6.x;
    u_xlat28.x = inverseSqrt(x_1755);
    let x_1758 : vec3<f32> = u_xlat27;
    let x_1759 : vec3<f32> = u_xlat28;
    u_xlat27 = (x_1758 * vec3<f32>(x_1759.x, x_1759.x, x_1759.x));
    let x_1763 : f32 = u_xlat6.x;
    u_xlat28.x = (1.0f / x_1763);
    let x_1767 : f32 = u_xlat6.x;
    let x_1768 : i32 = u_xlati5;
    let x_1770 : f32 = x_1733.x_AdditionalLightsAttenuation[x_1768].x;
    u_xlat6.x = (x_1767 * x_1770);
    let x_1774 : f32 = u_xlat6.x;
    let x_1777 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1774) * x_1777) + 1.0f);
    let x_1782 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1782, 0.0f);
    let x_1786 : f32 = u_xlat6.x;
    let x_1788 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1786 * x_1788);
    let x_1792 : f32 = u_xlat6.x;
    let x_1794 : f32 = u_xlat28.x;
    u_xlat6.x = (x_1792 * x_1794);
    let x_1797 : i32 = u_xlati5;
    let x_1799 : vec4<f32> = x_1733.x_AdditionalLightsSpotDir[x_1797];
    let x_1801 : vec3<f32> = u_xlat27;
    u_xlat28.x = dot(vec3<f32>(x_1799.x, x_1799.y, x_1799.z), x_1801);
    let x_1805 : f32 = u_xlat28.x;
    let x_1806 : i32 = u_xlati5;
    let x_1808 : f32 = x_1733.x_AdditionalLightsAttenuation[x_1806].z;
    let x_1810 : i32 = u_xlati5;
    let x_1812 : f32 = x_1733.x_AdditionalLightsAttenuation[x_1810].w;
    u_xlat28.x = ((x_1805 * x_1808) + x_1812);
    let x_1816 : f32 = u_xlat28.x;
    u_xlat28.x = clamp(x_1816, 0.0f, 1.0f);
    let x_1820 : f32 = u_xlat28.x;
    let x_1822 : f32 = u_xlat28.x;
    u_xlat28.x = (x_1820 * x_1822);
    let x_1826 : f32 = u_xlat28.x;
    let x_1828 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1826 * x_1828);
    let x_1833 : i32 = u_xlati5;
    let x_1835 : f32 = x_278.x_AdditionalShadowParams[x_1833].w;
    u_xlati28 = i32(x_1835);
    let x_1838 : i32 = u_xlati28;
    u_xlatb50 = (x_1838 >= 0i);
    let x_1840 : bool = u_xlatb50;
    if (x_1840) {
      let x_1844 : i32 = u_xlati5;
      let x_1846 : f32 = x_278.x_AdditionalShadowParams[x_1844].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1846, x_1846, x_1846, x_1846))));
      let x_1851 : bool = u_xlatb50;
      if (x_1851) {
        let x_1856 : vec3<f32> = u_xlat27;
        let x_1859 : vec3<f32> = u_xlat27;
        let x_1862 : vec4<bool> = (abs(vec4<f32>(x_1856.z, x_1856.z, x_1856.y, x_1856.z)) >= abs(vec4<f32>(x_1859.x, x_1859.y, x_1859.x, x_1859.x)));
        let x_1864 : vec3<bool> = vec3<bool>(x_1862.x, x_1862.y, x_1862.z);
        let x_1865 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1864.x, x_1864.y, x_1864.z, x_1865.w);
        let x_1868 : bool = u_xlatb7.y;
        let x_1870 : bool = u_xlatb7.x;
        u_xlatb50 = (x_1868 & x_1870);
        let x_1872 : vec3<f32> = u_xlat27;
        let x_1875 : vec4<bool> = (-(vec4<f32>(x_1872.z, x_1872.y, x_1872.z, x_1872.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1876 : vec3<bool> = vec3<bool>(x_1875.x, x_1875.y, x_1875.w);
        let x_1877 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1876.x, x_1876.y, x_1877.z, x_1876.z);
        let x_1880 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1880);
        let x_1886 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1886);
        let x_1892 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1892);
        let x_1895 : bool = u_xlatb7.z;
        if (x_1895) {
          let x_1900 : f32 = u_xlat7.y;
          x_1896 = x_1900;
        } else {
          let x_1902 : f32 = u_xlat72;
          x_1896 = x_1902;
        }
        let x_1903 : f32 = x_1896;
        u_xlat72 = x_1903;
        let x_1904 : bool = u_xlatb50;
        if (x_1904) {
          let x_1909 : f32 = u_xlat7.x;
          x_1905 = x_1909;
        } else {
          let x_1911 : f32 = u_xlat72;
          x_1905 = x_1911;
        }
        let x_1912 : f32 = x_1905;
        u_xlat50.x = x_1912;
        let x_1914 : i32 = u_xlati5;
        let x_1916 : f32 = x_278.x_AdditionalShadowParams[x_1914].w;
        u_xlat72 = trunc(x_1916);
        let x_1919 : f32 = u_xlat50.x;
        let x_1920 : f32 = u_xlat72;
        u_xlat50.x = (x_1919 + x_1920);
        let x_1924 : f32 = u_xlat50.x;
        u_xlati28 = i32(x_1924);
      }
      let x_1926 : i32 = u_xlati28;
      u_xlati28 = (x_1926 << bitcast<u32>(2i));
      let x_1928 : vec3<f32> = vs_TEXCOORD1;
      let x_1931 : i32 = u_xlati28;
      let x_1934 : i32 = u_xlati28;
      let x_1938 : vec4<f32> = x_278.x_AdditionalLightsWorldToShadow[((x_1931 + 1i) / 4i)][((x_1934 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1928.y, x_1928.y, x_1928.y, x_1928.y) * x_1938);
      let x_1940 : i32 = u_xlati28;
      let x_1942 : i32 = u_xlati28;
      let x_1945 : vec4<f32> = x_278.x_AdditionalLightsWorldToShadow[(x_1940 / 4i)][(x_1942 % 4i)];
      let x_1946 : vec3<f32> = vs_TEXCOORD1;
      let x_1949 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1945 * vec4<f32>(x_1946.x, x_1946.x, x_1946.x, x_1946.x)) + x_1949);
      let x_1951 : i32 = u_xlati28;
      let x_1954 : i32 = u_xlati28;
      let x_1958 : vec4<f32> = x_278.x_AdditionalLightsWorldToShadow[((x_1951 + 2i) / 4i)][((x_1954 + 2i) % 4i)];
      let x_1959 : vec3<f32> = vs_TEXCOORD1;
      let x_1962 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1958 * vec4<f32>(x_1959.z, x_1959.z, x_1959.z, x_1959.z)) + x_1962);
      let x_1964 : vec4<f32> = u_xlat7;
      let x_1965 : i32 = u_xlati28;
      let x_1968 : i32 = u_xlati28;
      let x_1972 : vec4<f32> = x_278.x_AdditionalLightsWorldToShadow[((x_1965 + 3i) / 4i)][((x_1968 + 3i) % 4i)];
      u_xlat7 = (x_1964 + x_1972);
      let x_1974 : vec4<f32> = u_xlat7;
      let x_1976 : vec4<f32> = u_xlat7;
      u_xlat28 = (vec3<f32>(x_1974.x, x_1974.y, x_1974.z) / vec3<f32>(x_1976.w, x_1976.w, x_1976.w));
      let x_1979 : i32 = u_xlati5;
      let x_1981 : f32 = x_278.x_AdditionalShadowParams[x_1979].y;
      u_xlatb7.x = (0.0f < x_1981);
      let x_1985 : bool = u_xlatb7.x;
      if (x_1985) {
        let x_1988 : i32 = u_xlati5;
        let x_1990 : f32 = x_278.x_AdditionalShadowParams[x_1988].y;
        u_xlatb7.x = (1.0f == x_1990);
        let x_1994 : bool = u_xlatb7.x;
        if (x_1994) {
          let x_1997 : vec3<f32> = u_xlat28;
          let x_2001 : vec4<f32> = x_278.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_1997.x, x_1997.y, x_1997.x, x_1997.y) + x_2001);
          let x_2004 : vec4<f32> = u_xlat7;
          let x_2005 : vec2<f32> = vec2<f32>(x_2004.x, x_2004.y);
          let x_2007 : f32 = u_xlat28.z;
          txVec30 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
          let x_2015 : vec3<f32> = txVec30;
          let x_2017 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2015.xy, x_2015.z);
          u_xlat8.x = x_2017;
          let x_2020 : vec4<f32> = u_xlat7;
          let x_2021 : vec2<f32> = vec2<f32>(x_2020.z, x_2020.w);
          let x_2023 : f32 = u_xlat28.z;
          txVec31 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
          let x_2030 : vec3<f32> = txVec31;
          let x_2032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
          u_xlat8.y = x_2032;
          let x_2034 : vec3<f32> = u_xlat28;
          let x_2038 : vec4<f32> = x_278.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_2034.x, x_2034.y, x_2034.x, x_2034.y) + x_2038);
          let x_2041 : vec4<f32> = u_xlat7;
          let x_2042 : vec2<f32> = vec2<f32>(x_2041.x, x_2041.y);
          let x_2044 : f32 = u_xlat28.z;
          txVec32 = vec3<f32>(x_2042.x, x_2042.y, x_2044);
          let x_2051 : vec3<f32> = txVec32;
          let x_2053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2051.xy, x_2051.z);
          u_xlat8.z = x_2053;
          let x_2056 : vec4<f32> = u_xlat7;
          let x_2057 : vec2<f32> = vec2<f32>(x_2056.z, x_2056.w);
          let x_2059 : f32 = u_xlat28.z;
          txVec33 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
          let x_2066 : vec3<f32> = txVec33;
          let x_2068 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
          u_xlat8.w = x_2068;
          let x_2070 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(x_2070, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2075 : i32 = u_xlati5;
          let x_2077 : f32 = x_278.x_AdditionalShadowParams[x_2075].y;
          u_xlatb29 = (2.0f == x_2077);
          let x_2079 : bool = u_xlatb29;
          if (x_2079) {
            let x_2083 : vec3<f32> = u_xlat28;
            let x_2087 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2083.x, x_2083.y) * vec2<f32>(x_2087.z, x_2087.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2091 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2091);
            let x_2093 : vec3<f32> = u_xlat28;
            let x_2096 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2099 : vec2<f32> = u_xlat29;
            let x_2101 : vec2<f32> = ((vec2<f32>(x_2093.x, x_2093.y) * vec2<f32>(x_2096.z, x_2096.w)) + -(x_2099));
            let x_2102 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2101.x, x_2101.y, x_2102.z, x_2102.w);
            let x_2104 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2104.x, x_2104.x, x_2104.y, x_2104.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2107 : vec4<f32> = u_xlat9;
            let x_2109 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2107.x, x_2107.x, x_2107.z, x_2107.z) * vec4<f32>(x_2109.x, x_2109.x, x_2109.z, x_2109.z));
            let x_2113 : vec4<f32> = u_xlat10;
            u_xlat52 = (vec2<f32>(x_2113.y, x_2113.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2116 : vec4<f32> = u_xlat10;
            let x_2119 : vec4<f32> = u_xlat8;
            let x_2122 : vec2<f32> = ((vec2<f32>(x_2116.x, x_2116.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2119.x, x_2119.y)));
            let x_2123 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2122.x, x_2123.y, x_2122.y, x_2123.w);
            let x_2125 : vec4<f32> = u_xlat8;
            let x_2128 : vec2<f32> = (-(vec2<f32>(x_2125.x, x_2125.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2129 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2128.x, x_2128.y, x_2129.z, x_2129.w);
            let x_2132 : vec4<f32> = u_xlat8;
            u_xlat54 = min(vec2<f32>(x_2132.x, x_2132.y), vec2<f32>(0.0f, 0.0f));
            let x_2135 : vec2<f32> = u_xlat54;
            let x_2137 : vec2<f32> = u_xlat54;
            let x_2139 : vec4<f32> = u_xlat10;
            u_xlat54 = ((-(x_2135) * x_2137) + vec2<f32>(x_2139.x, x_2139.y));
            let x_2142 : vec4<f32> = u_xlat8;
            let x_2144 : vec2<f32> = max(vec2<f32>(x_2142.x, x_2142.y), vec2<f32>(0.0f, 0.0f));
            let x_2145 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2144.x, x_2144.y, x_2145.z, x_2145.w);
            let x_2147 : vec4<f32> = u_xlat8;
            let x_2150 : vec4<f32> = u_xlat8;
            let x_2153 : vec4<f32> = u_xlat9;
            let x_2155 : vec2<f32> = ((-(vec2<f32>(x_2147.x, x_2147.y)) * vec2<f32>(x_2150.x, x_2150.y)) + vec2<f32>(x_2153.y, x_2153.w));
            let x_2156 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2155.x, x_2155.y, x_2156.z, x_2156.w);
            let x_2158 : vec2<f32> = u_xlat54;
            u_xlat54 = (x_2158 + vec2<f32>(1.0f, 1.0f));
            let x_2160 : vec4<f32> = u_xlat8;
            let x_2162 : vec2<f32> = (vec2<f32>(x_2160.x, x_2160.y) + vec2<f32>(1.0f, 1.0f));
            let x_2163 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2162.x, x_2162.y, x_2163.z, x_2163.w);
            let x_2165 : vec4<f32> = u_xlat9;
            let x_2167 : vec2<f32> = (vec2<f32>(x_2165.x, x_2165.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2168 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2167.x, x_2167.y, x_2168.z, x_2168.w);
            let x_2170 : vec4<f32> = u_xlat10;
            let x_2172 : vec2<f32> = (vec2<f32>(x_2170.x, x_2170.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2173 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2172.x, x_2172.y, x_2173.z, x_2173.w);
            let x_2175 : vec2<f32> = u_xlat54;
            let x_2176 : vec2<f32> = (x_2175 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2177 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2176.x, x_2176.y, x_2177.z, x_2177.w);
            let x_2179 : vec4<f32> = u_xlat8;
            let x_2181 : vec2<f32> = (vec2<f32>(x_2179.x, x_2179.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2182 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2181.x, x_2181.y, x_2182.z, x_2182.w);
            let x_2184 : vec4<f32> = u_xlat9;
            let x_2186 : vec2<f32> = (vec2<f32>(x_2184.y, x_2184.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2187 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
            let x_2190 : f32 = u_xlat10.x;
            u_xlat11.z = x_2190;
            let x_2193 : f32 = u_xlat8.x;
            u_xlat11.w = x_2193;
            let x_2196 : f32 = u_xlat13.x;
            u_xlat12.z = x_2196;
            let x_2199 : f32 = u_xlat52.x;
            u_xlat12.w = x_2199;
            let x_2201 : vec4<f32> = u_xlat11;
            let x_2203 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2201.z, x_2201.w, x_2201.x, x_2201.z) + vec4<f32>(x_2203.z, x_2203.w, x_2203.x, x_2203.z));
            let x_2207 : f32 = u_xlat11.y;
            u_xlat10.z = x_2207;
            let x_2210 : f32 = u_xlat8.y;
            u_xlat10.w = x_2210;
            let x_2213 : f32 = u_xlat12.y;
            u_xlat13.z = x_2213;
            let x_2216 : f32 = u_xlat52.y;
            u_xlat13.w = x_2216;
            let x_2218 : vec4<f32> = u_xlat10;
            let x_2220 : vec4<f32> = u_xlat13;
            let x_2222 : vec3<f32> = (vec3<f32>(x_2218.z, x_2218.y, x_2218.w) + vec3<f32>(x_2220.z, x_2220.y, x_2220.w));
            let x_2223 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2222.x, x_2222.y, x_2222.z, x_2223.w);
            let x_2225 : vec4<f32> = u_xlat12;
            let x_2227 : vec4<f32> = u_xlat9;
            let x_2229 : vec3<f32> = (vec3<f32>(x_2225.x, x_2225.z, x_2225.w) / vec3<f32>(x_2227.z, x_2227.w, x_2227.y));
            let x_2230 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
            let x_2232 : vec4<f32> = u_xlat10;
            let x_2234 : vec3<f32> = (vec3<f32>(x_2232.x, x_2232.y, x_2232.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2235 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
            let x_2237 : vec4<f32> = u_xlat13;
            let x_2239 : vec4<f32> = u_xlat8;
            let x_2241 : vec3<f32> = (vec3<f32>(x_2237.z, x_2237.y, x_2237.w) / vec3<f32>(x_2239.x, x_2239.y, x_2239.z));
            let x_2242 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
            let x_2244 : vec4<f32> = u_xlat11;
            let x_2246 : vec3<f32> = (vec3<f32>(x_2244.x, x_2244.y, x_2244.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2247 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
            let x_2249 : vec4<f32> = u_xlat10;
            let x_2252 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2254 : vec3<f32> = (vec3<f32>(x_2249.y, x_2249.x, x_2249.z) * vec3<f32>(x_2252.x, x_2252.x, x_2252.x));
            let x_2255 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
            let x_2257 : vec4<f32> = u_xlat11;
            let x_2260 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2262 : vec3<f32> = (vec3<f32>(x_2257.x, x_2257.y, x_2257.z) * vec3<f32>(x_2260.y, x_2260.y, x_2260.y));
            let x_2263 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2262.x, x_2262.y, x_2262.z, x_2263.w);
            let x_2266 : f32 = u_xlat11.x;
            u_xlat10.w = x_2266;
            let x_2268 : vec2<f32> = u_xlat29;
            let x_2271 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2274 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2268.x, x_2268.y, x_2268.x, x_2268.y) * vec4<f32>(x_2271.x, x_2271.y, x_2271.x, x_2271.y)) + vec4<f32>(x_2274.y, x_2274.w, x_2274.x, x_2274.w));
            let x_2277 : vec2<f32> = u_xlat29;
            let x_2279 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2282 : vec4<f32> = u_xlat10;
            let x_2284 : vec2<f32> = ((x_2277 * vec2<f32>(x_2279.x, x_2279.y)) + vec2<f32>(x_2282.z, x_2282.w));
            let x_2285 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2284.x, x_2284.y, x_2285.z, x_2285.w);
            let x_2288 : f32 = u_xlat10.y;
            u_xlat11.w = x_2288;
            let x_2290 : vec4<f32> = u_xlat11;
            let x_2291 : vec2<f32> = vec2<f32>(x_2290.y, x_2290.z);
            let x_2292 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2292.x, x_2291.x, x_2292.z, x_2291.y);
            let x_2294 : vec2<f32> = u_xlat29;
            let x_2297 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2300 : vec4<f32> = u_xlat10;
            u_xlat14 = ((vec4<f32>(x_2294.x, x_2294.y, x_2294.x, x_2294.y) * vec4<f32>(x_2297.x, x_2297.y, x_2297.x, x_2297.y)) + vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2300.y));
            let x_2303 : vec2<f32> = u_xlat29;
            let x_2306 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2309 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2303.x, x_2303.y, x_2303.x, x_2303.y) * vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y)) + vec4<f32>(x_2309.w, x_2309.y, x_2309.w, x_2309.z));
            let x_2312 : vec2<f32> = u_xlat29;
            let x_2315 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2318 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2312.x, x_2312.y, x_2312.x, x_2312.y) * vec4<f32>(x_2315.x, x_2315.y, x_2315.x, x_2315.y)) + vec4<f32>(x_2318.x, x_2318.w, x_2318.z, x_2318.w));
            let x_2321 : vec4<f32> = u_xlat8;
            let x_2323 : vec4<f32> = u_xlat9;
            u_xlat15 = (vec4<f32>(x_2321.x, x_2321.x, x_2321.x, x_2321.y) * vec4<f32>(x_2323.z, x_2323.w, x_2323.y, x_2323.z));
            let x_2326 : vec4<f32> = u_xlat8;
            let x_2328 : vec4<f32> = u_xlat9;
            u_xlat16 = (vec4<f32>(x_2326.y, x_2326.y, x_2326.z, x_2326.z) * x_2328);
            let x_2331 : f32 = u_xlat8.z;
            let x_2333 : f32 = u_xlat9.y;
            u_xlat29.x = (x_2331 * x_2333);
            let x_2337 : vec4<f32> = u_xlat12;
            let x_2338 : vec2<f32> = vec2<f32>(x_2337.x, x_2337.y);
            let x_2340 : f32 = u_xlat28.z;
            txVec34 = vec3<f32>(x_2338.x, x_2338.y, x_2340);
            let x_2348 : vec3<f32> = txVec34;
            let x_2350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2348.xy, x_2348.z);
            u_xlat51 = x_2350;
            let x_2352 : vec4<f32> = u_xlat12;
            let x_2353 : vec2<f32> = vec2<f32>(x_2352.z, x_2352.w);
            let x_2355 : f32 = u_xlat28.z;
            txVec35 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
            let x_2363 : vec3<f32> = txVec35;
            let x_2365 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2363.xy, x_2363.z);
            u_xlat73 = x_2365;
            let x_2366 : f32 = u_xlat73;
            let x_2368 : f32 = u_xlat15.y;
            u_xlat73 = (x_2366 * x_2368);
            let x_2371 : f32 = u_xlat15.x;
            let x_2372 : f32 = u_xlat51;
            let x_2374 : f32 = u_xlat73;
            u_xlat51 = ((x_2371 * x_2372) + x_2374);
            let x_2377 : vec4<f32> = u_xlat13;
            let x_2378 : vec2<f32> = vec2<f32>(x_2377.x, x_2377.y);
            let x_2380 : f32 = u_xlat28.z;
            txVec36 = vec3<f32>(x_2378.x, x_2378.y, x_2380);
            let x_2387 : vec3<f32> = txVec36;
            let x_2389 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2387.xy, x_2387.z);
            u_xlat73 = x_2389;
            let x_2391 : f32 = u_xlat15.z;
            let x_2392 : f32 = u_xlat73;
            let x_2394 : f32 = u_xlat51;
            u_xlat51 = ((x_2391 * x_2392) + x_2394);
            let x_2397 : vec4<f32> = u_xlat11;
            let x_2398 : vec2<f32> = vec2<f32>(x_2397.x, x_2397.y);
            let x_2400 : f32 = u_xlat28.z;
            txVec37 = vec3<f32>(x_2398.x, x_2398.y, x_2400);
            let x_2407 : vec3<f32> = txVec37;
            let x_2409 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2407.xy, x_2407.z);
            u_xlat73 = x_2409;
            let x_2411 : f32 = u_xlat15.w;
            let x_2412 : f32 = u_xlat73;
            let x_2414 : f32 = u_xlat51;
            u_xlat51 = ((x_2411 * x_2412) + x_2414);
            let x_2417 : vec4<f32> = u_xlat14;
            let x_2418 : vec2<f32> = vec2<f32>(x_2417.x, x_2417.y);
            let x_2420 : f32 = u_xlat28.z;
            txVec38 = vec3<f32>(x_2418.x, x_2418.y, x_2420);
            let x_2427 : vec3<f32> = txVec38;
            let x_2429 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2427.xy, x_2427.z);
            u_xlat73 = x_2429;
            let x_2431 : f32 = u_xlat16.x;
            let x_2432 : f32 = u_xlat73;
            let x_2434 : f32 = u_xlat51;
            u_xlat51 = ((x_2431 * x_2432) + x_2434);
            let x_2437 : vec4<f32> = u_xlat14;
            let x_2438 : vec2<f32> = vec2<f32>(x_2437.z, x_2437.w);
            let x_2440 : f32 = u_xlat28.z;
            txVec39 = vec3<f32>(x_2438.x, x_2438.y, x_2440);
            let x_2447 : vec3<f32> = txVec39;
            let x_2449 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2447.xy, x_2447.z);
            u_xlat73 = x_2449;
            let x_2451 : f32 = u_xlat16.y;
            let x_2452 : f32 = u_xlat73;
            let x_2454 : f32 = u_xlat51;
            u_xlat51 = ((x_2451 * x_2452) + x_2454);
            let x_2457 : vec4<f32> = u_xlat11;
            let x_2458 : vec2<f32> = vec2<f32>(x_2457.z, x_2457.w);
            let x_2460 : f32 = u_xlat28.z;
            txVec40 = vec3<f32>(x_2458.x, x_2458.y, x_2460);
            let x_2467 : vec3<f32> = txVec40;
            let x_2469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2467.xy, x_2467.z);
            u_xlat73 = x_2469;
            let x_2471 : f32 = u_xlat16.z;
            let x_2472 : f32 = u_xlat73;
            let x_2474 : f32 = u_xlat51;
            u_xlat51 = ((x_2471 * x_2472) + x_2474);
            let x_2477 : vec4<f32> = u_xlat10;
            let x_2478 : vec2<f32> = vec2<f32>(x_2477.x, x_2477.y);
            let x_2480 : f32 = u_xlat28.z;
            txVec41 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
            let x_2487 : vec3<f32> = txVec41;
            let x_2489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
            u_xlat73 = x_2489;
            let x_2491 : f32 = u_xlat16.w;
            let x_2492 : f32 = u_xlat73;
            let x_2494 : f32 = u_xlat51;
            u_xlat51 = ((x_2491 * x_2492) + x_2494);
            let x_2497 : vec4<f32> = u_xlat10;
            let x_2498 : vec2<f32> = vec2<f32>(x_2497.z, x_2497.w);
            let x_2500 : f32 = u_xlat28.z;
            txVec42 = vec3<f32>(x_2498.x, x_2498.y, x_2500);
            let x_2507 : vec3<f32> = txVec42;
            let x_2509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2507.xy, x_2507.z);
            u_xlat73 = x_2509;
            let x_2511 : f32 = u_xlat29.x;
            let x_2512 : f32 = u_xlat73;
            let x_2514 : f32 = u_xlat51;
            u_xlat7.x = ((x_2511 * x_2512) + x_2514);
          } else {
            let x_2518 : vec3<f32> = u_xlat28;
            let x_2521 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2518.x, x_2518.y) * vec2<f32>(x_2521.z, x_2521.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2525 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2525);
            let x_2527 : vec3<f32> = u_xlat28;
            let x_2530 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2533 : vec2<f32> = u_xlat29;
            let x_2535 : vec2<f32> = ((vec2<f32>(x_2527.x, x_2527.y) * vec2<f32>(x_2530.z, x_2530.w)) + -(x_2533));
            let x_2536 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2535.x, x_2535.y, x_2536.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2538.x, x_2538.x, x_2538.y, x_2538.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2541 : vec4<f32> = u_xlat9;
            let x_2543 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2541.x, x_2541.x, x_2541.z, x_2541.z) * vec4<f32>(x_2543.x, x_2543.x, x_2543.z, x_2543.z));
            let x_2546 : vec4<f32> = u_xlat10;
            let x_2548 : vec2<f32> = (vec2<f32>(x_2546.y, x_2546.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2549 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2549.x, x_2548.x, x_2549.z, x_2548.y);
            let x_2551 : vec4<f32> = u_xlat10;
            let x_2554 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2551.x, x_2551.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2554.x, x_2554.y)));
            let x_2558 : vec4<f32> = u_xlat8;
            let x_2561 : vec2<f32> = (-(vec2<f32>(x_2558.x, x_2558.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2562 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2561.x, x_2562.y, x_2561.y, x_2562.w);
            let x_2564 : vec4<f32> = u_xlat8;
            let x_2566 : vec2<f32> = min(vec2<f32>(x_2564.x, x_2564.y), vec2<f32>(0.0f, 0.0f));
            let x_2567 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2566.x, x_2566.y, x_2567.z, x_2567.w);
            let x_2569 : vec4<f32> = u_xlat10;
            let x_2572 : vec4<f32> = u_xlat10;
            let x_2575 : vec4<f32> = u_xlat9;
            let x_2577 : vec2<f32> = ((-(vec2<f32>(x_2569.x, x_2569.y)) * vec2<f32>(x_2572.x, x_2572.y)) + vec2<f32>(x_2575.x, x_2575.z));
            let x_2578 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2577.x, x_2578.y, x_2577.y, x_2578.w);
            let x_2580 : vec4<f32> = u_xlat8;
            let x_2582 : vec2<f32> = max(vec2<f32>(x_2580.x, x_2580.y), vec2<f32>(0.0f, 0.0f));
            let x_2583 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2582.x, x_2582.y, x_2583.z, x_2583.w);
            let x_2585 : vec4<f32> = u_xlat10;
            let x_2588 : vec4<f32> = u_xlat10;
            let x_2591 : vec4<f32> = u_xlat9;
            let x_2593 : vec2<f32> = ((-(vec2<f32>(x_2585.x, x_2585.y)) * vec2<f32>(x_2588.x, x_2588.y)) + vec2<f32>(x_2591.y, x_2591.w));
            let x_2594 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2594.x, x_2593.x, x_2594.z, x_2593.y);
            let x_2596 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2596 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2600 : f32 = u_xlat9.y;
            u_xlat10.z = (x_2600 * 0.08163200318813323975f);
            let x_2603 : vec2<f32> = u_xlat52;
            let x_2605 : vec2<f32> = (vec2<f32>(x_2603.y, x_2603.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2606 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2605.x, x_2605.y, x_2606.z, x_2606.w);
            let x_2608 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2608.x, x_2608.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2612 : f32 = u_xlat9.w;
            u_xlat12.z = (x_2612 * 0.08163200318813323975f);
            let x_2616 : f32 = u_xlat12.y;
            u_xlat10.x = x_2616;
            let x_2618 : vec4<f32> = u_xlat8;
            let x_2621 : vec2<f32> = ((vec2<f32>(x_2618.x, x_2618.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2622 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2622.x, x_2621.x, x_2622.z, x_2621.y);
            let x_2624 : vec4<f32> = u_xlat8;
            let x_2627 : vec2<f32> = ((vec2<f32>(x_2624.x, x_2624.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2628 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2627.x, x_2628.y, x_2627.y, x_2628.w);
            let x_2631 : f32 = u_xlat52.x;
            u_xlat9.y = x_2631;
            let x_2634 : f32 = u_xlat11.y;
            u_xlat9.w = x_2634;
            let x_2636 : vec4<f32> = u_xlat9;
            let x_2637 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2636 + x_2637);
            let x_2639 : vec4<f32> = u_xlat8;
            let x_2642 : vec2<f32> = ((vec2<f32>(x_2639.y, x_2639.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2643 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2643.x, x_2642.x, x_2643.z, x_2642.y);
            let x_2645 : vec4<f32> = u_xlat8;
            let x_2648 : vec2<f32> = ((vec2<f32>(x_2645.y, x_2645.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2649 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2648.x, x_2649.y, x_2648.y, x_2649.w);
            let x_2652 : f32 = u_xlat52.y;
            u_xlat11.y = x_2652;
            let x_2654 : vec4<f32> = u_xlat11;
            let x_2655 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2654 + x_2655);
            let x_2657 : vec4<f32> = u_xlat9;
            let x_2658 : vec4<f32> = u_xlat10;
            u_xlat9 = (x_2657 / x_2658);
            let x_2660 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2660 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2662 : vec4<f32> = u_xlat11;
            let x_2663 : vec4<f32> = u_xlat8;
            u_xlat11 = (x_2662 / x_2663);
            let x_2665 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2665 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2667 : vec4<f32> = u_xlat9;
            let x_2670 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2667.w, x_2667.x, x_2667.y, x_2667.z) * vec4<f32>(x_2670.x, x_2670.x, x_2670.x, x_2670.x));
            let x_2673 : vec4<f32> = u_xlat11;
            let x_2676 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2673.x, x_2673.w, x_2673.y, x_2673.z) * vec4<f32>(x_2676.y, x_2676.y, x_2676.y, x_2676.y));
            let x_2679 : vec4<f32> = u_xlat9;
            let x_2680 : vec3<f32> = vec3<f32>(x_2679.y, x_2679.z, x_2679.w);
            let x_2681 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2680.x, x_2681.y, x_2680.y, x_2680.z);
            let x_2684 : f32 = u_xlat11.x;
            u_xlat12.y = x_2684;
            let x_2686 : vec2<f32> = u_xlat29;
            let x_2689 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2692 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2686.x, x_2686.y, x_2686.x, x_2686.y) * vec4<f32>(x_2689.x, x_2689.y, x_2689.x, x_2689.y)) + vec4<f32>(x_2692.x, x_2692.y, x_2692.z, x_2692.y));
            let x_2695 : vec2<f32> = u_xlat29;
            let x_2697 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2700 : vec4<f32> = u_xlat12;
            let x_2702 : vec2<f32> = ((x_2695 * vec2<f32>(x_2697.x, x_2697.y)) + vec2<f32>(x_2700.w, x_2700.y));
            let x_2703 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2702.x, x_2702.y, x_2703.z, x_2703.w);
            let x_2706 : f32 = u_xlat12.y;
            u_xlat9.y = x_2706;
            let x_2709 : f32 = u_xlat11.z;
            u_xlat12.y = x_2709;
            let x_2711 : vec2<f32> = u_xlat29;
            let x_2714 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2717 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2711.x, x_2711.y, x_2711.x, x_2711.y) * vec4<f32>(x_2714.x, x_2714.y, x_2714.x, x_2714.y)) + vec4<f32>(x_2717.x, x_2717.y, x_2717.z, x_2717.y));
            let x_2721 : vec2<f32> = u_xlat29;
            let x_2723 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2726 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2721 * vec2<f32>(x_2723.x, x_2723.y)) + vec2<f32>(x_2726.w, x_2726.y));
            let x_2730 : f32 = u_xlat12.y;
            u_xlat9.z = x_2730;
            let x_2732 : vec2<f32> = u_xlat29;
            let x_2735 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2738 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2732.x, x_2732.y, x_2732.x, x_2732.y) * vec4<f32>(x_2735.x, x_2735.y, x_2735.x, x_2735.y)) + vec4<f32>(x_2738.x, x_2738.y, x_2738.x, x_2738.z));
            let x_2742 : f32 = u_xlat11.w;
            u_xlat12.y = x_2742;
            let x_2745 : vec2<f32> = u_xlat29;
            let x_2748 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y) * vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y)) + vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2751.y));
            let x_2755 : vec2<f32> = u_xlat29;
            let x_2757 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2760 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2755 * vec2<f32>(x_2757.x, x_2757.y)) + vec2<f32>(x_2760.w, x_2760.y));
            let x_2764 : f32 = u_xlat12.y;
            u_xlat9.w = x_2764;
            let x_2767 : vec2<f32> = u_xlat29;
            let x_2769 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2772 : vec4<f32> = u_xlat9;
            u_xlat18 = ((x_2767 * vec2<f32>(x_2769.x, x_2769.y)) + vec2<f32>(x_2772.x, x_2772.w));
            let x_2775 : vec4<f32> = u_xlat12;
            let x_2776 : vec3<f32> = vec3<f32>(x_2775.x, x_2775.z, x_2775.w);
            let x_2777 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2776.x, x_2777.y, x_2776.y, x_2776.z);
            let x_2779 : vec2<f32> = u_xlat29;
            let x_2782 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2785 : vec4<f32> = u_xlat11;
            u_xlat12 = ((vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y) * vec4<f32>(x_2782.x, x_2782.y, x_2782.x, x_2782.y)) + vec4<f32>(x_2785.x, x_2785.y, x_2785.z, x_2785.y));
            let x_2788 : vec2<f32> = u_xlat29;
            let x_2790 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2793 : vec4<f32> = u_xlat11;
            u_xlat55 = ((x_2788 * vec2<f32>(x_2790.x, x_2790.y)) + vec2<f32>(x_2793.w, x_2793.y));
            let x_2797 : f32 = u_xlat9.x;
            u_xlat11.x = x_2797;
            let x_2799 : vec2<f32> = u_xlat29;
            let x_2801 : vec4<f32> = x_278.x_AdditionalShadowmapSize;
            let x_2804 : vec4<f32> = u_xlat11;
            u_xlat29 = ((x_2799 * vec2<f32>(x_2801.x, x_2801.y)) + vec2<f32>(x_2804.x, x_2804.y));
            let x_2808 : vec4<f32> = u_xlat8;
            let x_2810 : vec4<f32> = u_xlat10;
            u_xlat19 = (vec4<f32>(x_2808.x, x_2808.x, x_2808.x, x_2808.x) * x_2810);
            let x_2813 : vec4<f32> = u_xlat8;
            let x_2815 : vec4<f32> = u_xlat10;
            u_xlat20 = (vec4<f32>(x_2813.y, x_2813.y, x_2813.y, x_2813.y) * x_2815);
            let x_2818 : vec4<f32> = u_xlat8;
            let x_2820 : vec4<f32> = u_xlat10;
            u_xlat21 = (vec4<f32>(x_2818.z, x_2818.z, x_2818.z, x_2818.z) * x_2820);
            let x_2822 : vec4<f32> = u_xlat8;
            let x_2824 : vec4<f32> = u_xlat10;
            u_xlat8 = (vec4<f32>(x_2822.w, x_2822.w, x_2822.w, x_2822.w) * x_2824);
            let x_2827 : vec4<f32> = u_xlat13;
            let x_2828 : vec2<f32> = vec2<f32>(x_2827.x, x_2827.y);
            let x_2830 : f32 = u_xlat28.z;
            txVec43 = vec3<f32>(x_2828.x, x_2828.y, x_2830);
            let x_2837 : vec3<f32> = txVec43;
            let x_2839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2837.xy, x_2837.z);
            u_xlat73 = x_2839;
            let x_2841 : vec4<f32> = u_xlat13;
            let x_2842 : vec2<f32> = vec2<f32>(x_2841.z, x_2841.w);
            let x_2844 : f32 = u_xlat28.z;
            txVec44 = vec3<f32>(x_2842.x, x_2842.y, x_2844);
            let x_2851 : vec3<f32> = txVec44;
            let x_2853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2851.xy, x_2851.z);
            u_xlat9.x = x_2853;
            let x_2856 : f32 = u_xlat9.x;
            let x_2858 : f32 = u_xlat19.y;
            u_xlat9.x = (x_2856 * x_2858);
            let x_2862 : f32 = u_xlat19.x;
            let x_2863 : f32 = u_xlat73;
            let x_2866 : f32 = u_xlat9.x;
            u_xlat73 = ((x_2862 * x_2863) + x_2866);
            let x_2869 : vec4<f32> = u_xlat14;
            let x_2870 : vec2<f32> = vec2<f32>(x_2869.x, x_2869.y);
            let x_2872 : f32 = u_xlat28.z;
            txVec45 = vec3<f32>(x_2870.x, x_2870.y, x_2872);
            let x_2879 : vec3<f32> = txVec45;
            let x_2881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2879.xy, x_2879.z);
            u_xlat9.x = x_2881;
            let x_2884 : f32 = u_xlat19.z;
            let x_2886 : f32 = u_xlat9.x;
            let x_2888 : f32 = u_xlat73;
            u_xlat73 = ((x_2884 * x_2886) + x_2888);
            let x_2891 : vec4<f32> = u_xlat16;
            let x_2892 : vec2<f32> = vec2<f32>(x_2891.x, x_2891.y);
            let x_2894 : f32 = u_xlat28.z;
            txVec46 = vec3<f32>(x_2892.x, x_2892.y, x_2894);
            let x_2901 : vec3<f32> = txVec46;
            let x_2903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2901.xy, x_2901.z);
            u_xlat9.x = x_2903;
            let x_2906 : f32 = u_xlat19.w;
            let x_2908 : f32 = u_xlat9.x;
            let x_2910 : f32 = u_xlat73;
            u_xlat73 = ((x_2906 * x_2908) + x_2910);
            let x_2913 : vec4<f32> = u_xlat15;
            let x_2914 : vec2<f32> = vec2<f32>(x_2913.x, x_2913.y);
            let x_2916 : f32 = u_xlat28.z;
            txVec47 = vec3<f32>(x_2914.x, x_2914.y, x_2916);
            let x_2923 : vec3<f32> = txVec47;
            let x_2925 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2923.xy, x_2923.z);
            u_xlat9.x = x_2925;
            let x_2928 : f32 = u_xlat20.x;
            let x_2930 : f32 = u_xlat9.x;
            let x_2932 : f32 = u_xlat73;
            u_xlat73 = ((x_2928 * x_2930) + x_2932);
            let x_2935 : vec4<f32> = u_xlat15;
            let x_2936 : vec2<f32> = vec2<f32>(x_2935.z, x_2935.w);
            let x_2938 : f32 = u_xlat28.z;
            txVec48 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
            let x_2945 : vec3<f32> = txVec48;
            let x_2947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
            u_xlat9.x = x_2947;
            let x_2950 : f32 = u_xlat20.y;
            let x_2952 : f32 = u_xlat9.x;
            let x_2954 : f32 = u_xlat73;
            u_xlat73 = ((x_2950 * x_2952) + x_2954);
            let x_2957 : vec2<f32> = u_xlat58;
            let x_2959 : f32 = u_xlat28.z;
            txVec49 = vec3<f32>(x_2957.x, x_2957.y, x_2959);
            let x_2966 : vec3<f32> = txVec49;
            let x_2968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2966.xy, x_2966.z);
            u_xlat9.x = x_2968;
            let x_2971 : f32 = u_xlat20.z;
            let x_2973 : f32 = u_xlat9.x;
            let x_2975 : f32 = u_xlat73;
            u_xlat73 = ((x_2971 * x_2973) + x_2975);
            let x_2978 : vec4<f32> = u_xlat16;
            let x_2979 : vec2<f32> = vec2<f32>(x_2978.z, x_2978.w);
            let x_2981 : f32 = u_xlat28.z;
            txVec50 = vec3<f32>(x_2979.x, x_2979.y, x_2981);
            let x_2988 : vec3<f32> = txVec50;
            let x_2990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2988.xy, x_2988.z);
            u_xlat9.x = x_2990;
            let x_2993 : f32 = u_xlat20.w;
            let x_2995 : f32 = u_xlat9.x;
            let x_2997 : f32 = u_xlat73;
            u_xlat73 = ((x_2993 * x_2995) + x_2997);
            let x_3000 : vec4<f32> = u_xlat17;
            let x_3001 : vec2<f32> = vec2<f32>(x_3000.x, x_3000.y);
            let x_3003 : f32 = u_xlat28.z;
            txVec51 = vec3<f32>(x_3001.x, x_3001.y, x_3003);
            let x_3010 : vec3<f32> = txVec51;
            let x_3012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3010.xy, x_3010.z);
            u_xlat9.x = x_3012;
            let x_3015 : f32 = u_xlat21.x;
            let x_3017 : f32 = u_xlat9.x;
            let x_3019 : f32 = u_xlat73;
            u_xlat73 = ((x_3015 * x_3017) + x_3019);
            let x_3022 : vec4<f32> = u_xlat17;
            let x_3023 : vec2<f32> = vec2<f32>(x_3022.z, x_3022.w);
            let x_3025 : f32 = u_xlat28.z;
            txVec52 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
            let x_3032 : vec3<f32> = txVec52;
            let x_3034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3032.xy, x_3032.z);
            u_xlat9.x = x_3034;
            let x_3037 : f32 = u_xlat21.y;
            let x_3039 : f32 = u_xlat9.x;
            let x_3041 : f32 = u_xlat73;
            u_xlat73 = ((x_3037 * x_3039) + x_3041);
            let x_3044 : vec2<f32> = u_xlat31;
            let x_3046 : f32 = u_xlat28.z;
            txVec53 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec53;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat9.x = x_3055;
            let x_3058 : f32 = u_xlat21.z;
            let x_3060 : f32 = u_xlat9.x;
            let x_3062 : f32 = u_xlat73;
            u_xlat73 = ((x_3058 * x_3060) + x_3062);
            let x_3065 : vec2<f32> = u_xlat18;
            let x_3067 : f32 = u_xlat28.z;
            txVec54 = vec3<f32>(x_3065.x, x_3065.y, x_3067);
            let x_3074 : vec3<f32> = txVec54;
            let x_3076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3074.xy, x_3074.z);
            u_xlat9.x = x_3076;
            let x_3079 : f32 = u_xlat21.w;
            let x_3081 : f32 = u_xlat9.x;
            let x_3083 : f32 = u_xlat73;
            u_xlat73 = ((x_3079 * x_3081) + x_3083);
            let x_3086 : vec4<f32> = u_xlat12;
            let x_3087 : vec2<f32> = vec2<f32>(x_3086.x, x_3086.y);
            let x_3089 : f32 = u_xlat28.z;
            txVec55 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
            let x_3096 : vec3<f32> = txVec55;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat9.x = x_3098;
            let x_3101 : f32 = u_xlat8.x;
            let x_3103 : f32 = u_xlat9.x;
            let x_3105 : f32 = u_xlat73;
            u_xlat73 = ((x_3101 * x_3103) + x_3105);
            let x_3108 : vec4<f32> = u_xlat12;
            let x_3109 : vec2<f32> = vec2<f32>(x_3108.z, x_3108.w);
            let x_3111 : f32 = u_xlat28.z;
            txVec56 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
            let x_3118 : vec3<f32> = txVec56;
            let x_3120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3118.xy, x_3118.z);
            u_xlat8.x = x_3120;
            let x_3123 : f32 = u_xlat8.y;
            let x_3125 : f32 = u_xlat8.x;
            let x_3127 : f32 = u_xlat73;
            u_xlat73 = ((x_3123 * x_3125) + x_3127);
            let x_3130 : vec2<f32> = u_xlat55;
            let x_3132 : f32 = u_xlat28.z;
            txVec57 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec57;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat8.x = x_3141;
            let x_3144 : f32 = u_xlat8.z;
            let x_3146 : f32 = u_xlat8.x;
            let x_3148 : f32 = u_xlat73;
            u_xlat73 = ((x_3144 * x_3146) + x_3148);
            let x_3151 : vec2<f32> = u_xlat29;
            let x_3153 : f32 = u_xlat28.z;
            txVec58 = vec3<f32>(x_3151.x, x_3151.y, x_3153);
            let x_3160 : vec3<f32> = txVec58;
            let x_3162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3160.xy, x_3160.z);
            u_xlat29.x = x_3162;
            let x_3165 : f32 = u_xlat8.w;
            let x_3167 : f32 = u_xlat29.x;
            let x_3169 : f32 = u_xlat73;
            u_xlat7.x = ((x_3165 * x_3167) + x_3169);
          }
        }
      } else {
        let x_3174 : vec3<f32> = u_xlat28;
        let x_3175 : vec2<f32> = vec2<f32>(x_3174.x, x_3174.y);
        let x_3177 : f32 = u_xlat28.z;
        txVec59 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
        let x_3184 : vec3<f32> = txVec59;
        let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
        u_xlat7.x = x_3186;
      }
      let x_3188 : i32 = u_xlati5;
      let x_3190 : f32 = x_278.x_AdditionalShadowParams[x_3188].x;
      u_xlat28.x = (1.0f + -(x_3190));
      let x_3195 : f32 = u_xlat7.x;
      let x_3196 : i32 = u_xlati5;
      let x_3198 : f32 = x_278.x_AdditionalShadowParams[x_3196].x;
      let x_3201 : f32 = u_xlat28.x;
      u_xlat28.x = ((x_3195 * x_3198) + x_3201);
      let x_3205 : f32 = u_xlat28.z;
      u_xlatb50 = (0.0f >= x_3205);
      let x_3209 : f32 = u_xlat28.z;
      u_xlatb72 = (x_3209 >= 1.0f);
      let x_3211 : bool = u_xlatb72;
      let x_3212 : bool = u_xlatb50;
      u_xlatb50 = (x_3211 | x_3212);
      let x_3214 : bool = u_xlatb50;
      if (x_3214) {
        x_3215 = 1.0f;
      } else {
        let x_3220 : f32 = u_xlat28.x;
        x_3215 = x_3220;
      }
      let x_3221 : f32 = x_3215;
      u_xlat28.x = x_3221;
    } else {
      u_xlat28.x = 1.0f;
    }
    let x_3226 : f32 = u_xlat28.x;
    u_xlat50.x = (-(x_3226) + 1.0f);
    let x_3231 : f32 = u_xlat3.x;
    let x_3233 : f32 = u_xlat50.x;
    let x_3236 : f32 = u_xlat28.x;
    u_xlat28.x = ((x_3231 * x_3233) + x_3236);
    let x_3240 : f32 = u_xlat28.x;
    let x_3242 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3240 * x_3242);
    let x_3245 : vec4<f32> = u_xlat6;
    let x_3247 : i32 = u_xlati5;
    let x_3249 : vec4<f32> = x_1733.x_AdditionalLightsColor[x_3247];
    let x_3251 : vec3<f32> = (vec3<f32>(x_3245.x, x_3245.x, x_3245.x) * vec3<f32>(x_3249.x, x_3249.y, x_3249.z));
    let x_3252 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3251.x, x_3251.y, x_3251.z, x_3252.w);
    let x_3254 : vec4<f32> = u_xlat1;
    let x_3256 : vec3<f32> = u_xlat27;
    u_xlat5.x = dot(vec3<f32>(x_3254.x, x_3254.y, x_3254.z), x_3256);
    let x_3260 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_3260, 0.0f, 1.0f);
    let x_3263 : vec4<f32> = u_xlat5;
    let x_3265 : vec4<f32> = u_xlat6;
    let x_3267 : vec3<f32> = (vec3<f32>(x_3263.x, x_3263.x, x_3263.x) * vec3<f32>(x_3265.x, x_3265.y, x_3265.z));
    let x_3268 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3267.x, x_3267.y, x_3267.z, x_3268.w);
    let x_3270 : vec4<f32> = u_xlat5;
    let x_3272 : vec4<f32> = u_xlat0;
    let x_3275 : vec4<f32> = u_xlat4;
    let x_3277 : vec3<f32> = ((vec3<f32>(x_3270.x, x_3270.y, x_3270.z) * vec3<f32>(x_3272.y, x_3272.z, x_3272.w)) + vec3<f32>(x_3275.x, x_3275.y, x_3275.z));
    let x_3278 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3277.x, x_3277.y, x_3277.z, x_3278.w);

    continuing {
      let x_3280 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3280 + bitcast<u32>(1i));
    }
  }
  let x_3283 : vec3<f32> = u_xlat24;
  let x_3284 : vec4<f32> = u_xlat0;
  let x_3287 : vec3<f32> = u_xlat25;
  u_xlat22 = ((x_3283 * vec3<f32>(x_3284.y, x_3284.z, x_3284.w)) + x_3287);
  let x_3289 : vec4<f32> = u_xlat4;
  let x_3291 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_3289.x, x_3289.y, x_3289.z) + x_3291);
  let x_3293 : f32 = u_xlat2;
  let x_3294 : f32 = u_xlat2;
  u_xlat1.x = (x_3293 * -(x_3294));
  let x_3299 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3299);
  let x_3302 : vec3<f32> = u_xlat22;
  let x_3304 : vec4<f32> = x_45.unity_FogColor;
  u_xlat22 = (x_3302 + -(vec3<f32>(x_3304.x, x_3304.y, x_3304.z)));
  let x_3310 : vec4<f32> = u_xlat1;
  let x_3312 : vec3<f32> = u_xlat22;
  let x_3315 : vec4<f32> = x_45.unity_FogColor;
  let x_3317 : vec3<f32> = ((vec3<f32>(x_3310.x, x_3310.x, x_3310.x) * x_3312) + vec3<f32>(x_3315.x, x_3315.y, x_3315.z));
  let x_3318 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3317.x, x_3317.y, x_3317.z, x_3318.w);
  let x_3322 : f32 = x_57.x_Surface;
  u_xlatb22 = (x_3322 == 1.0f);
  let x_3324 : bool = u_xlatb22;
  if (x_3324) {
    let x_3329 : f32 = u_xlat0.x;
    x_3325 = x_3329;
  } else {
    x_3325 = 1.0f;
  }
  let x_3331 : f32 = x_3325;
  SV_Target0.w = x_3331;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


