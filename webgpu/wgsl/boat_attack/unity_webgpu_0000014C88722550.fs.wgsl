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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb23 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat67 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlatb68 : bool;

@group(1) @binding(4) var<uniform> x_258 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat71 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlatb25 : bool;

var<private> u_xlatu68 : u32;

var<private> u_xlatu5 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1712 : AdditionalLights;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlati28 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1875 : f32;
  var x_1884 : f32;
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
  var x_3194 : f32;
  var x_3304 : f32;
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
        let x_1104 : vec2<f32> = ((vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1099.x, x_1099.y)) + vec2<f32>(x_1102.w, x_1102.y));
        let x_1105 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1104.x, x_1104.y, x_1105.z);
        let x_1108 : f32 = u_xlat8.y;
        u_xlat5.w = x_1108;
        let x_1111 : vec4<f32> = u_xlat3;
        let x_1114 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1117 : vec4<f32> = u_xlat5;
        u_xlat55 = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1114.x, x_1114.y)) + vec2<f32>(x_1117.x, x_1117.w));
        let x_1120 : vec4<f32> = u_xlat8;
        let x_1121 : vec3<f32> = vec3<f32>(x_1120.x, x_1120.z, x_1120.w);
        let x_1122 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1121.x, x_1122.y, x_1121.y, x_1121.z);
        let x_1124 : vec4<f32> = u_xlat3;
        let x_1127 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1130.y));
        let x_1134 : vec4<f32> = u_xlat3;
        let x_1137 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1140 : vec4<f32> = u_xlat6;
        u_xlat50 = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.w, x_1140.y));
        let x_1144 : f32 = u_xlat5.x;
        u_xlat6.x = x_1144;
        let x_1146 : vec4<f32> = u_xlat3;
        let x_1149 : vec4<f32> = x_258.x_MainLightShadowmapSize;
        let x_1152 : vec4<f32> = u_xlat6;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(x_1149.x, x_1149.y)) + vec2<f32>(x_1152.x, x_1152.y));
        let x_1155 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1158 : vec4<f32> = u_xlat4;
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_1158.x, x_1158.x, x_1158.x, x_1158.x) * x_1160);
        let x_1163 : vec4<f32> = u_xlat4;
        let x_1165 : vec4<f32> = u_xlat7;
        u_xlat15 = (vec4<f32>(x_1163.y, x_1163.y, x_1163.y, x_1163.y) * x_1165);
        let x_1168 : vec4<f32> = u_xlat4;
        let x_1170 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1168.z, x_1168.z, x_1168.z, x_1168.z) * x_1170);
        let x_1172 : vec4<f32> = u_xlat4;
        let x_1174 : vec4<f32> = u_xlat7;
        u_xlat4 = (vec4<f32>(x_1172.w, x_1172.w, x_1172.w, x_1172.w) * x_1174);
        let x_1177 : vec4<f32> = u_xlat9;
        let x_1178 : vec2<f32> = vec2<f32>(x_1177.x, x_1177.y);
        let x_1180 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1178.x, x_1178.y, x_1180);
        let x_1187 : vec3<f32> = txVec13;
        let x_1189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1187.xy, x_1187.z);
        u_xlat5.x = x_1189;
        let x_1192 : vec4<f32> = u_xlat9;
        let x_1193 : vec2<f32> = vec2<f32>(x_1192.z, x_1192.w);
        let x_1195 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1203 : vec3<f32> = txVec14;
        let x_1205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1203.xy, x_1203.z);
        u_xlat71 = x_1205;
        let x_1206 : f32 = u_xlat71;
        let x_1208 : f32 = u_xlat14.y;
        u_xlat71 = (x_1206 * x_1208);
        let x_1211 : f32 = u_xlat14.x;
        let x_1213 : f32 = u_xlat5.x;
        let x_1215 : f32 = u_xlat71;
        u_xlat5.x = ((x_1211 * x_1213) + x_1215);
        let x_1219 : vec2<f32> = u_xlat47;
        let x_1221 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec15;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1228.xy, x_1228.z);
        u_xlat47.x = x_1230;
        let x_1233 : f32 = u_xlat14.z;
        let x_1235 : f32 = u_xlat47.x;
        let x_1238 : f32 = u_xlat5.x;
        u_xlat47.x = ((x_1233 * x_1235) + x_1238);
        let x_1242 : vec4<f32> = u_xlat12;
        let x_1243 : vec2<f32> = vec2<f32>(x_1242.x, x_1242.y);
        let x_1245 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1243.x, x_1243.y, x_1245);
        let x_1253 : vec3<f32> = txVec16;
        let x_1255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1253.xy, x_1253.z);
        u_xlat69 = x_1255;
        let x_1257 : f32 = u_xlat14.w;
        let x_1258 : f32 = u_xlat69;
        let x_1261 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1257 * x_1258) + x_1261);
        let x_1265 : vec4<f32> = u_xlat10;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.x, x_1265.y);
        let x_1268 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1275 : vec3<f32> = txVec17;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1275.xy, x_1275.z);
        u_xlat69 = x_1277;
        let x_1279 : f32 = u_xlat15.x;
        let x_1280 : f32 = u_xlat69;
        let x_1283 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1279 * x_1280) + x_1283);
        let x_1287 : vec4<f32> = u_xlat10;
        let x_1288 : vec2<f32> = vec2<f32>(x_1287.z, x_1287.w);
        let x_1290 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1288.x, x_1288.y, x_1290);
        let x_1297 : vec3<f32> = txVec18;
        let x_1299 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1297.xy, x_1297.z);
        u_xlat69 = x_1299;
        let x_1301 : f32 = u_xlat15.y;
        let x_1302 : f32 = u_xlat69;
        let x_1305 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1301 * x_1302) + x_1305);
        let x_1309 : vec4<f32> = u_xlat11;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.x, x_1309.y);
        let x_1312 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec19;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat69 = x_1321;
        let x_1323 : f32 = u_xlat15.z;
        let x_1324 : f32 = u_xlat69;
        let x_1327 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1323 * x_1324) + x_1327);
        let x_1331 : vec4<f32> = u_xlat12;
        let x_1332 : vec2<f32> = vec2<f32>(x_1331.z, x_1331.w);
        let x_1334 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1332.x, x_1332.y, x_1334);
        let x_1341 : vec3<f32> = txVec20;
        let x_1343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1341.xy, x_1341.z);
        u_xlat69 = x_1343;
        let x_1345 : f32 = u_xlat15.w;
        let x_1346 : f32 = u_xlat69;
        let x_1349 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1345 * x_1346) + x_1349);
        let x_1353 : vec4<f32> = u_xlat13;
        let x_1354 : vec2<f32> = vec2<f32>(x_1353.x, x_1353.y);
        let x_1356 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1354.x, x_1354.y, x_1356);
        let x_1363 : vec3<f32> = txVec21;
        let x_1365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1363.xy, x_1363.z);
        u_xlat69 = x_1365;
        let x_1367 : f32 = u_xlat16.x;
        let x_1368 : f32 = u_xlat69;
        let x_1371 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1367 * x_1368) + x_1371);
        let x_1375 : vec4<f32> = u_xlat13;
        let x_1376 : vec2<f32> = vec2<f32>(x_1375.z, x_1375.w);
        let x_1378 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1376.x, x_1376.y, x_1378);
        let x_1385 : vec3<f32> = txVec22;
        let x_1387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1385.xy, x_1385.z);
        u_xlat69 = x_1387;
        let x_1389 : f32 = u_xlat16.y;
        let x_1390 : f32 = u_xlat69;
        let x_1393 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1389 * x_1390) + x_1393);
        let x_1397 : vec3<f32> = u_xlat27;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec23;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat69 = x_1409;
        let x_1411 : f32 = u_xlat16.z;
        let x_1412 : f32 = u_xlat69;
        let x_1415 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1411 * x_1412) + x_1415);
        let x_1419 : vec2<f32> = u_xlat55;
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec24;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1428.xy, x_1428.z);
        u_xlat69 = x_1430;
        let x_1432 : f32 = u_xlat16.w;
        let x_1433 : f32 = u_xlat69;
        let x_1436 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1432 * x_1433) + x_1436);
        let x_1440 : vec4<f32> = u_xlat8;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec25;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1450.xy, x_1450.z);
        u_xlat69 = x_1452;
        let x_1454 : f32 = u_xlat4.x;
        let x_1455 : f32 = u_xlat69;
        let x_1458 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat8;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec26;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat69 = x_1474;
        let x_1476 : f32 = u_xlat4.y;
        let x_1477 : f32 = u_xlat69;
        let x_1480 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec2<f32> = u_xlat50;
        let x_1486 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec27;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat69 = x_1495;
        let x_1497 : f32 = u_xlat4.z;
        let x_1498 : f32 = u_xlat69;
        let x_1501 : f32 = u_xlat47.x;
        u_xlat47.x = ((x_1497 * x_1498) + x_1501);
        let x_1505 : vec4<f32> = u_xlat3;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec28;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat3.x = x_1517;
        let x_1520 : f32 = u_xlat4.w;
        let x_1522 : f32 = u_xlat3.x;
        let x_1525 : f32 = u_xlat47.x;
        u_xlat68 = ((x_1520 * x_1522) + x_1525);
      }
    }
  } else {
    let x_1529 : vec4<f32> = vs_TEXCOORD6;
    let x_1530 : vec2<f32> = vec2<f32>(x_1529.x, x_1529.y);
    let x_1532 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
    let x_1539 : vec3<f32> = txVec29;
    let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
    u_xlat68 = x_1541;
  }
  let x_1543 : f32 = x_258.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1543) + 1.0f);
  let x_1547 : f32 = u_xlat68;
  let x_1549 : f32 = x_258.x_MainLightShadowParams.x;
  let x_1552 : f32 = u_xlat3.x;
  u_xlat68 = ((x_1547 * x_1549) + x_1552);
  let x_1555 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (0.0f >= x_1555);
  let x_1559 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (x_1559 >= 1.0f);
  let x_1561 : bool = u_xlatb25;
  let x_1562 : bool = u_xlatb3;
  u_xlatb3 = (x_1561 | x_1562);
  let x_1564 : bool = u_xlatb3;
  let x_1565 : f32 = u_xlat68;
  u_xlat68 = select(x_1565, 1.0f, x_1564);
  let x_1567 : vec3<f32> = vs_TEXCOORD1;
  let x_1571 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_1573 : vec3<f32> = (x_1567 + -(x_1571));
  let x_1574 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
  let x_1576 : vec4<f32> = u_xlat3;
  let x_1578 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1576.x, x_1576.y, x_1576.z), vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1583 : f32 = u_xlat3.x;
  let x_1585 : f32 = x_258.x_MainLightShadowParams.z;
  let x_1588 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1583 * x_1585) + x_1588);
  let x_1592 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1592, 0.0f, 1.0f);
  let x_1595 : f32 = u_xlat68;
  u_xlat47.x = (-(x_1595) + 1.0f);
  let x_1600 : f32 = u_xlat25.x;
  let x_1602 : f32 = u_xlat47.x;
  let x_1604 : f32 = u_xlat68;
  u_xlat68 = ((x_1600 * x_1602) + x_1604);
  let x_1606 : f32 = u_xlat68;
  let x_1608 : f32 = x_95.unity_LightData.z;
  u_xlat68 = (x_1606 * x_1608);
  let x_1610 : f32 = u_xlat68;
  let x_1613 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat25 = (vec3<f32>(x_1610, x_1610, x_1610) * vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1616 : vec3<f32> = u_xlat1;
  let x_1618 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat68 = dot(x_1616, vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
  let x_1621 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1621, 0.0f, 1.0f);
  let x_1623 : f32 = u_xlat68;
  let x_1625 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1623, x_1623, x_1623) * x_1625);
  let x_1627 : vec4<f32> = u_xlat0;
  let x_1629 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1627.y, x_1627.z, x_1627.w) * x_1629);
  let x_1632 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1634 : f32 = x_95.unity_LightData.y;
  u_xlat68 = min(x_1632, x_1634);
  let x_1638 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_1638));
  let x_1642 : f32 = u_xlat3.x;
  let x_1645 : f32 = x_258.x_AdditionalShadowFadeParams.x;
  let x_1648 : f32 = x_258.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1642 * x_1645) + x_1648);
  let x_1652 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1652, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1665 : u32 = u_xlatu_loop_1;
    let x_1666 : u32 = u_xlatu68;
    if ((x_1665 < x_1666)) {
    } else {
      break;
    }
    let x_1669 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1669 >> 2u);
    let x_1673 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_1673 & 3u));
    let x_1676 : u32 = u_xlatu5;
    let x_1679 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1676)];
    let x_1689 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1694 : vec4<u32> = indexable[x_1689];
    u_xlat5.x = dot(x_1679, bitcast<vec4<f32>>(x_1694));
    let x_1700 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1700);
    let x_1702 : vec3<f32> = vs_TEXCOORD1;
    let x_1713 : i32 = u_xlati5;
    let x_1715 : vec4<f32> = x_1712.x_AdditionalLightsPosition[x_1713];
    let x_1718 : i32 = u_xlati5;
    let x_1720 : vec4<f32> = x_1712.x_AdditionalLightsPosition[x_1718];
    u_xlat27 = ((-(x_1702) * vec3<f32>(x_1715.w, x_1715.w, x_1715.w)) + vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
    let x_1723 : vec3<f32> = u_xlat27;
    let x_1724 : vec3<f32> = u_xlat27;
    u_xlat6.x = dot(x_1723, x_1724);
    let x_1728 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1728, 0.00006103515625f);
    let x_1734 : f32 = u_xlat6.x;
    u_xlat28.x = inverseSqrt(x_1734);
    let x_1737 : vec3<f32> = u_xlat27;
    let x_1738 : vec3<f32> = u_xlat28;
    u_xlat27 = (x_1737 * vec3<f32>(x_1738.x, x_1738.x, x_1738.x));
    let x_1742 : f32 = u_xlat6.x;
    u_xlat28.x = (1.0f / x_1742);
    let x_1746 : f32 = u_xlat6.x;
    let x_1747 : i32 = u_xlati5;
    let x_1749 : f32 = x_1712.x_AdditionalLightsAttenuation[x_1747].x;
    u_xlat6.x = (x_1746 * x_1749);
    let x_1753 : f32 = u_xlat6.x;
    let x_1756 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1753) * x_1756) + 1.0f);
    let x_1761 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1761, 0.0f);
    let x_1765 : f32 = u_xlat6.x;
    let x_1767 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1765 * x_1767);
    let x_1771 : f32 = u_xlat6.x;
    let x_1773 : f32 = u_xlat28.x;
    u_xlat6.x = (x_1771 * x_1773);
    let x_1776 : i32 = u_xlati5;
    let x_1778 : vec4<f32> = x_1712.x_AdditionalLightsSpotDir[x_1776];
    let x_1780 : vec3<f32> = u_xlat27;
    u_xlat28.x = dot(vec3<f32>(x_1778.x, x_1778.y, x_1778.z), x_1780);
    let x_1784 : f32 = u_xlat28.x;
    let x_1785 : i32 = u_xlati5;
    let x_1787 : f32 = x_1712.x_AdditionalLightsAttenuation[x_1785].z;
    let x_1789 : i32 = u_xlati5;
    let x_1791 : f32 = x_1712.x_AdditionalLightsAttenuation[x_1789].w;
    u_xlat28.x = ((x_1784 * x_1787) + x_1791);
    let x_1795 : f32 = u_xlat28.x;
    u_xlat28.x = clamp(x_1795, 0.0f, 1.0f);
    let x_1799 : f32 = u_xlat28.x;
    let x_1801 : f32 = u_xlat28.x;
    u_xlat28.x = (x_1799 * x_1801);
    let x_1805 : f32 = u_xlat28.x;
    let x_1807 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1805 * x_1807);
    let x_1812 : i32 = u_xlati5;
    let x_1814 : f32 = x_258.x_AdditionalShadowParams[x_1812].w;
    u_xlati28 = i32(x_1814);
    let x_1817 : i32 = u_xlati28;
    u_xlatb50 = (x_1817 >= 0i);
    let x_1819 : bool = u_xlatb50;
    if (x_1819) {
      let x_1823 : i32 = u_xlati5;
      let x_1825 : f32 = x_258.x_AdditionalShadowParams[x_1823].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1825, x_1825, x_1825, x_1825))));
      let x_1830 : bool = u_xlatb50;
      if (x_1830) {
        let x_1835 : vec3<f32> = u_xlat27;
        let x_1838 : vec3<f32> = u_xlat27;
        let x_1841 : vec4<bool> = (abs(vec4<f32>(x_1835.z, x_1835.z, x_1835.y, x_1835.z)) >= abs(vec4<f32>(x_1838.x, x_1838.y, x_1838.x, x_1838.x)));
        let x_1843 : vec3<bool> = vec3<bool>(x_1841.x, x_1841.y, x_1841.z);
        let x_1844 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1843.x, x_1843.y, x_1843.z, x_1844.w);
        let x_1847 : bool = u_xlatb7.y;
        let x_1849 : bool = u_xlatb7.x;
        u_xlatb50 = (x_1847 & x_1849);
        let x_1851 : vec3<f32> = u_xlat27;
        let x_1854 : vec4<bool> = (-(vec4<f32>(x_1851.z, x_1851.y, x_1851.z, x_1851.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1855 : vec3<bool> = vec3<bool>(x_1854.x, x_1854.y, x_1854.w);
        let x_1856 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1855.x, x_1855.y, x_1856.z, x_1855.z);
        let x_1859 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1859);
        let x_1865 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1865);
        let x_1871 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1871);
        let x_1874 : bool = u_xlatb7.z;
        if (x_1874) {
          let x_1879 : f32 = u_xlat7.y;
          x_1875 = x_1879;
        } else {
          let x_1881 : f32 = u_xlat72;
          x_1875 = x_1881;
        }
        let x_1882 : f32 = x_1875;
        u_xlat72 = x_1882;
        let x_1883 : bool = u_xlatb50;
        if (x_1883) {
          let x_1888 : f32 = u_xlat7.x;
          x_1884 = x_1888;
        } else {
          let x_1890 : f32 = u_xlat72;
          x_1884 = x_1890;
        }
        let x_1891 : f32 = x_1884;
        u_xlat50.x = x_1891;
        let x_1893 : i32 = u_xlati5;
        let x_1895 : f32 = x_258.x_AdditionalShadowParams[x_1893].w;
        u_xlat72 = trunc(x_1895);
        let x_1898 : f32 = u_xlat50.x;
        let x_1899 : f32 = u_xlat72;
        u_xlat50.x = (x_1898 + x_1899);
        let x_1903 : f32 = u_xlat50.x;
        u_xlati28 = i32(x_1903);
      }
      let x_1905 : i32 = u_xlati28;
      u_xlati28 = (x_1905 << bitcast<u32>(2i));
      let x_1907 : vec3<f32> = vs_TEXCOORD1;
      let x_1910 : i32 = u_xlati28;
      let x_1913 : i32 = u_xlati28;
      let x_1917 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_1910 + 1i) / 4i)][((x_1913 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1907.y, x_1907.y, x_1907.y, x_1907.y) * x_1917);
      let x_1919 : i32 = u_xlati28;
      let x_1921 : i32 = u_xlati28;
      let x_1924 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[(x_1919 / 4i)][(x_1921 % 4i)];
      let x_1925 : vec3<f32> = vs_TEXCOORD1;
      let x_1928 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1924 * vec4<f32>(x_1925.x, x_1925.x, x_1925.x, x_1925.x)) + x_1928);
      let x_1930 : i32 = u_xlati28;
      let x_1933 : i32 = u_xlati28;
      let x_1937 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_1930 + 2i) / 4i)][((x_1933 + 2i) % 4i)];
      let x_1938 : vec3<f32> = vs_TEXCOORD1;
      let x_1941 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1937 * vec4<f32>(x_1938.z, x_1938.z, x_1938.z, x_1938.z)) + x_1941);
      let x_1943 : vec4<f32> = u_xlat7;
      let x_1944 : i32 = u_xlati28;
      let x_1947 : i32 = u_xlati28;
      let x_1951 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_1944 + 3i) / 4i)][((x_1947 + 3i) % 4i)];
      u_xlat7 = (x_1943 + x_1951);
      let x_1953 : vec4<f32> = u_xlat7;
      let x_1955 : vec4<f32> = u_xlat7;
      u_xlat28 = (vec3<f32>(x_1953.x, x_1953.y, x_1953.z) / vec3<f32>(x_1955.w, x_1955.w, x_1955.w));
      let x_1958 : i32 = u_xlati5;
      let x_1960 : f32 = x_258.x_AdditionalShadowParams[x_1958].y;
      u_xlatb7.x = (0.0f < x_1960);
      let x_1964 : bool = u_xlatb7.x;
      if (x_1964) {
        let x_1967 : i32 = u_xlati5;
        let x_1969 : f32 = x_258.x_AdditionalShadowParams[x_1967].y;
        u_xlatb7.x = (1.0f == x_1969);
        let x_1973 : bool = u_xlatb7.x;
        if (x_1973) {
          let x_1976 : vec3<f32> = u_xlat28;
          let x_1980 : vec4<f32> = x_258.x_AdditionalShadowOffset0;
          u_xlat7 = (vec4<f32>(x_1976.x, x_1976.y, x_1976.x, x_1976.y) + x_1980);
          let x_1983 : vec4<f32> = u_xlat7;
          let x_1984 : vec2<f32> = vec2<f32>(x_1983.x, x_1983.y);
          let x_1986 : f32 = u_xlat28.z;
          txVec30 = vec3<f32>(x_1984.x, x_1984.y, x_1986);
          let x_1994 : vec3<f32> = txVec30;
          let x_1996 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1994.xy, x_1994.z);
          u_xlat8.x = x_1996;
          let x_1999 : vec4<f32> = u_xlat7;
          let x_2000 : vec2<f32> = vec2<f32>(x_1999.z, x_1999.w);
          let x_2002 : f32 = u_xlat28.z;
          txVec31 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
          let x_2009 : vec3<f32> = txVec31;
          let x_2011 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2009.xy, x_2009.z);
          u_xlat8.y = x_2011;
          let x_2013 : vec3<f32> = u_xlat28;
          let x_2017 : vec4<f32> = x_258.x_AdditionalShadowOffset1;
          u_xlat7 = (vec4<f32>(x_2013.x, x_2013.y, x_2013.x, x_2013.y) + x_2017);
          let x_2020 : vec4<f32> = u_xlat7;
          let x_2021 : vec2<f32> = vec2<f32>(x_2020.x, x_2020.y);
          let x_2023 : f32 = u_xlat28.z;
          txVec32 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
          let x_2030 : vec3<f32> = txVec32;
          let x_2032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2030.xy, x_2030.z);
          u_xlat8.z = x_2032;
          let x_2035 : vec4<f32> = u_xlat7;
          let x_2036 : vec2<f32> = vec2<f32>(x_2035.z, x_2035.w);
          let x_2038 : f32 = u_xlat28.z;
          txVec33 = vec3<f32>(x_2036.x, x_2036.y, x_2038);
          let x_2045 : vec3<f32> = txVec33;
          let x_2047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2045.xy, x_2045.z);
          u_xlat8.w = x_2047;
          let x_2049 : vec4<f32> = u_xlat8;
          u_xlat7.x = dot(x_2049, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2054 : i32 = u_xlati5;
          let x_2056 : f32 = x_258.x_AdditionalShadowParams[x_2054].y;
          u_xlatb29 = (2.0f == x_2056);
          let x_2058 : bool = u_xlatb29;
          if (x_2058) {
            let x_2062 : vec3<f32> = u_xlat28;
            let x_2066 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2062.x, x_2062.y) * vec2<f32>(x_2066.z, x_2066.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2070 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2070);
            let x_2072 : vec3<f32> = u_xlat28;
            let x_2075 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2078 : vec2<f32> = u_xlat29;
            let x_2080 : vec2<f32> = ((vec2<f32>(x_2072.x, x_2072.y) * vec2<f32>(x_2075.z, x_2075.w)) + -(x_2078));
            let x_2081 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
            let x_2083 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2083.x, x_2083.x, x_2083.y, x_2083.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2086 : vec4<f32> = u_xlat9;
            let x_2088 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2086.x, x_2086.x, x_2086.z, x_2086.z) * vec4<f32>(x_2088.x, x_2088.x, x_2088.z, x_2088.z));
            let x_2092 : vec4<f32> = u_xlat10;
            u_xlat52 = (vec2<f32>(x_2092.y, x_2092.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2095 : vec4<f32> = u_xlat10;
            let x_2098 : vec4<f32> = u_xlat8;
            let x_2101 : vec2<f32> = ((vec2<f32>(x_2095.x, x_2095.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2098.x, x_2098.y)));
            let x_2102 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2101.x, x_2102.y, x_2101.y, x_2102.w);
            let x_2104 : vec4<f32> = u_xlat8;
            let x_2107 : vec2<f32> = (-(vec2<f32>(x_2104.x, x_2104.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2108 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2107.x, x_2107.y, x_2108.z, x_2108.w);
            let x_2111 : vec4<f32> = u_xlat8;
            u_xlat54 = min(vec2<f32>(x_2111.x, x_2111.y), vec2<f32>(0.0f, 0.0f));
            let x_2114 : vec2<f32> = u_xlat54;
            let x_2116 : vec2<f32> = u_xlat54;
            let x_2118 : vec4<f32> = u_xlat10;
            u_xlat54 = ((-(x_2114) * x_2116) + vec2<f32>(x_2118.x, x_2118.y));
            let x_2121 : vec4<f32> = u_xlat8;
            let x_2123 : vec2<f32> = max(vec2<f32>(x_2121.x, x_2121.y), vec2<f32>(0.0f, 0.0f));
            let x_2124 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2123.x, x_2123.y, x_2124.z, x_2124.w);
            let x_2126 : vec4<f32> = u_xlat8;
            let x_2129 : vec4<f32> = u_xlat8;
            let x_2132 : vec4<f32> = u_xlat9;
            let x_2134 : vec2<f32> = ((-(vec2<f32>(x_2126.x, x_2126.y)) * vec2<f32>(x_2129.x, x_2129.y)) + vec2<f32>(x_2132.y, x_2132.w));
            let x_2135 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2134.x, x_2134.y, x_2135.z, x_2135.w);
            let x_2137 : vec2<f32> = u_xlat54;
            u_xlat54 = (x_2137 + vec2<f32>(1.0f, 1.0f));
            let x_2139 : vec4<f32> = u_xlat8;
            let x_2141 : vec2<f32> = (vec2<f32>(x_2139.x, x_2139.y) + vec2<f32>(1.0f, 1.0f));
            let x_2142 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
            let x_2144 : vec4<f32> = u_xlat9;
            let x_2146 : vec2<f32> = (vec2<f32>(x_2144.x, x_2144.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2147 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2146.x, x_2146.y, x_2147.z, x_2147.w);
            let x_2149 : vec4<f32> = u_xlat10;
            let x_2151 : vec2<f32> = (vec2<f32>(x_2149.x, x_2149.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2152 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2151.x, x_2151.y, x_2152.z, x_2152.w);
            let x_2154 : vec2<f32> = u_xlat54;
            let x_2155 : vec2<f32> = (x_2154 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2156 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2155.x, x_2155.y, x_2156.z, x_2156.w);
            let x_2158 : vec4<f32> = u_xlat8;
            let x_2160 : vec2<f32> = (vec2<f32>(x_2158.x, x_2158.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2161 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2160.x, x_2160.y, x_2161.z, x_2161.w);
            let x_2163 : vec4<f32> = u_xlat9;
            let x_2165 : vec2<f32> = (vec2<f32>(x_2163.y, x_2163.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2166 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2165.x, x_2165.y, x_2166.z, x_2166.w);
            let x_2169 : f32 = u_xlat10.x;
            u_xlat11.z = x_2169;
            let x_2172 : f32 = u_xlat8.x;
            u_xlat11.w = x_2172;
            let x_2175 : f32 = u_xlat13.x;
            u_xlat12.z = x_2175;
            let x_2178 : f32 = u_xlat52.x;
            u_xlat12.w = x_2178;
            let x_2180 : vec4<f32> = u_xlat11;
            let x_2182 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2180.z, x_2180.w, x_2180.x, x_2180.z) + vec4<f32>(x_2182.z, x_2182.w, x_2182.x, x_2182.z));
            let x_2186 : f32 = u_xlat11.y;
            u_xlat10.z = x_2186;
            let x_2189 : f32 = u_xlat8.y;
            u_xlat10.w = x_2189;
            let x_2192 : f32 = u_xlat12.y;
            u_xlat13.z = x_2192;
            let x_2195 : f32 = u_xlat52.y;
            u_xlat13.w = x_2195;
            let x_2197 : vec4<f32> = u_xlat10;
            let x_2199 : vec4<f32> = u_xlat13;
            let x_2201 : vec3<f32> = (vec3<f32>(x_2197.z, x_2197.y, x_2197.w) + vec3<f32>(x_2199.z, x_2199.y, x_2199.w));
            let x_2202 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2201.x, x_2201.y, x_2201.z, x_2202.w);
            let x_2204 : vec4<f32> = u_xlat12;
            let x_2206 : vec4<f32> = u_xlat9;
            let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.z, x_2204.w) / vec3<f32>(x_2206.z, x_2206.w, x_2206.y));
            let x_2209 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
            let x_2211 : vec4<f32> = u_xlat10;
            let x_2213 : vec3<f32> = (vec3<f32>(x_2211.x, x_2211.y, x_2211.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2214 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2213.x, x_2213.y, x_2213.z, x_2214.w);
            let x_2216 : vec4<f32> = u_xlat13;
            let x_2218 : vec4<f32> = u_xlat8;
            let x_2220 : vec3<f32> = (vec3<f32>(x_2216.z, x_2216.y, x_2216.w) / vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
            let x_2221 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
            let x_2223 : vec4<f32> = u_xlat11;
            let x_2225 : vec3<f32> = (vec3<f32>(x_2223.x, x_2223.y, x_2223.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2226 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
            let x_2228 : vec4<f32> = u_xlat10;
            let x_2231 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2233 : vec3<f32> = (vec3<f32>(x_2228.y, x_2228.x, x_2228.z) * vec3<f32>(x_2231.x, x_2231.x, x_2231.x));
            let x_2234 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2233.x, x_2233.y, x_2233.z, x_2234.w);
            let x_2236 : vec4<f32> = u_xlat11;
            let x_2239 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2241 : vec3<f32> = (vec3<f32>(x_2236.x, x_2236.y, x_2236.z) * vec3<f32>(x_2239.y, x_2239.y, x_2239.y));
            let x_2242 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
            let x_2245 : f32 = u_xlat11.x;
            u_xlat10.w = x_2245;
            let x_2247 : vec2<f32> = u_xlat29;
            let x_2250 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2253 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2247.x, x_2247.y, x_2247.x, x_2247.y) * vec4<f32>(x_2250.x, x_2250.y, x_2250.x, x_2250.y)) + vec4<f32>(x_2253.y, x_2253.w, x_2253.x, x_2253.w));
            let x_2256 : vec2<f32> = u_xlat29;
            let x_2258 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2261 : vec4<f32> = u_xlat10;
            let x_2263 : vec2<f32> = ((x_2256 * vec2<f32>(x_2258.x, x_2258.y)) + vec2<f32>(x_2261.z, x_2261.w));
            let x_2264 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
            let x_2267 : f32 = u_xlat10.y;
            u_xlat11.w = x_2267;
            let x_2269 : vec4<f32> = u_xlat11;
            let x_2270 : vec2<f32> = vec2<f32>(x_2269.y, x_2269.z);
            let x_2271 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2271.x, x_2270.x, x_2271.z, x_2270.y);
            let x_2273 : vec2<f32> = u_xlat29;
            let x_2276 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2279 : vec4<f32> = u_xlat10;
            u_xlat14 = ((vec4<f32>(x_2273.x, x_2273.y, x_2273.x, x_2273.y) * vec4<f32>(x_2276.x, x_2276.y, x_2276.x, x_2276.y)) + vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2279.y));
            let x_2282 : vec2<f32> = u_xlat29;
            let x_2285 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2288 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2282.x, x_2282.y, x_2282.x, x_2282.y) * vec4<f32>(x_2285.x, x_2285.y, x_2285.x, x_2285.y)) + vec4<f32>(x_2288.w, x_2288.y, x_2288.w, x_2288.z));
            let x_2291 : vec2<f32> = u_xlat29;
            let x_2294 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2297 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2291.x, x_2291.y, x_2291.x, x_2291.y) * vec4<f32>(x_2294.x, x_2294.y, x_2294.x, x_2294.y)) + vec4<f32>(x_2297.x, x_2297.w, x_2297.z, x_2297.w));
            let x_2300 : vec4<f32> = u_xlat8;
            let x_2302 : vec4<f32> = u_xlat9;
            u_xlat15 = (vec4<f32>(x_2300.x, x_2300.x, x_2300.x, x_2300.y) * vec4<f32>(x_2302.z, x_2302.w, x_2302.y, x_2302.z));
            let x_2305 : vec4<f32> = u_xlat8;
            let x_2307 : vec4<f32> = u_xlat9;
            u_xlat16 = (vec4<f32>(x_2305.y, x_2305.y, x_2305.z, x_2305.z) * x_2307);
            let x_2310 : f32 = u_xlat8.z;
            let x_2312 : f32 = u_xlat9.y;
            u_xlat29.x = (x_2310 * x_2312);
            let x_2316 : vec4<f32> = u_xlat12;
            let x_2317 : vec2<f32> = vec2<f32>(x_2316.x, x_2316.y);
            let x_2319 : f32 = u_xlat28.z;
            txVec34 = vec3<f32>(x_2317.x, x_2317.y, x_2319);
            let x_2327 : vec3<f32> = txVec34;
            let x_2329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2327.xy, x_2327.z);
            u_xlat51 = x_2329;
            let x_2331 : vec4<f32> = u_xlat12;
            let x_2332 : vec2<f32> = vec2<f32>(x_2331.z, x_2331.w);
            let x_2334 : f32 = u_xlat28.z;
            txVec35 = vec3<f32>(x_2332.x, x_2332.y, x_2334);
            let x_2342 : vec3<f32> = txVec35;
            let x_2344 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2342.xy, x_2342.z);
            u_xlat73 = x_2344;
            let x_2345 : f32 = u_xlat73;
            let x_2347 : f32 = u_xlat15.y;
            u_xlat73 = (x_2345 * x_2347);
            let x_2350 : f32 = u_xlat15.x;
            let x_2351 : f32 = u_xlat51;
            let x_2353 : f32 = u_xlat73;
            u_xlat51 = ((x_2350 * x_2351) + x_2353);
            let x_2356 : vec4<f32> = u_xlat13;
            let x_2357 : vec2<f32> = vec2<f32>(x_2356.x, x_2356.y);
            let x_2359 : f32 = u_xlat28.z;
            txVec36 = vec3<f32>(x_2357.x, x_2357.y, x_2359);
            let x_2366 : vec3<f32> = txVec36;
            let x_2368 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2366.xy, x_2366.z);
            u_xlat73 = x_2368;
            let x_2370 : f32 = u_xlat15.z;
            let x_2371 : f32 = u_xlat73;
            let x_2373 : f32 = u_xlat51;
            u_xlat51 = ((x_2370 * x_2371) + x_2373);
            let x_2376 : vec4<f32> = u_xlat11;
            let x_2377 : vec2<f32> = vec2<f32>(x_2376.x, x_2376.y);
            let x_2379 : f32 = u_xlat28.z;
            txVec37 = vec3<f32>(x_2377.x, x_2377.y, x_2379);
            let x_2386 : vec3<f32> = txVec37;
            let x_2388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2386.xy, x_2386.z);
            u_xlat73 = x_2388;
            let x_2390 : f32 = u_xlat15.w;
            let x_2391 : f32 = u_xlat73;
            let x_2393 : f32 = u_xlat51;
            u_xlat51 = ((x_2390 * x_2391) + x_2393);
            let x_2396 : vec4<f32> = u_xlat14;
            let x_2397 : vec2<f32> = vec2<f32>(x_2396.x, x_2396.y);
            let x_2399 : f32 = u_xlat28.z;
            txVec38 = vec3<f32>(x_2397.x, x_2397.y, x_2399);
            let x_2406 : vec3<f32> = txVec38;
            let x_2408 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2406.xy, x_2406.z);
            u_xlat73 = x_2408;
            let x_2410 : f32 = u_xlat16.x;
            let x_2411 : f32 = u_xlat73;
            let x_2413 : f32 = u_xlat51;
            u_xlat51 = ((x_2410 * x_2411) + x_2413);
            let x_2416 : vec4<f32> = u_xlat14;
            let x_2417 : vec2<f32> = vec2<f32>(x_2416.z, x_2416.w);
            let x_2419 : f32 = u_xlat28.z;
            txVec39 = vec3<f32>(x_2417.x, x_2417.y, x_2419);
            let x_2426 : vec3<f32> = txVec39;
            let x_2428 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2426.xy, x_2426.z);
            u_xlat73 = x_2428;
            let x_2430 : f32 = u_xlat16.y;
            let x_2431 : f32 = u_xlat73;
            let x_2433 : f32 = u_xlat51;
            u_xlat51 = ((x_2430 * x_2431) + x_2433);
            let x_2436 : vec4<f32> = u_xlat11;
            let x_2437 : vec2<f32> = vec2<f32>(x_2436.z, x_2436.w);
            let x_2439 : f32 = u_xlat28.z;
            txVec40 = vec3<f32>(x_2437.x, x_2437.y, x_2439);
            let x_2446 : vec3<f32> = txVec40;
            let x_2448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2446.xy, x_2446.z);
            u_xlat73 = x_2448;
            let x_2450 : f32 = u_xlat16.z;
            let x_2451 : f32 = u_xlat73;
            let x_2453 : f32 = u_xlat51;
            u_xlat51 = ((x_2450 * x_2451) + x_2453);
            let x_2456 : vec4<f32> = u_xlat10;
            let x_2457 : vec2<f32> = vec2<f32>(x_2456.x, x_2456.y);
            let x_2459 : f32 = u_xlat28.z;
            txVec41 = vec3<f32>(x_2457.x, x_2457.y, x_2459);
            let x_2466 : vec3<f32> = txVec41;
            let x_2468 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2466.xy, x_2466.z);
            u_xlat73 = x_2468;
            let x_2470 : f32 = u_xlat16.w;
            let x_2471 : f32 = u_xlat73;
            let x_2473 : f32 = u_xlat51;
            u_xlat51 = ((x_2470 * x_2471) + x_2473);
            let x_2476 : vec4<f32> = u_xlat10;
            let x_2477 : vec2<f32> = vec2<f32>(x_2476.z, x_2476.w);
            let x_2479 : f32 = u_xlat28.z;
            txVec42 = vec3<f32>(x_2477.x, x_2477.y, x_2479);
            let x_2486 : vec3<f32> = txVec42;
            let x_2488 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2486.xy, x_2486.z);
            u_xlat73 = x_2488;
            let x_2490 : f32 = u_xlat29.x;
            let x_2491 : f32 = u_xlat73;
            let x_2493 : f32 = u_xlat51;
            u_xlat7.x = ((x_2490 * x_2491) + x_2493);
          } else {
            let x_2497 : vec3<f32> = u_xlat28;
            let x_2500 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            u_xlat29 = ((vec2<f32>(x_2497.x, x_2497.y) * vec2<f32>(x_2500.z, x_2500.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2504 : vec2<f32> = u_xlat29;
            u_xlat29 = floor(x_2504);
            let x_2506 : vec3<f32> = u_xlat28;
            let x_2509 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2512 : vec2<f32> = u_xlat29;
            let x_2514 : vec2<f32> = ((vec2<f32>(x_2506.x, x_2506.y) * vec2<f32>(x_2509.z, x_2509.w)) + -(x_2512));
            let x_2515 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2514.x, x_2514.y, x_2515.z, x_2515.w);
            let x_2517 : vec4<f32> = u_xlat8;
            u_xlat9 = (vec4<f32>(x_2517.x, x_2517.x, x_2517.y, x_2517.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2520 : vec4<f32> = u_xlat9;
            let x_2522 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2520.x, x_2520.x, x_2520.z, x_2520.z) * vec4<f32>(x_2522.x, x_2522.x, x_2522.z, x_2522.z));
            let x_2525 : vec4<f32> = u_xlat10;
            let x_2527 : vec2<f32> = (vec2<f32>(x_2525.y, x_2525.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2528 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2528.x, x_2527.x, x_2528.z, x_2527.y);
            let x_2530 : vec4<f32> = u_xlat10;
            let x_2533 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2530.x, x_2530.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2533.x, x_2533.y)));
            let x_2537 : vec4<f32> = u_xlat8;
            let x_2540 : vec2<f32> = (-(vec2<f32>(x_2537.x, x_2537.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2541 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2540.x, x_2541.y, x_2540.y, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat8;
            let x_2545 : vec2<f32> = min(vec2<f32>(x_2543.x, x_2543.y), vec2<f32>(0.0f, 0.0f));
            let x_2546 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2548 : vec4<f32> = u_xlat10;
            let x_2551 : vec4<f32> = u_xlat10;
            let x_2554 : vec4<f32> = u_xlat9;
            let x_2556 : vec2<f32> = ((-(vec2<f32>(x_2548.x, x_2548.y)) * vec2<f32>(x_2551.x, x_2551.y)) + vec2<f32>(x_2554.x, x_2554.z));
            let x_2557 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2556.x, x_2557.y, x_2556.y, x_2557.w);
            let x_2559 : vec4<f32> = u_xlat8;
            let x_2561 : vec2<f32> = max(vec2<f32>(x_2559.x, x_2559.y), vec2<f32>(0.0f, 0.0f));
            let x_2562 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2561.x, x_2561.y, x_2562.z, x_2562.w);
            let x_2564 : vec4<f32> = u_xlat10;
            let x_2567 : vec4<f32> = u_xlat10;
            let x_2570 : vec4<f32> = u_xlat9;
            let x_2572 : vec2<f32> = ((-(vec2<f32>(x_2564.x, x_2564.y)) * vec2<f32>(x_2567.x, x_2567.y)) + vec2<f32>(x_2570.y, x_2570.w));
            let x_2573 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2573.x, x_2572.x, x_2573.z, x_2572.y);
            let x_2575 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2575 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_2579 : f32 = u_xlat9.y;
            u_xlat10.z = (x_2579 * 0.08163200318813323975f);
            let x_2582 : vec2<f32> = u_xlat52;
            let x_2584 : vec2<f32> = (vec2<f32>(x_2582.y, x_2582.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2585 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2584.x, x_2584.y, x_2585.z, x_2585.w);
            let x_2587 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2587.x, x_2587.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2591 : f32 = u_xlat9.w;
            u_xlat12.z = (x_2591 * 0.08163200318813323975f);
            let x_2595 : f32 = u_xlat12.y;
            u_xlat10.x = x_2595;
            let x_2597 : vec4<f32> = u_xlat8;
            let x_2600 : vec2<f32> = ((vec2<f32>(x_2597.x, x_2597.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2601 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2601.x, x_2600.x, x_2601.z, x_2600.y);
            let x_2603 : vec4<f32> = u_xlat8;
            let x_2606 : vec2<f32> = ((vec2<f32>(x_2603.x, x_2603.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2607 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2606.x, x_2607.y, x_2606.y, x_2607.w);
            let x_2610 : f32 = u_xlat52.x;
            u_xlat9.y = x_2610;
            let x_2613 : f32 = u_xlat11.y;
            u_xlat9.w = x_2613;
            let x_2615 : vec4<f32> = u_xlat9;
            let x_2616 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2615 + x_2616);
            let x_2618 : vec4<f32> = u_xlat8;
            let x_2621 : vec2<f32> = ((vec2<f32>(x_2618.y, x_2618.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2622 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2622.x, x_2621.x, x_2622.z, x_2621.y);
            let x_2624 : vec4<f32> = u_xlat8;
            let x_2627 : vec2<f32> = ((vec2<f32>(x_2624.y, x_2624.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2628 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2627.x, x_2628.y, x_2627.y, x_2628.w);
            let x_2631 : f32 = u_xlat52.y;
            u_xlat11.y = x_2631;
            let x_2633 : vec4<f32> = u_xlat11;
            let x_2634 : vec4<f32> = u_xlat12;
            u_xlat8 = (x_2633 + x_2634);
            let x_2636 : vec4<f32> = u_xlat9;
            let x_2637 : vec4<f32> = u_xlat10;
            u_xlat9 = (x_2636 / x_2637);
            let x_2639 : vec4<f32> = u_xlat9;
            u_xlat9 = (x_2639 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2641 : vec4<f32> = u_xlat11;
            let x_2642 : vec4<f32> = u_xlat8;
            u_xlat11 = (x_2641 / x_2642);
            let x_2644 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2644 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2646 : vec4<f32> = u_xlat9;
            let x_2649 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            u_xlat9 = (vec4<f32>(x_2646.w, x_2646.x, x_2646.y, x_2646.z) * vec4<f32>(x_2649.x, x_2649.x, x_2649.x, x_2649.x));
            let x_2652 : vec4<f32> = u_xlat11;
            let x_2655 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2652.x, x_2652.w, x_2652.y, x_2652.z) * vec4<f32>(x_2655.y, x_2655.y, x_2655.y, x_2655.y));
            let x_2658 : vec4<f32> = u_xlat9;
            let x_2659 : vec3<f32> = vec3<f32>(x_2658.y, x_2658.z, x_2658.w);
            let x_2660 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2659.x, x_2660.y, x_2659.y, x_2659.z);
            let x_2663 : f32 = u_xlat11.x;
            u_xlat12.y = x_2663;
            let x_2665 : vec2<f32> = u_xlat29;
            let x_2668 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2671 : vec4<f32> = u_xlat12;
            u_xlat13 = ((vec4<f32>(x_2665.x, x_2665.y, x_2665.x, x_2665.y) * vec4<f32>(x_2668.x, x_2668.y, x_2668.x, x_2668.y)) + vec4<f32>(x_2671.x, x_2671.y, x_2671.z, x_2671.y));
            let x_2674 : vec2<f32> = u_xlat29;
            let x_2676 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2679 : vec4<f32> = u_xlat12;
            let x_2681 : vec2<f32> = ((x_2674 * vec2<f32>(x_2676.x, x_2676.y)) + vec2<f32>(x_2679.w, x_2679.y));
            let x_2682 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2681.x, x_2681.y, x_2682.z, x_2682.w);
            let x_2685 : f32 = u_xlat12.y;
            u_xlat9.y = x_2685;
            let x_2688 : f32 = u_xlat11.z;
            u_xlat12.y = x_2688;
            let x_2690 : vec2<f32> = u_xlat29;
            let x_2693 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2696 : vec4<f32> = u_xlat12;
            u_xlat15 = ((vec4<f32>(x_2690.x, x_2690.y, x_2690.x, x_2690.y) * vec4<f32>(x_2693.x, x_2693.y, x_2693.x, x_2693.y)) + vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2696.y));
            let x_2700 : vec2<f32> = u_xlat29;
            let x_2702 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2705 : vec4<f32> = u_xlat12;
            u_xlat58 = ((x_2700 * vec2<f32>(x_2702.x, x_2702.y)) + vec2<f32>(x_2705.w, x_2705.y));
            let x_2709 : f32 = u_xlat12.y;
            u_xlat9.z = x_2709;
            let x_2711 : vec2<f32> = u_xlat29;
            let x_2714 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2717 : vec4<f32> = u_xlat9;
            u_xlat16 = ((vec4<f32>(x_2711.x, x_2711.y, x_2711.x, x_2711.y) * vec4<f32>(x_2714.x, x_2714.y, x_2714.x, x_2714.y)) + vec4<f32>(x_2717.x, x_2717.y, x_2717.x, x_2717.z));
            let x_2721 : f32 = u_xlat11.w;
            u_xlat12.y = x_2721;
            let x_2724 : vec2<f32> = u_xlat29;
            let x_2727 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2730 : vec4<f32> = u_xlat12;
            u_xlat17 = ((vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y) * vec4<f32>(x_2727.x, x_2727.y, x_2727.x, x_2727.y)) + vec4<f32>(x_2730.x, x_2730.y, x_2730.z, x_2730.y));
            let x_2734 : vec2<f32> = u_xlat29;
            let x_2736 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2739 : vec4<f32> = u_xlat12;
            u_xlat31 = ((x_2734 * vec2<f32>(x_2736.x, x_2736.y)) + vec2<f32>(x_2739.w, x_2739.y));
            let x_2743 : f32 = u_xlat12.y;
            u_xlat9.w = x_2743;
            let x_2746 : vec2<f32> = u_xlat29;
            let x_2748 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat9;
            u_xlat18 = ((x_2746 * vec2<f32>(x_2748.x, x_2748.y)) + vec2<f32>(x_2751.x, x_2751.w));
            let x_2754 : vec4<f32> = u_xlat12;
            let x_2755 : vec3<f32> = vec3<f32>(x_2754.x, x_2754.z, x_2754.w);
            let x_2756 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2755.x, x_2756.y, x_2755.y, x_2755.z);
            let x_2758 : vec2<f32> = u_xlat29;
            let x_2761 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2764 : vec4<f32> = u_xlat11;
            u_xlat12 = ((vec4<f32>(x_2758.x, x_2758.y, x_2758.x, x_2758.y) * vec4<f32>(x_2761.x, x_2761.y, x_2761.x, x_2761.y)) + vec4<f32>(x_2764.x, x_2764.y, x_2764.z, x_2764.y));
            let x_2767 : vec2<f32> = u_xlat29;
            let x_2769 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2772 : vec4<f32> = u_xlat11;
            u_xlat55 = ((x_2767 * vec2<f32>(x_2769.x, x_2769.y)) + vec2<f32>(x_2772.w, x_2772.y));
            let x_2776 : f32 = u_xlat9.x;
            u_xlat11.x = x_2776;
            let x_2778 : vec2<f32> = u_xlat29;
            let x_2780 : vec4<f32> = x_258.x_AdditionalShadowmapSize;
            let x_2783 : vec4<f32> = u_xlat11;
            u_xlat29 = ((x_2778 * vec2<f32>(x_2780.x, x_2780.y)) + vec2<f32>(x_2783.x, x_2783.y));
            let x_2787 : vec4<f32> = u_xlat8;
            let x_2789 : vec4<f32> = u_xlat10;
            u_xlat19 = (vec4<f32>(x_2787.x, x_2787.x, x_2787.x, x_2787.x) * x_2789);
            let x_2792 : vec4<f32> = u_xlat8;
            let x_2794 : vec4<f32> = u_xlat10;
            u_xlat20 = (vec4<f32>(x_2792.y, x_2792.y, x_2792.y, x_2792.y) * x_2794);
            let x_2797 : vec4<f32> = u_xlat8;
            let x_2799 : vec4<f32> = u_xlat10;
            u_xlat21 = (vec4<f32>(x_2797.z, x_2797.z, x_2797.z, x_2797.z) * x_2799);
            let x_2801 : vec4<f32> = u_xlat8;
            let x_2803 : vec4<f32> = u_xlat10;
            u_xlat8 = (vec4<f32>(x_2801.w, x_2801.w, x_2801.w, x_2801.w) * x_2803);
            let x_2806 : vec4<f32> = u_xlat13;
            let x_2807 : vec2<f32> = vec2<f32>(x_2806.x, x_2806.y);
            let x_2809 : f32 = u_xlat28.z;
            txVec43 = vec3<f32>(x_2807.x, x_2807.y, x_2809);
            let x_2816 : vec3<f32> = txVec43;
            let x_2818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2816.xy, x_2816.z);
            u_xlat73 = x_2818;
            let x_2820 : vec4<f32> = u_xlat13;
            let x_2821 : vec2<f32> = vec2<f32>(x_2820.z, x_2820.w);
            let x_2823 : f32 = u_xlat28.z;
            txVec44 = vec3<f32>(x_2821.x, x_2821.y, x_2823);
            let x_2830 : vec3<f32> = txVec44;
            let x_2832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2830.xy, x_2830.z);
            u_xlat9.x = x_2832;
            let x_2835 : f32 = u_xlat9.x;
            let x_2837 : f32 = u_xlat19.y;
            u_xlat9.x = (x_2835 * x_2837);
            let x_2841 : f32 = u_xlat19.x;
            let x_2842 : f32 = u_xlat73;
            let x_2845 : f32 = u_xlat9.x;
            u_xlat73 = ((x_2841 * x_2842) + x_2845);
            let x_2848 : vec4<f32> = u_xlat14;
            let x_2849 : vec2<f32> = vec2<f32>(x_2848.x, x_2848.y);
            let x_2851 : f32 = u_xlat28.z;
            txVec45 = vec3<f32>(x_2849.x, x_2849.y, x_2851);
            let x_2858 : vec3<f32> = txVec45;
            let x_2860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2858.xy, x_2858.z);
            u_xlat9.x = x_2860;
            let x_2863 : f32 = u_xlat19.z;
            let x_2865 : f32 = u_xlat9.x;
            let x_2867 : f32 = u_xlat73;
            u_xlat73 = ((x_2863 * x_2865) + x_2867);
            let x_2870 : vec4<f32> = u_xlat16;
            let x_2871 : vec2<f32> = vec2<f32>(x_2870.x, x_2870.y);
            let x_2873 : f32 = u_xlat28.z;
            txVec46 = vec3<f32>(x_2871.x, x_2871.y, x_2873);
            let x_2880 : vec3<f32> = txVec46;
            let x_2882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2880.xy, x_2880.z);
            u_xlat9.x = x_2882;
            let x_2885 : f32 = u_xlat19.w;
            let x_2887 : f32 = u_xlat9.x;
            let x_2889 : f32 = u_xlat73;
            u_xlat73 = ((x_2885 * x_2887) + x_2889);
            let x_2892 : vec4<f32> = u_xlat15;
            let x_2893 : vec2<f32> = vec2<f32>(x_2892.x, x_2892.y);
            let x_2895 : f32 = u_xlat28.z;
            txVec47 = vec3<f32>(x_2893.x, x_2893.y, x_2895);
            let x_2902 : vec3<f32> = txVec47;
            let x_2904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2902.xy, x_2902.z);
            u_xlat9.x = x_2904;
            let x_2907 : f32 = u_xlat20.x;
            let x_2909 : f32 = u_xlat9.x;
            let x_2911 : f32 = u_xlat73;
            u_xlat73 = ((x_2907 * x_2909) + x_2911);
            let x_2914 : vec4<f32> = u_xlat15;
            let x_2915 : vec2<f32> = vec2<f32>(x_2914.z, x_2914.w);
            let x_2917 : f32 = u_xlat28.z;
            txVec48 = vec3<f32>(x_2915.x, x_2915.y, x_2917);
            let x_2924 : vec3<f32> = txVec48;
            let x_2926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2924.xy, x_2924.z);
            u_xlat9.x = x_2926;
            let x_2929 : f32 = u_xlat20.y;
            let x_2931 : f32 = u_xlat9.x;
            let x_2933 : f32 = u_xlat73;
            u_xlat73 = ((x_2929 * x_2931) + x_2933);
            let x_2936 : vec2<f32> = u_xlat58;
            let x_2938 : f32 = u_xlat28.z;
            txVec49 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
            let x_2945 : vec3<f32> = txVec49;
            let x_2947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
            u_xlat9.x = x_2947;
            let x_2950 : f32 = u_xlat20.z;
            let x_2952 : f32 = u_xlat9.x;
            let x_2954 : f32 = u_xlat73;
            u_xlat73 = ((x_2950 * x_2952) + x_2954);
            let x_2957 : vec4<f32> = u_xlat16;
            let x_2958 : vec2<f32> = vec2<f32>(x_2957.z, x_2957.w);
            let x_2960 : f32 = u_xlat28.z;
            txVec50 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
            let x_2967 : vec3<f32> = txVec50;
            let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
            u_xlat9.x = x_2969;
            let x_2972 : f32 = u_xlat20.w;
            let x_2974 : f32 = u_xlat9.x;
            let x_2976 : f32 = u_xlat73;
            u_xlat73 = ((x_2972 * x_2974) + x_2976);
            let x_2979 : vec4<f32> = u_xlat17;
            let x_2980 : vec2<f32> = vec2<f32>(x_2979.x, x_2979.y);
            let x_2982 : f32 = u_xlat28.z;
            txVec51 = vec3<f32>(x_2980.x, x_2980.y, x_2982);
            let x_2989 : vec3<f32> = txVec51;
            let x_2991 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2989.xy, x_2989.z);
            u_xlat9.x = x_2991;
            let x_2994 : f32 = u_xlat21.x;
            let x_2996 : f32 = u_xlat9.x;
            let x_2998 : f32 = u_xlat73;
            u_xlat73 = ((x_2994 * x_2996) + x_2998);
            let x_3001 : vec4<f32> = u_xlat17;
            let x_3002 : vec2<f32> = vec2<f32>(x_3001.z, x_3001.w);
            let x_3004 : f32 = u_xlat28.z;
            txVec52 = vec3<f32>(x_3002.x, x_3002.y, x_3004);
            let x_3011 : vec3<f32> = txVec52;
            let x_3013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3011.xy, x_3011.z);
            u_xlat9.x = x_3013;
            let x_3016 : f32 = u_xlat21.y;
            let x_3018 : f32 = u_xlat9.x;
            let x_3020 : f32 = u_xlat73;
            u_xlat73 = ((x_3016 * x_3018) + x_3020);
            let x_3023 : vec2<f32> = u_xlat31;
            let x_3025 : f32 = u_xlat28.z;
            txVec53 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
            let x_3032 : vec3<f32> = txVec53;
            let x_3034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3032.xy, x_3032.z);
            u_xlat9.x = x_3034;
            let x_3037 : f32 = u_xlat21.z;
            let x_3039 : f32 = u_xlat9.x;
            let x_3041 : f32 = u_xlat73;
            u_xlat73 = ((x_3037 * x_3039) + x_3041);
            let x_3044 : vec2<f32> = u_xlat18;
            let x_3046 : f32 = u_xlat28.z;
            txVec54 = vec3<f32>(x_3044.x, x_3044.y, x_3046);
            let x_3053 : vec3<f32> = txVec54;
            let x_3055 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3053.xy, x_3053.z);
            u_xlat9.x = x_3055;
            let x_3058 : f32 = u_xlat21.w;
            let x_3060 : f32 = u_xlat9.x;
            let x_3062 : f32 = u_xlat73;
            u_xlat73 = ((x_3058 * x_3060) + x_3062);
            let x_3065 : vec4<f32> = u_xlat12;
            let x_3066 : vec2<f32> = vec2<f32>(x_3065.x, x_3065.y);
            let x_3068 : f32 = u_xlat28.z;
            txVec55 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec55;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat9.x = x_3077;
            let x_3080 : f32 = u_xlat8.x;
            let x_3082 : f32 = u_xlat9.x;
            let x_3084 : f32 = u_xlat73;
            u_xlat73 = ((x_3080 * x_3082) + x_3084);
            let x_3087 : vec4<f32> = u_xlat12;
            let x_3088 : vec2<f32> = vec2<f32>(x_3087.z, x_3087.w);
            let x_3090 : f32 = u_xlat28.z;
            txVec56 = vec3<f32>(x_3088.x, x_3088.y, x_3090);
            let x_3097 : vec3<f32> = txVec56;
            let x_3099 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3097.xy, x_3097.z);
            u_xlat8.x = x_3099;
            let x_3102 : f32 = u_xlat8.y;
            let x_3104 : f32 = u_xlat8.x;
            let x_3106 : f32 = u_xlat73;
            u_xlat73 = ((x_3102 * x_3104) + x_3106);
            let x_3109 : vec2<f32> = u_xlat55;
            let x_3111 : f32 = u_xlat28.z;
            txVec57 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
            let x_3118 : vec3<f32> = txVec57;
            let x_3120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3118.xy, x_3118.z);
            u_xlat8.x = x_3120;
            let x_3123 : f32 = u_xlat8.z;
            let x_3125 : f32 = u_xlat8.x;
            let x_3127 : f32 = u_xlat73;
            u_xlat73 = ((x_3123 * x_3125) + x_3127);
            let x_3130 : vec2<f32> = u_xlat29;
            let x_3132 : f32 = u_xlat28.z;
            txVec58 = vec3<f32>(x_3130.x, x_3130.y, x_3132);
            let x_3139 : vec3<f32> = txVec58;
            let x_3141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3139.xy, x_3139.z);
            u_xlat29.x = x_3141;
            let x_3144 : f32 = u_xlat8.w;
            let x_3146 : f32 = u_xlat29.x;
            let x_3148 : f32 = u_xlat73;
            u_xlat7.x = ((x_3144 * x_3146) + x_3148);
          }
        }
      } else {
        let x_3153 : vec3<f32> = u_xlat28;
        let x_3154 : vec2<f32> = vec2<f32>(x_3153.x, x_3153.y);
        let x_3156 : f32 = u_xlat28.z;
        txVec59 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
        let x_3163 : vec3<f32> = txVec59;
        let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
        u_xlat7.x = x_3165;
      }
      let x_3167 : i32 = u_xlati5;
      let x_3169 : f32 = x_258.x_AdditionalShadowParams[x_3167].x;
      u_xlat28.x = (1.0f + -(x_3169));
      let x_3174 : f32 = u_xlat7.x;
      let x_3175 : i32 = u_xlati5;
      let x_3177 : f32 = x_258.x_AdditionalShadowParams[x_3175].x;
      let x_3180 : f32 = u_xlat28.x;
      u_xlat28.x = ((x_3174 * x_3177) + x_3180);
      let x_3184 : f32 = u_xlat28.z;
      u_xlatb50 = (0.0f >= x_3184);
      let x_3188 : f32 = u_xlat28.z;
      u_xlatb72 = (x_3188 >= 1.0f);
      let x_3190 : bool = u_xlatb72;
      let x_3191 : bool = u_xlatb50;
      u_xlatb50 = (x_3190 | x_3191);
      let x_3193 : bool = u_xlatb50;
      if (x_3193) {
        x_3194 = 1.0f;
      } else {
        let x_3199 : f32 = u_xlat28.x;
        x_3194 = x_3199;
      }
      let x_3200 : f32 = x_3194;
      u_xlat28.x = x_3200;
    } else {
      u_xlat28.x = 1.0f;
    }
    let x_3205 : f32 = u_xlat28.x;
    u_xlat50.x = (-(x_3205) + 1.0f);
    let x_3210 : f32 = u_xlat3.x;
    let x_3212 : f32 = u_xlat50.x;
    let x_3215 : f32 = u_xlat28.x;
    u_xlat28.x = ((x_3210 * x_3212) + x_3215);
    let x_3219 : f32 = u_xlat28.x;
    let x_3221 : f32 = u_xlat6.x;
    u_xlat6.x = (x_3219 * x_3221);
    let x_3224 : vec4<f32> = u_xlat6;
    let x_3226 : i32 = u_xlati5;
    let x_3228 : vec4<f32> = x_1712.x_AdditionalLightsColor[x_3226];
    let x_3230 : vec3<f32> = (vec3<f32>(x_3224.x, x_3224.x, x_3224.x) * vec3<f32>(x_3228.x, x_3228.y, x_3228.z));
    let x_3231 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3230.x, x_3230.y, x_3230.z, x_3231.w);
    let x_3233 : vec3<f32> = u_xlat1;
    let x_3234 : vec3<f32> = u_xlat27;
    u_xlat5.x = dot(x_3233, x_3234);
    let x_3238 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_3238, 0.0f, 1.0f);
    let x_3241 : vec4<f32> = u_xlat5;
    let x_3243 : vec4<f32> = u_xlat6;
    let x_3245 : vec3<f32> = (vec3<f32>(x_3241.x, x_3241.x, x_3241.x) * vec3<f32>(x_3243.x, x_3243.y, x_3243.z));
    let x_3246 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3245.x, x_3245.y, x_3245.z, x_3246.w);
    let x_3248 : vec4<f32> = u_xlat5;
    let x_3250 : vec4<f32> = u_xlat0;
    let x_3253 : vec4<f32> = u_xlat4;
    let x_3255 : vec3<f32> = ((vec3<f32>(x_3248.x, x_3248.y, x_3248.z) * vec3<f32>(x_3250.y, x_3250.z, x_3250.w)) + vec3<f32>(x_3253.x, x_3253.y, x_3253.z));
    let x_3256 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_3255.x, x_3255.y, x_3255.z, x_3256.w);

    continuing {
      let x_3258 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3258 + bitcast<u32>(1i));
    }
  }
  let x_3261 : vec4<f32> = u_xlat2;
  let x_3263 : vec4<f32> = u_xlat0;
  let x_3266 : vec3<f32> = u_xlat25;
  u_xlat22 = ((vec3<f32>(x_3261.x, x_3261.y, x_3261.z) * vec3<f32>(x_3263.y, x_3263.z, x_3263.w)) + x_3266);
  let x_3268 : vec4<f32> = u_xlat4;
  let x_3270 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_3268.x, x_3268.y, x_3268.z) + x_3270);
  let x_3272 : f32 = u_xlat67;
  let x_3273 : f32 = u_xlat67;
  u_xlat1.x = (x_3272 * -(x_3273));
  let x_3278 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3278);
  let x_3281 : vec3<f32> = u_xlat22;
  let x_3283 : vec4<f32> = x_45.unity_FogColor;
  u_xlat22 = (x_3281 + -(vec3<f32>(x_3283.x, x_3283.y, x_3283.z)));
  let x_3289 : vec3<f32> = u_xlat1;
  let x_3291 : vec3<f32> = u_xlat22;
  let x_3294 : vec4<f32> = x_45.unity_FogColor;
  let x_3296 : vec3<f32> = ((vec3<f32>(x_3289.x, x_3289.x, x_3289.x) * x_3291) + vec3<f32>(x_3294.x, x_3294.y, x_3294.z));
  let x_3297 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3296.x, x_3296.y, x_3296.z, x_3297.w);
  let x_3301 : f32 = x_57.x_Surface;
  u_xlatb22 = (x_3301 == 1.0f);
  let x_3303 : bool = u_xlatb22;
  if (x_3303) {
    let x_3308 : f32 = u_xlat0.x;
    x_3304 = x_3308;
  } else {
    x_3304 = 1.0f;
  }
  let x_3310 : f32 = x_3304;
  SV_Target0.w = x_3310;
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


