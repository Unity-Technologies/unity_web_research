diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_199 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb66 : bool;

@group(1) @binding(4) var<uniform> x_283 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlat48 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat69 : f32;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlatb68 : bool;

var<private> u_xlatu66 : u32;

var<private> u_xlatu69 : u32;

var<private> u_xlati70 : i32;

var<private> u_xlati69 : i32;

@group(1) @binding(1) var<uniform> x_1704 : AdditionalLights;

var<private> u_xlat70 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlati71 : i32;

var<private> u_xlatb72 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat73 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat72 : f32;

var<private> u_xlatb71 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu68 : u32;

var<private> u_xlatb69 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
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
  var x_1846 : f32;
  var x_1856 : f32;
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
  var x_3247 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat22 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat66;
  let x_91 : f32 = u_xlat44;
  u_xlat44 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat44;
  u_xlat44 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat22;
  let x_98 : f32 = u_xlat44;
  u_xlat22 = (x_97 / x_98);
  let x_100 : f32 = u_xlat22;
  u_xlat22 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat22;
  u_xlat22 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb44;
  if (x_110) {
    let x_114 : f32 = u_xlat22;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat22 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat22;
  u_xlatb22 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb22;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat22;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_153 : f32 = vs_TEXCOORD1.y;
  let x_157 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat22 = (x_153 * x_157);
  let x_160 : f32 = x_28.unity_MatrixV[0i].z;
  let x_162 : f32 = vs_TEXCOORD1.x;
  let x_164 : f32 = u_xlat22;
  u_xlat22 = ((x_160 * x_162) + x_164);
  let x_168 : f32 = x_28.unity_MatrixV[2i].z;
  let x_170 : f32 = vs_TEXCOORD1.z;
  let x_172 : f32 = u_xlat22;
  u_xlat22 = ((x_168 * x_170) + x_172);
  let x_174 : f32 = u_xlat22;
  let x_177 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat22 = (x_174 + x_177);
  let x_179 : f32 = u_xlat22;
  let x_183 : f32 = x_28.x_ProjectionParams.y;
  u_xlat22 = (-(x_179) + -(x_183));
  let x_186 : f32 = u_xlat22;
  u_xlat22 = max(x_186, 0.0f);
  let x_188 : f32 = u_xlat22;
  let x_191 : f32 = x_28.unity_FogParams.x;
  u_xlat22 = (x_188 * x_191);
  u_xlat2.w = 1.0f;
  let x_202 : vec4<f32> = x_199.unity_SHAr;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_202, x_203);
  let x_208 : vec4<f32> = x_199.unity_SHAg;
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_208, x_209);
  let x_214 : vec4<f32> = x_199.unity_SHAb;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_214, x_215);
  let x_219 : vec4<f32> = u_xlat2;
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_219.y, x_219.z, x_219.z, x_219.x) * vec4<f32>(x_221.x, x_221.y, x_221.z, x_221.z));
  let x_227 : vec4<f32> = x_199.unity_SHBr;
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_227, x_228);
  let x_233 : vec4<f32> = x_199.unity_SHBg;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_233, x_234);
  let x_239 : vec4<f32> = x_199.unity_SHBb;
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_239, x_240);
  let x_244 : f32 = u_xlat2.y;
  let x_246 : f32 = u_xlat2.y;
  u_xlat66 = (x_244 * x_246);
  let x_249 : f32 = u_xlat2.x;
  let x_251 : f32 = u_xlat2.x;
  let x_253 : f32 = u_xlat66;
  u_xlat66 = ((x_249 * x_251) + -(x_253));
  let x_258 : vec4<f32> = x_199.unity_SHC;
  let x_260 : f32 = u_xlat66;
  let x_263 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260, x_260, x_260)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec3<f32> = u_xlat3;
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_268 + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_272, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_286 : f32 = x_283.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_286);
  let x_288 : bool = u_xlatb66;
  if (x_288) {
    let x_292 : f32 = x_283.x_MainLightShadowParams.y;
    u_xlatb66 = (x_292 == 1.0f);
    let x_294 : bool = u_xlatb66;
    if (x_294) {
      let x_299 : vec4<f32> = vs_TEXCOORD6;
      let x_302 : vec4<f32> = x_283.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_299.x, x_299.y, x_299.x, x_299.y) + x_302);
      let x_306 : vec4<f32> = u_xlat4;
      let x_307 : vec2<f32> = vec2<f32>(x_306.x, x_306.y);
      let x_309 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_307.x, x_307.y, x_309);
      let x_321 : vec3<f32> = txVec0;
      let x_323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_321.xy, x_321.z);
      u_xlat5.x = x_323;
      let x_326 : vec4<f32> = u_xlat4;
      let x_327 : vec2<f32> = vec2<f32>(x_326.z, x_326.w);
      let x_329 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_327.x, x_327.y, x_329);
      let x_336 : vec3<f32> = txVec1;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_336.xy, x_336.z);
      u_xlat5.y = x_338;
      let x_340 : vec4<f32> = vs_TEXCOORD6;
      let x_343 : vec4<f32> = x_283.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_340.x, x_340.y, x_340.x, x_340.y) + x_343);
      let x_346 : vec4<f32> = u_xlat4;
      let x_347 : vec2<f32> = vec2<f32>(x_346.x, x_346.y);
      let x_349 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_347.x, x_347.y, x_349);
      let x_356 : vec3<f32> = txVec2;
      let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_356.xy, x_356.z);
      u_xlat5.z = x_358;
      let x_361 : vec4<f32> = u_xlat4;
      let x_362 : vec2<f32> = vec2<f32>(x_361.z, x_361.w);
      let x_364 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_362.x, x_362.y, x_364);
      let x_371 : vec3<f32> = txVec3;
      let x_373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_371.xy, x_371.z);
      u_xlat5.w = x_373;
      let x_375 : vec4<f32> = u_xlat5;
      u_xlat66 = dot(x_375, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_382 : f32 = x_283.x_MainLightShadowParams.y;
      u_xlatb1 = (x_382 == 2.0f);
      let x_385 : bool = u_xlatb1;
      if (x_385) {
        let x_388 : vec4<f32> = vs_TEXCOORD6;
        let x_391 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_395 : vec2<f32> = ((vec2<f32>(x_388.x, x_388.y) * vec2<f32>(x_391.z, x_391.w)) + vec2<f32>(0.5f, 0.5f));
        let x_396 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
        let x_398 : vec4<f32> = u_xlat4;
        let x_400 : vec2<f32> = floor(vec2<f32>(x_398.x, x_398.y));
        let x_401 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
        let x_405 : vec4<f32> = vs_TEXCOORD6;
        let x_408 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_411 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_405.x, x_405.y) * vec2<f32>(x_408.z, x_408.w)) + -(vec2<f32>(x_411.x, x_411.y)));
        let x_415 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_415.x, x_415.x, x_415.y, x_415.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_420 : vec4<f32> = u_xlat5;
        let x_422 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_420.x, x_420.x, x_420.z, x_420.z) * vec4<f32>(x_422.x, x_422.x, x_422.z, x_422.z));
        let x_425 : vec4<f32> = u_xlat6;
        let x_429 : vec2<f32> = (vec2<f32>(x_425.y, x_425.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_430 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_429.x, x_430.y, x_429.y, x_430.w);
        let x_432 : vec4<f32> = u_xlat6;
        let x_435 : vec2<f32> = u_xlat48;
        let x_437 : vec2<f32> = ((vec2<f32>(x_432.x, x_432.z) * vec2<f32>(0.5f, 0.5f)) + -(x_435));
        let x_438 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
        let x_441 : vec2<f32> = u_xlat48;
        u_xlat50 = (-(x_441) + vec2<f32>(1.0f, 1.0f));
        let x_446 : vec2<f32> = u_xlat48;
        let x_448 : vec2<f32> = min(x_446, vec2<f32>(0.0f, 0.0f));
        let x_449 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_451 : vec4<f32> = u_xlat7;
        let x_454 : vec4<f32> = u_xlat7;
        let x_457 : vec2<f32> = u_xlat50;
        let x_458 : vec2<f32> = ((-(vec2<f32>(x_451.x, x_451.y)) * vec2<f32>(x_454.x, x_454.y)) + x_457);
        let x_459 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_461 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_461, vec2<f32>(0.0f, 0.0f));
        let x_463 : vec2<f32> = u_xlat48;
        let x_465 : vec2<f32> = u_xlat48;
        let x_467 : vec4<f32> = u_xlat5;
        u_xlat48 = ((-(x_463) * x_465) + vec2<f32>(x_467.y, x_467.w));
        let x_470 : vec4<f32> = u_xlat7;
        let x_472 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) + vec2<f32>(1.0f, 1.0f));
        let x_473 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
        let x_475 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_475 + vec2<f32>(1.0f, 1.0f));
        let x_478 : vec4<f32> = u_xlat6;
        let x_482 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_483 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
        let x_485 : vec2<f32> = u_xlat50;
        let x_486 : vec2<f32> = (x_485 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_487 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_489 : vec4<f32> = u_xlat7;
        let x_491 : vec2<f32> = (vec2<f32>(x_489.x, x_489.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_492 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_495 : vec2<f32> = u_xlat48;
        let x_496 : vec2<f32> = (x_495 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_497 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_499 : vec4<f32> = u_xlat5;
        u_xlat48 = (vec2<f32>(x_499.y, x_499.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_503 : f32 = u_xlat7.x;
        u_xlat8.z = x_503;
        let x_506 : f32 = u_xlat48.x;
        u_xlat8.w = x_506;
        let x_509 : f32 = u_xlat9.x;
        u_xlat6.z = x_509;
        let x_512 : f32 = u_xlat5.x;
        u_xlat6.w = x_512;
        let x_515 : vec4<f32> = u_xlat6;
        let x_517 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_515.z, x_515.w, x_515.x, x_515.z) + vec4<f32>(x_517.z, x_517.w, x_517.x, x_517.z));
        let x_521 : f32 = u_xlat8.y;
        u_xlat7.z = x_521;
        let x_524 : f32 = u_xlat48.y;
        u_xlat7.w = x_524;
        let x_527 : f32 = u_xlat6.y;
        u_xlat9.z = x_527;
        let x_530 : f32 = u_xlat5.z;
        u_xlat9.w = x_530;
        let x_532 : vec4<f32> = u_xlat7;
        let x_534 : vec4<f32> = u_xlat9;
        let x_536 : vec3<f32> = (vec3<f32>(x_532.z, x_532.y, x_532.w) + vec3<f32>(x_534.z, x_534.y, x_534.w));
        let x_537 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
        let x_539 : vec4<f32> = u_xlat6;
        let x_541 : vec4<f32> = u_xlat10;
        let x_543 : vec3<f32> = (vec3<f32>(x_539.x, x_539.z, x_539.w) / vec3<f32>(x_541.z, x_541.w, x_541.y));
        let x_544 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
        let x_546 : vec4<f32> = u_xlat6;
        let x_552 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_553 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
        let x_555 : vec4<f32> = u_xlat9;
        let x_557 : vec4<f32> = u_xlat5;
        let x_559 : vec3<f32> = (vec3<f32>(x_555.z, x_555.y, x_555.w) / vec3<f32>(x_557.x, x_557.y, x_557.z));
        let x_560 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat7;
        let x_564 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_565 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat6;
        let x_570 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_572 : vec3<f32> = (vec3<f32>(x_567.y, x_567.x, x_567.z) * vec3<f32>(x_570.x, x_570.x, x_570.x));
        let x_573 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
        let x_575 : vec4<f32> = u_xlat7;
        let x_578 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_580 : vec3<f32> = (vec3<f32>(x_575.x, x_575.y, x_575.z) * vec3<f32>(x_578.y, x_578.y, x_578.y));
        let x_581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_584 : f32 = u_xlat7.x;
        u_xlat6.w = x_584;
        let x_586 : vec4<f32> = u_xlat4;
        let x_589 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_586.x, x_586.y, x_586.x, x_586.y) * vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y)) + vec4<f32>(x_592.y, x_592.w, x_592.x, x_592.w));
        let x_595 : vec4<f32> = u_xlat4;
        let x_598 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(x_598.x, x_598.y)) + vec2<f32>(x_601.z, x_601.w));
        let x_605 : f32 = u_xlat6.y;
        u_xlat7.w = x_605;
        let x_607 : vec4<f32> = u_xlat7;
        let x_608 : vec2<f32> = vec2<f32>(x_607.y, x_607.z);
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_609.x, x_608.x, x_609.z, x_608.y);
        let x_611 : vec4<f32> = u_xlat4;
        let x_614 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y) * vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y)) + vec4<f32>(x_617.x, x_617.y, x_617.z, x_617.y));
        let x_620 : vec4<f32> = u_xlat4;
        let x_623 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_626 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y) * vec4<f32>(x_623.x, x_623.y, x_623.x, x_623.y)) + vec4<f32>(x_626.w, x_626.y, x_626.w, x_626.z));
        let x_629 : vec4<f32> = u_xlat4;
        let x_632 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.x, x_635.w, x_635.z, x_635.w));
        let x_639 : vec4<f32> = u_xlat5;
        let x_641 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_639.x, x_639.x, x_639.x, x_639.y) * vec4<f32>(x_641.z, x_641.w, x_641.y, x_641.z));
        let x_645 : vec4<f32> = u_xlat5;
        let x_647 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_645.y, x_645.y, x_645.z, x_645.z) * x_647);
        let x_650 : f32 = u_xlat5.z;
        let x_652 : f32 = u_xlat10.y;
        u_xlat1.x = (x_650 * x_652);
        let x_656 : vec4<f32> = u_xlat8;
        let x_657 : vec2<f32> = vec2<f32>(x_656.x, x_656.y);
        let x_659 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_657.x, x_657.y, x_659);
        let x_667 : vec3<f32> = txVec4;
        let x_669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_667.xy, x_667.z);
        u_xlat68 = x_669;
        let x_671 : vec4<f32> = u_xlat8;
        let x_672 : vec2<f32> = vec2<f32>(x_671.z, x_671.w);
        let x_674 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_672.x, x_672.y, x_674);
        let x_682 : vec3<f32> = txVec5;
        let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
        u_xlat69 = x_684;
        let x_685 : f32 = u_xlat69;
        let x_687 : f32 = u_xlat11.y;
        u_xlat69 = (x_685 * x_687);
        let x_690 : f32 = u_xlat11.x;
        let x_691 : f32 = u_xlat68;
        let x_693 : f32 = u_xlat69;
        u_xlat68 = ((x_690 * x_691) + x_693);
        let x_696 : vec2<f32> = u_xlat48;
        let x_698 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_696.x, x_696.y, x_698);
        let x_705 : vec3<f32> = txVec6;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_705.xy, x_705.z);
        u_xlat69 = x_707;
        let x_709 : f32 = u_xlat11.z;
        let x_710 : f32 = u_xlat69;
        let x_712 : f32 = u_xlat68;
        u_xlat68 = ((x_709 * x_710) + x_712);
        let x_715 : vec4<f32> = u_xlat7;
        let x_716 : vec2<f32> = vec2<f32>(x_715.x, x_715.y);
        let x_718 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_716.x, x_716.y, x_718);
        let x_725 : vec3<f32> = txVec7;
        let x_727 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_725.xy, x_725.z);
        u_xlat69 = x_727;
        let x_729 : f32 = u_xlat11.w;
        let x_730 : f32 = u_xlat69;
        let x_732 : f32 = u_xlat68;
        u_xlat68 = ((x_729 * x_730) + x_732);
        let x_735 : vec4<f32> = u_xlat9;
        let x_736 : vec2<f32> = vec2<f32>(x_735.x, x_735.y);
        let x_738 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_736.x, x_736.y, x_738);
        let x_745 : vec3<f32> = txVec8;
        let x_747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_745.xy, x_745.z);
        u_xlat69 = x_747;
        let x_749 : f32 = u_xlat12.x;
        let x_750 : f32 = u_xlat69;
        let x_752 : f32 = u_xlat68;
        u_xlat68 = ((x_749 * x_750) + x_752);
        let x_755 : vec4<f32> = u_xlat9;
        let x_756 : vec2<f32> = vec2<f32>(x_755.z, x_755.w);
        let x_758 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_756.x, x_756.y, x_758);
        let x_765 : vec3<f32> = txVec9;
        let x_767 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_765.xy, x_765.z);
        u_xlat69 = x_767;
        let x_769 : f32 = u_xlat12.y;
        let x_770 : f32 = u_xlat69;
        let x_772 : f32 = u_xlat68;
        u_xlat68 = ((x_769 * x_770) + x_772);
        let x_775 : vec4<f32> = u_xlat7;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_778 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec10;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_785.xy, x_785.z);
        u_xlat69 = x_787;
        let x_789 : f32 = u_xlat12.z;
        let x_790 : f32 = u_xlat69;
        let x_792 : f32 = u_xlat68;
        u_xlat68 = ((x_789 * x_790) + x_792);
        let x_795 : vec4<f32> = u_xlat6;
        let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec11;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_805.xy, x_805.z);
        u_xlat69 = x_807;
        let x_809 : f32 = u_xlat12.w;
        let x_810 : f32 = u_xlat69;
        let x_812 : f32 = u_xlat68;
        u_xlat68 = ((x_809 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat6;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec12;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_825.xy, x_825.z);
        u_xlat69 = x_827;
        let x_829 : f32 = u_xlat1.x;
        let x_830 : f32 = u_xlat69;
        let x_832 : f32 = u_xlat68;
        u_xlat66 = ((x_829 * x_830) + x_832);
      } else {
        let x_835 : vec4<f32> = vs_TEXCOORD6;
        let x_838 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_841 : vec2<f32> = ((vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_838.z, x_838.w)) + vec2<f32>(0.5f, 0.5f));
        let x_842 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_841.x, x_841.y, x_842.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat4;
        let x_846 : vec2<f32> = floor(vec2<f32>(x_844.x, x_844.y));
        let x_847 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_849 : vec4<f32> = vs_TEXCOORD6;
        let x_852 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_855 : vec4<f32> = u_xlat4;
        u_xlat48 = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.z, x_852.w)) + -(vec2<f32>(x_855.x, x_855.y)));
        let x_859 : vec2<f32> = u_xlat48;
        u_xlat5 = (vec4<f32>(x_859.x, x_859.x, x_859.y, x_859.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_862 : vec4<f32> = u_xlat5;
        let x_864 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_862.x, x_862.x, x_862.z, x_862.z) * vec4<f32>(x_864.x, x_864.x, x_864.z, x_864.z));
        let x_867 : vec4<f32> = u_xlat6;
        let x_871 : vec2<f32> = (vec2<f32>(x_867.y, x_867.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_872 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_872.x, x_871.x, x_872.z, x_871.y);
        let x_874 : vec4<f32> = u_xlat6;
        let x_877 : vec2<f32> = u_xlat48;
        let x_879 : vec2<f32> = ((vec2<f32>(x_874.x, x_874.z) * vec2<f32>(0.5f, 0.5f)) + -(x_877));
        let x_880 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_879.x, x_880.y, x_879.y, x_880.w);
        let x_882 : vec2<f32> = u_xlat48;
        let x_884 : vec2<f32> = (-(x_882) + vec2<f32>(1.0f, 1.0f));
        let x_885 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_884.x, x_884.y, x_885.z, x_885.w);
        let x_887 : vec2<f32> = u_xlat48;
        u_xlat50 = min(x_887, vec2<f32>(0.0f, 0.0f));
        let x_889 : vec2<f32> = u_xlat50;
        let x_891 : vec2<f32> = u_xlat50;
        let x_893 : vec4<f32> = u_xlat6;
        let x_895 : vec2<f32> = ((-(x_889) * x_891) + vec2<f32>(x_893.x, x_893.y));
        let x_896 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec2<f32> = u_xlat48;
        u_xlat50 = max(x_898, vec2<f32>(0.0f, 0.0f));
        let x_901 : vec2<f32> = u_xlat50;
        let x_903 : vec2<f32> = u_xlat50;
        let x_905 : vec4<f32> = u_xlat5;
        let x_907 : vec2<f32> = ((-(x_901) * x_903) + vec2<f32>(x_905.y, x_905.w));
        let x_908 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_907.x, x_908.y, x_907.y);
        let x_910 : vec4<f32> = u_xlat6;
        let x_913 : vec2<f32> = (vec2<f32>(x_910.x, x_910.y) + vec2<f32>(2.0f, 2.0f));
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
        let x_916 : vec3<f32> = u_xlat27;
        let x_918 : vec2<f32> = (vec2<f32>(x_916.x, x_916.z) + vec2<f32>(2.0f, 2.0f));
        let x_919 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_919.x, x_918.x, x_919.z, x_918.y);
        let x_922 : f32 = u_xlat5.y;
        u_xlat8.z = (x_922 * 0.08163200318813323975f);
        let x_926 : vec4<f32> = u_xlat5;
        let x_929 : vec3<f32> = (vec3<f32>(x_926.z, x_926.x, x_926.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_930 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat6;
        let x_935 : vec2<f32> = (vec2<f32>(x_932.x, x_932.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_936 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
        let x_939 : f32 = u_xlat9.y;
        u_xlat8.x = x_939;
        let x_941 : vec2<f32> = u_xlat48;
        let x_948 : vec2<f32> = ((vec2<f32>(x_941.x, x_941.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_949.x, x_948.x, x_949.z, x_948.y);
        let x_951 : vec2<f32> = u_xlat48;
        let x_955 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_956 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_955.x, x_956.y, x_955.y, x_956.w);
        let x_959 : f32 = u_xlat5.x;
        u_xlat6.y = x_959;
        let x_962 : f32 = u_xlat7.y;
        u_xlat6.w = x_962;
        let x_964 : vec4<f32> = u_xlat6;
        let x_965 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_964 + x_965);
        let x_967 : vec2<f32> = u_xlat48;
        let x_970 : vec2<f32> = ((vec2<f32>(x_967.y, x_967.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_971.x, x_970.x, x_971.z, x_970.y);
        let x_973 : vec2<f32> = u_xlat48;
        let x_976 : vec2<f32> = ((vec2<f32>(x_973.y, x_973.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_977 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_976.x, x_977.y, x_976.y, x_977.w);
        let x_980 : f32 = u_xlat5.y;
        u_xlat7.y = x_980;
        let x_982 : vec4<f32> = u_xlat7;
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_982 + x_983);
        let x_985 : vec4<f32> = u_xlat6;
        let x_986 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_985 / x_986);
        let x_988 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_988 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_994 : vec4<f32> = u_xlat7;
        let x_995 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_994 / x_995);
        let x_997 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_997 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_999 : vec4<f32> = u_xlat6;
        let x_1002 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_999.w, x_999.x, x_999.y, x_999.z) * vec4<f32>(x_1002.x, x_1002.x, x_1002.x, x_1002.x));
        let x_1005 : vec4<f32> = u_xlat7;
        let x_1008 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1005.x, x_1005.w, x_1005.y, x_1005.z) * vec4<f32>(x_1008.y, x_1008.y, x_1008.y, x_1008.y));
        let x_1011 : vec4<f32> = u_xlat6;
        let x_1012 : vec3<f32> = vec3<f32>(x_1011.y, x_1011.z, x_1011.w);
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1012.x, x_1013.y, x_1012.y, x_1012.z);
        let x_1016 : f32 = u_xlat7.x;
        u_xlat9.y = x_1016;
        let x_1018 : vec4<f32> = u_xlat4;
        let x_1021 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y) * vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y)) + vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1024.y));
        let x_1027 : vec4<f32> = u_xlat4;
        let x_1030 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1033 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1027.x, x_1027.y) * vec2<f32>(x_1030.x, x_1030.y)) + vec2<f32>(x_1033.w, x_1033.y));
        let x_1037 : f32 = u_xlat9.y;
        u_xlat6.y = x_1037;
        let x_1040 : f32 = u_xlat7.z;
        u_xlat9.y = x_1040;
        let x_1042 : vec4<f32> = u_xlat4;
        let x_1045 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1048.y));
        let x_1051 : vec4<f32> = u_xlat4;
        let x_1054 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1059 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.x, x_1054.y)) + vec2<f32>(x_1057.w, x_1057.y));
        let x_1060 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1063 : f32 = u_xlat9.y;
        u_xlat6.z = x_1063;
        let x_1066 : vec4<f32> = u_xlat4;
        let x_1069 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1072 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1066.x, x_1066.y, x_1066.x, x_1066.y) * vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y)) + vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.z));
        let x_1076 : f32 = u_xlat7.w;
        u_xlat9.y = x_1076;
        let x_1079 : vec4<f32> = u_xlat4;
        let x_1082 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1085 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1079.x, x_1079.y, x_1079.x, x_1079.y) * vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y)) + vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1085.y));
        let x_1089 : vec4<f32> = u_xlat4;
        let x_1092 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1095 : vec4<f32> = u_xlat9;
        u_xlat28 = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(x_1092.x, x_1092.y)) + vec2<f32>(x_1095.w, x_1095.y));
        let x_1099 : f32 = u_xlat9.y;
        u_xlat6.w = x_1099;
        let x_1102 : vec4<f32> = u_xlat4;
        let x_1105 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1108 : vec4<f32> = u_xlat6;
        u_xlat56 = ((vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1108.x, x_1108.w));
        let x_1111 : vec4<f32> = u_xlat9;
        let x_1112 : vec3<f32> = vec3<f32>(x_1111.x, x_1111.z, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1112.x, x_1113.y, x_1112.y, x_1112.z);
        let x_1115 : vec4<f32> = u_xlat4;
        let x_1118 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1121.y));
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1125.x, x_1125.y) * vec2<f32>(x_1128.x, x_1128.y)) + vec2<f32>(x_1131.w, x_1131.y));
        let x_1135 : f32 = u_xlat6.x;
        u_xlat7.x = x_1135;
        let x_1137 : vec4<f32> = u_xlat4;
        let x_1140 : vec4<f32> = x_283.x_MainLightShadowmapSize;
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1145 : vec2<f32> = ((vec2<f32>(x_1137.x, x_1137.y) * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.x, x_1143.y));
        let x_1146 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
        let x_1149 : vec4<f32> = u_xlat5;
        let x_1151 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1149.x, x_1149.x, x_1149.x, x_1149.x) * x_1151);
        let x_1154 : vec4<f32> = u_xlat5;
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1154.y, x_1154.y, x_1154.y, x_1154.y) * x_1156);
        let x_1159 : vec4<f32> = u_xlat5;
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1159.z, x_1159.z, x_1159.z, x_1159.z) * x_1161);
        let x_1163 : vec4<f32> = u_xlat5;
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1163.w, x_1163.w, x_1163.w, x_1163.w) * x_1165);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec13;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1178.xy, x_1178.z);
        u_xlat1.x = x_1180;
        let x_1183 : vec4<f32> = u_xlat10;
        let x_1184 : vec2<f32> = vec2<f32>(x_1183.z, x_1183.w);
        let x_1186 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1184.x, x_1184.y, x_1186);
        let x_1193 : vec3<f32> = txVec14;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1193.xy, x_1193.z);
        u_xlat68 = x_1195;
        let x_1196 : f32 = u_xlat68;
        let x_1198 : f32 = u_xlat15.y;
        u_xlat68 = (x_1196 * x_1198);
        let x_1201 : f32 = u_xlat15.x;
        let x_1203 : f32 = u_xlat1.x;
        let x_1205 : f32 = u_xlat68;
        u_xlat1.x = ((x_1201 * x_1203) + x_1205);
        let x_1209 : vec2<f32> = u_xlat48;
        let x_1211 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec15;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat68 = x_1220;
        let x_1222 : f32 = u_xlat15.z;
        let x_1223 : f32 = u_xlat68;
        let x_1226 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1222 * x_1223) + x_1226);
        let x_1230 : vec4<f32> = u_xlat13;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.x, x_1230.y);
        let x_1233 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec16;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat68 = x_1242;
        let x_1244 : f32 = u_xlat15.w;
        let x_1245 : f32 = u_xlat68;
        let x_1248 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1244 * x_1245) + x_1248);
        let x_1252 : vec4<f32> = u_xlat11;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec17;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat68 = x_1264;
        let x_1266 : f32 = u_xlat16.x;
        let x_1267 : f32 = u_xlat68;
        let x_1270 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1266 * x_1267) + x_1270);
        let x_1274 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec18;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat68 = x_1286;
        let x_1288 : f32 = u_xlat16.y;
        let x_1289 : f32 = u_xlat68;
        let x_1292 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1288 * x_1289) + x_1292);
        let x_1296 : vec4<f32> = u_xlat12;
        let x_1297 : vec2<f32> = vec2<f32>(x_1296.x, x_1296.y);
        let x_1299 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec19;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1306.xy, x_1306.z);
        u_xlat68 = x_1308;
        let x_1310 : f32 = u_xlat16.z;
        let x_1311 : f32 = u_xlat68;
        let x_1314 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1310 * x_1311) + x_1314);
        let x_1318 : vec4<f32> = u_xlat13;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.z, x_1318.w);
        let x_1321 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec20;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1328.xy, x_1328.z);
        u_xlat68 = x_1330;
        let x_1332 : f32 = u_xlat16.w;
        let x_1333 : f32 = u_xlat68;
        let x_1336 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1332 * x_1333) + x_1336);
        let x_1340 : vec4<f32> = u_xlat14;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec21;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1350.xy, x_1350.z);
        u_xlat68 = x_1352;
        let x_1354 : f32 = u_xlat17.x;
        let x_1355 : f32 = u_xlat68;
        let x_1358 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1354 * x_1355) + x_1358);
        let x_1362 : vec4<f32> = u_xlat14;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.z, x_1362.w);
        let x_1365 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec22;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1372.xy, x_1372.z);
        u_xlat68 = x_1374;
        let x_1376 : f32 = u_xlat17.y;
        let x_1377 : f32 = u_xlat68;
        let x_1380 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1376 * x_1377) + x_1380);
        let x_1384 : vec2<f32> = u_xlat28;
        let x_1386 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1384.x, x_1384.y, x_1386);
        let x_1393 : vec3<f32> = txVec23;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1393.xy, x_1393.z);
        u_xlat68 = x_1395;
        let x_1397 : f32 = u_xlat17.z;
        let x_1398 : f32 = u_xlat68;
        let x_1401 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1397 * x_1398) + x_1401);
        let x_1405 : vec2<f32> = u_xlat56;
        let x_1407 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec24;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat68 = x_1416;
        let x_1418 : f32 = u_xlat17.w;
        let x_1419 : f32 = u_xlat68;
        let x_1422 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1418 * x_1419) + x_1422);
        let x_1426 : vec4<f32> = u_xlat9;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec25;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat68 = x_1438;
        let x_1440 : f32 = u_xlat5.x;
        let x_1441 : f32 = u_xlat68;
        let x_1444 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1440 * x_1441) + x_1444);
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.z, x_1448.w);
        let x_1451 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec26;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1458.xy, x_1458.z);
        u_xlat68 = x_1460;
        let x_1462 : f32 = u_xlat5.y;
        let x_1463 : f32 = u_xlat68;
        let x_1466 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1462 * x_1463) + x_1466);
        let x_1470 : vec2<f32> = u_xlat51;
        let x_1472 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec27;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1479.xy, x_1479.z);
        u_xlat68 = x_1481;
        let x_1483 : f32 = u_xlat5.z;
        let x_1484 : f32 = u_xlat68;
        let x_1487 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1483 * x_1484) + x_1487);
        let x_1491 : vec4<f32> = u_xlat4;
        let x_1492 : vec2<f32> = vec2<f32>(x_1491.x, x_1491.y);
        let x_1494 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec28;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1501.xy, x_1501.z);
        u_xlat68 = x_1503;
        let x_1505 : f32 = u_xlat5.w;
        let x_1506 : f32 = u_xlat68;
        let x_1509 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1505 * x_1506) + x_1509);
      }
    }
  } else {
    let x_1513 : vec4<f32> = vs_TEXCOORD6;
    let x_1514 : vec2<f32> = vec2<f32>(x_1513.x, x_1513.y);
    let x_1516 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
    let x_1523 : vec3<f32> = txVec29;
    let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
    u_xlat66 = x_1525;
  }
  let x_1527 : f32 = x_283.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_1527) + 1.0f);
  let x_1531 : f32 = u_xlat66;
  let x_1533 : f32 = x_283.x_MainLightShadowParams.x;
  let x_1536 : f32 = u_xlat1.x;
  u_xlat66 = ((x_1531 * x_1533) + x_1536);
  let x_1539 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_1539);
  let x_1543 : f32 = vs_TEXCOORD6.z;
  u_xlatb68 = (x_1543 >= 1.0f);
  let x_1545 : bool = u_xlatb1;
  let x_1546 : bool = u_xlatb68;
  u_xlatb1 = (x_1545 | x_1546);
  let x_1548 : bool = u_xlatb1;
  let x_1549 : f32 = u_xlat66;
  u_xlat66 = select(x_1549, 1.0f, x_1548);
  let x_1551 : vec3<f32> = vs_TEXCOORD1;
  let x_1555 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1557 : vec3<f32> = (x_1551 + -(x_1555));
  let x_1558 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1557.x, x_1557.y, x_1557.z, x_1558.w);
  let x_1560 : vec4<f32> = u_xlat4;
  let x_1562 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_1560.x, x_1560.y, x_1560.z), vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
  let x_1567 : f32 = u_xlat1.x;
  let x_1569 : f32 = x_283.x_MainLightShadowParams.z;
  let x_1572 : f32 = x_283.x_MainLightShadowParams.w;
  u_xlat68 = ((x_1567 * x_1569) + x_1572);
  let x_1574 : f32 = u_xlat68;
  u_xlat68 = clamp(x_1574, 0.0f, 1.0f);
  let x_1576 : f32 = u_xlat66;
  u_xlat69 = (-(x_1576) + 1.0f);
  let x_1579 : f32 = u_xlat68;
  let x_1580 : f32 = u_xlat69;
  let x_1582 : f32 = u_xlat66;
  u_xlat66 = ((x_1579 * x_1580) + x_1582);
  let x_1584 : f32 = u_xlat66;
  let x_1586 : f32 = x_199.unity_LightData.z;
  u_xlat66 = (x_1584 * x_1586);
  let x_1588 : f32 = u_xlat66;
  let x_1591 : vec4<f32> = x_28.x_MainLightColor;
  let x_1593 : vec3<f32> = (vec3<f32>(x_1588, x_1588, x_1588) * vec3<f32>(x_1591.x, x_1591.y, x_1591.z));
  let x_1594 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1594.w);
  let x_1596 : vec4<f32> = u_xlat2;
  let x_1599 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat66 = dot(vec3<f32>(x_1596.x, x_1596.y, x_1596.z), vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
  let x_1602 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1602, 0.0f, 1.0f);
  let x_1604 : f32 = u_xlat66;
  let x_1606 : vec4<f32> = u_xlat4;
  let x_1608 : vec3<f32> = (vec3<f32>(x_1604, x_1604, x_1604) * vec3<f32>(x_1606.x, x_1606.y, x_1606.z));
  let x_1609 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
  let x_1611 : vec4<f32> = u_xlat1;
  let x_1613 : vec4<f32> = u_xlat4;
  let x_1615 : vec3<f32> = (vec3<f32>(x_1611.y, x_1611.z, x_1611.w) * vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1616 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec4<f32> = u_xlat0;
  let x_1620 : vec4<f32> = u_xlat4;
  let x_1622 : vec3<f32> = (vec3<f32>(x_1618.x, x_1618.x, x_1618.x) * vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
  let x_1623 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1623.w);
  let x_1626 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1628 : f32 = x_199.unity_LightData.y;
  u_xlat66 = min(x_1626, x_1628);
  let x_1632 : f32 = u_xlat66;
  u_xlatu66 = bitcast<u32>(i32(x_1632));
  let x_1636 : f32 = u_xlat1.x;
  let x_1639 : f32 = x_283.x_AdditionalShadowFadeParams.x;
  let x_1642 : f32 = x_283.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_1636 * x_1639) + x_1642);
  let x_1646 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1646, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1659 : u32 = u_xlatu_loop_1;
    let x_1660 : u32 = u_xlatu66;
    if ((x_1659 < x_1660)) {
    } else {
      break;
    }
    let x_1663 : u32 = u_xlatu_loop_1;
    u_xlatu69 = (x_1663 >> 2u);
    let x_1667 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_1667 & 3u));
    let x_1670 : u32 = u_xlatu69;
    let x_1673 : vec4<f32> = x_199.unity_LightIndices[bitcast<i32>(x_1670)];
    let x_1683 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1688 : vec4<u32> = indexable[x_1683];
    u_xlat69 = dot(x_1673, bitcast<vec4<f32>>(x_1688));
    let x_1692 : f32 = u_xlat69;
    u_xlati69 = i32(x_1692);
    let x_1694 : vec3<f32> = vs_TEXCOORD1;
    let x_1705 : i32 = u_xlati69;
    let x_1707 : vec4<f32> = x_1704.x_AdditionalLightsPosition[x_1705];
    let x_1710 : i32 = u_xlati69;
    let x_1712 : vec4<f32> = x_1704.x_AdditionalLightsPosition[x_1710];
    let x_1714 : vec3<f32> = ((-(x_1694) * vec3<f32>(x_1707.w, x_1707.w, x_1707.w)) + vec3<f32>(x_1712.x, x_1712.y, x_1712.z));
    let x_1715 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
    let x_1718 : vec4<f32> = u_xlat6;
    let x_1720 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1718.x, x_1718.y, x_1718.z), vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
    let x_1723 : f32 = u_xlat70;
    u_xlat70 = max(x_1723, 0.00006103515625f);
    let x_1727 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_1727);
    let x_1729 : f32 = u_xlat71;
    let x_1731 : vec4<f32> = u_xlat6;
    let x_1733 : vec3<f32> = (vec3<f32>(x_1729, x_1729, x_1729) * vec3<f32>(x_1731.x, x_1731.y, x_1731.z));
    let x_1734 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1733.x, x_1733.y, x_1733.z, x_1734.w);
    let x_1736 : f32 = u_xlat70;
    u_xlat71 = (1.0f / x_1736);
    let x_1738 : f32 = u_xlat70;
    let x_1739 : i32 = u_xlati69;
    let x_1741 : f32 = x_1704.x_AdditionalLightsAttenuation[x_1739].x;
    u_xlat70 = (x_1738 * x_1741);
    let x_1743 : f32 = u_xlat70;
    let x_1745 : f32 = u_xlat70;
    u_xlat70 = ((-(x_1743) * x_1745) + 1.0f);
    let x_1748 : f32 = u_xlat70;
    u_xlat70 = max(x_1748, 0.0f);
    let x_1750 : f32 = u_xlat70;
    let x_1751 : f32 = u_xlat70;
    u_xlat70 = (x_1750 * x_1751);
    let x_1753 : f32 = u_xlat70;
    let x_1754 : f32 = u_xlat71;
    u_xlat70 = (x_1753 * x_1754);
    let x_1756 : i32 = u_xlati69;
    let x_1758 : vec4<f32> = x_1704.x_AdditionalLightsSpotDir[x_1756];
    let x_1760 : vec4<f32> = u_xlat6;
    u_xlat71 = dot(vec3<f32>(x_1758.x, x_1758.y, x_1758.z), vec3<f32>(x_1760.x, x_1760.y, x_1760.z));
    let x_1763 : f32 = u_xlat71;
    let x_1764 : i32 = u_xlati69;
    let x_1766 : f32 = x_1704.x_AdditionalLightsAttenuation[x_1764].z;
    let x_1768 : i32 = u_xlati69;
    let x_1770 : f32 = x_1704.x_AdditionalLightsAttenuation[x_1768].w;
    u_xlat71 = ((x_1763 * x_1766) + x_1770);
    let x_1772 : f32 = u_xlat71;
    u_xlat71 = clamp(x_1772, 0.0f, 1.0f);
    let x_1774 : f32 = u_xlat71;
    let x_1775 : f32 = u_xlat71;
    u_xlat71 = (x_1774 * x_1775);
    let x_1777 : f32 = u_xlat70;
    let x_1778 : f32 = u_xlat71;
    u_xlat70 = (x_1777 * x_1778);
    let x_1782 : i32 = u_xlati69;
    let x_1784 : f32 = x_283.x_AdditionalShadowParams[x_1782].w;
    u_xlati71 = i32(x_1784);
    let x_1787 : i32 = u_xlati71;
    u_xlatb72 = (x_1787 >= 0i);
    let x_1789 : bool = u_xlatb72;
    if (x_1789) {
      let x_1793 : i32 = u_xlati69;
      let x_1795 : f32 = x_283.x_AdditionalShadowParams[x_1793].z;
      u_xlatb72 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1795, x_1795, x_1795, x_1795))));
      let x_1800 : bool = u_xlatb72;
      if (x_1800) {
        let x_1805 : vec4<f32> = u_xlat6;
        let x_1808 : vec4<f32> = u_xlat6;
        let x_1811 : vec4<bool> = (abs(vec4<f32>(x_1805.z, x_1805.z, x_1805.y, x_1805.z)) >= abs(vec4<f32>(x_1808.x, x_1808.y, x_1808.x, x_1808.x)));
        let x_1813 : vec3<bool> = vec3<bool>(x_1811.x, x_1811.y, x_1811.z);
        let x_1814 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
        let x_1817 : bool = u_xlatb7.y;
        let x_1819 : bool = u_xlatb7.x;
        u_xlatb72 = (x_1817 & x_1819);
        let x_1821 : vec4<f32> = u_xlat6;
        let x_1824 : vec4<bool> = (-(vec4<f32>(x_1821.z, x_1821.y, x_1821.z, x_1821.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1825 : vec3<bool> = vec3<bool>(x_1824.x, x_1824.y, x_1824.w);
        let x_1826 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1825.x, x_1825.y, x_1826.z, x_1825.z);
        let x_1829 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1829);
        let x_1835 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1835);
        let x_1841 : bool = u_xlatb7.w;
        u_xlat73 = select(0.0f, 1.0f, x_1841);
        let x_1845 : bool = u_xlatb7.z;
        if (x_1845) {
          let x_1850 : f32 = u_xlat7.y;
          x_1846 = x_1850;
        } else {
          let x_1852 : f32 = u_xlat73;
          x_1846 = x_1852;
        }
        let x_1853 : f32 = x_1846;
        u_xlat29 = x_1853;
        let x_1855 : bool = u_xlatb72;
        if (x_1855) {
          let x_1860 : f32 = u_xlat7.x;
          x_1856 = x_1860;
        } else {
          let x_1862 : f32 = u_xlat29;
          x_1856 = x_1862;
        }
        let x_1863 : f32 = x_1856;
        u_xlat72 = x_1863;
        let x_1864 : i32 = u_xlati69;
        let x_1866 : f32 = x_283.x_AdditionalShadowParams[x_1864].w;
        u_xlat7.x = trunc(x_1866);
        let x_1869 : f32 = u_xlat72;
        let x_1871 : f32 = u_xlat7.x;
        u_xlat72 = (x_1869 + x_1871);
        let x_1873 : f32 = u_xlat72;
        u_xlati71 = i32(x_1873);
      }
      let x_1875 : i32 = u_xlati71;
      u_xlati71 = (x_1875 << bitcast<u32>(2i));
      let x_1877 : vec3<f32> = vs_TEXCOORD1;
      let x_1880 : i32 = u_xlati71;
      let x_1883 : i32 = u_xlati71;
      let x_1887 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_1880 + 1i) / 4i)][((x_1883 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1877.y, x_1877.y, x_1877.y, x_1877.y) * x_1887);
      let x_1889 : i32 = u_xlati71;
      let x_1891 : i32 = u_xlati71;
      let x_1894 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[(x_1889 / 4i)][(x_1891 % 4i)];
      let x_1895 : vec3<f32> = vs_TEXCOORD1;
      let x_1898 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1894 * vec4<f32>(x_1895.x, x_1895.x, x_1895.x, x_1895.x)) + x_1898);
      let x_1900 : i32 = u_xlati71;
      let x_1903 : i32 = u_xlati71;
      let x_1907 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_1900 + 2i) / 4i)][((x_1903 + 2i) % 4i)];
      let x_1908 : vec3<f32> = vs_TEXCOORD1;
      let x_1911 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1907 * vec4<f32>(x_1908.z, x_1908.z, x_1908.z, x_1908.z)) + x_1911);
      let x_1913 : vec4<f32> = u_xlat7;
      let x_1914 : i32 = u_xlati71;
      let x_1917 : i32 = u_xlati71;
      let x_1921 : vec4<f32> = x_283.x_AdditionalLightsWorldToShadow[((x_1914 + 3i) / 4i)][((x_1917 + 3i) % 4i)];
      u_xlat7 = (x_1913 + x_1921);
      let x_1923 : vec4<f32> = u_xlat7;
      let x_1925 : vec4<f32> = u_xlat7;
      let x_1927 : vec3<f32> = (vec3<f32>(x_1923.x, x_1923.y, x_1923.z) / vec3<f32>(x_1925.w, x_1925.w, x_1925.w));
      let x_1928 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
      let x_1931 : i32 = u_xlati69;
      let x_1933 : f32 = x_283.x_AdditionalShadowParams[x_1931].y;
      u_xlatb71 = (0.0f < x_1933);
      let x_1935 : bool = u_xlatb71;
      if (x_1935) {
        let x_1938 : i32 = u_xlati69;
        let x_1940 : f32 = x_283.x_AdditionalShadowParams[x_1938].y;
        u_xlatb71 = (1.0f == x_1940);
        let x_1942 : bool = u_xlatb71;
        if (x_1942) {
          let x_1945 : vec4<f32> = u_xlat7;
          let x_1949 : vec4<f32> = x_283.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_1945.x, x_1945.y, x_1945.x, x_1945.y) + x_1949);
          let x_1952 : vec4<f32> = u_xlat8;
          let x_1953 : vec2<f32> = vec2<f32>(x_1952.x, x_1952.y);
          let x_1955 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_1953.x, x_1953.y, x_1955);
          let x_1963 : vec3<f32> = txVec30;
          let x_1965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
          u_xlat9.x = x_1965;
          let x_1968 : vec4<f32> = u_xlat8;
          let x_1969 : vec2<f32> = vec2<f32>(x_1968.z, x_1968.w);
          let x_1971 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_1969.x, x_1969.y, x_1971);
          let x_1978 : vec3<f32> = txVec31;
          let x_1980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1978.xy, x_1978.z);
          u_xlat9.y = x_1980;
          let x_1982 : vec4<f32> = u_xlat7;
          let x_1986 : vec4<f32> = x_283.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_1982.x, x_1982.y, x_1982.x, x_1982.y) + x_1986);
          let x_1989 : vec4<f32> = u_xlat8;
          let x_1990 : vec2<f32> = vec2<f32>(x_1989.x, x_1989.y);
          let x_1992 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_1990.x, x_1990.y, x_1992);
          let x_1999 : vec3<f32> = txVec32;
          let x_2001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1999.xy, x_1999.z);
          u_xlat9.z = x_2001;
          let x_2004 : vec4<f32> = u_xlat8;
          let x_2005 : vec2<f32> = vec2<f32>(x_2004.z, x_2004.w);
          let x_2007 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2005.x, x_2005.y, x_2007);
          let x_2014 : vec3<f32> = txVec33;
          let x_2016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2014.xy, x_2014.z);
          u_xlat9.w = x_2016;
          let x_2018 : vec4<f32> = u_xlat9;
          u_xlat71 = dot(x_2018, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2021 : i32 = u_xlati69;
          let x_2023 : f32 = x_283.x_AdditionalShadowParams[x_2021].y;
          u_xlatb72 = (2.0f == x_2023);
          let x_2025 : bool = u_xlatb72;
          if (x_2025) {
            let x_2028 : vec4<f32> = u_xlat7;
            let x_2032 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2035 : vec2<f32> = ((vec2<f32>(x_2028.x, x_2028.y) * vec2<f32>(x_2032.z, x_2032.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2036 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2035.x, x_2035.y, x_2036.z, x_2036.w);
            let x_2038 : vec4<f32> = u_xlat8;
            let x_2040 : vec2<f32> = floor(vec2<f32>(x_2038.x, x_2038.y));
            let x_2041 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2040.x, x_2040.y, x_2041.z, x_2041.w);
            let x_2044 : vec4<f32> = u_xlat7;
            let x_2047 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2050 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2044.x, x_2044.y) * vec2<f32>(x_2047.z, x_2047.w)) + -(vec2<f32>(x_2050.x, x_2050.y)));
            let x_2054 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2054.x, x_2054.x, x_2054.y, x_2054.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2057 : vec4<f32> = u_xlat9;
            let x_2059 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2057.x, x_2057.x, x_2057.z, x_2057.z) * vec4<f32>(x_2059.x, x_2059.x, x_2059.z, x_2059.z));
            let x_2062 : vec4<f32> = u_xlat10;
            let x_2064 : vec2<f32> = (vec2<f32>(x_2062.y, x_2062.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2065 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2064.x, x_2065.y, x_2064.y, x_2065.w);
            let x_2067 : vec4<f32> = u_xlat10;
            let x_2070 : vec2<f32> = u_xlat52;
            let x_2072 : vec2<f32> = ((vec2<f32>(x_2067.x, x_2067.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2070));
            let x_2073 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2072.x, x_2072.y, x_2073.z, x_2073.w);
            let x_2076 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2076) + vec2<f32>(1.0f, 1.0f));
            let x_2079 : vec2<f32> = u_xlat52;
            let x_2080 : vec2<f32> = min(x_2079, vec2<f32>(0.0f, 0.0f));
            let x_2081 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2080.x, x_2080.y, x_2081.z, x_2081.w);
            let x_2083 : vec4<f32> = u_xlat11;
            let x_2086 : vec4<f32> = u_xlat11;
            let x_2089 : vec2<f32> = u_xlat54;
            let x_2090 : vec2<f32> = ((-(vec2<f32>(x_2083.x, x_2083.y)) * vec2<f32>(x_2086.x, x_2086.y)) + x_2089);
            let x_2091 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2090.x, x_2090.y, x_2091.z, x_2091.w);
            let x_2093 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2093, vec2<f32>(0.0f, 0.0f));
            let x_2095 : vec2<f32> = u_xlat52;
            let x_2097 : vec2<f32> = u_xlat52;
            let x_2099 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2095) * x_2097) + vec2<f32>(x_2099.y, x_2099.w));
            let x_2102 : vec4<f32> = u_xlat11;
            let x_2104 : vec2<f32> = (vec2<f32>(x_2102.x, x_2102.y) + vec2<f32>(1.0f, 1.0f));
            let x_2105 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2104.x, x_2104.y, x_2105.z, x_2105.w);
            let x_2107 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2107 + vec2<f32>(1.0f, 1.0f));
            let x_2109 : vec4<f32> = u_xlat10;
            let x_2111 : vec2<f32> = (vec2<f32>(x_2109.x, x_2109.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2112 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2111.x, x_2111.y, x_2112.z, x_2112.w);
            let x_2114 : vec2<f32> = u_xlat54;
            let x_2115 : vec2<f32> = (x_2114 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2116 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2115.x, x_2115.y, x_2116.z, x_2116.w);
            let x_2118 : vec4<f32> = u_xlat11;
            let x_2120 : vec2<f32> = (vec2<f32>(x_2118.x, x_2118.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2121 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2120.x, x_2120.y, x_2121.z, x_2121.w);
            let x_2123 : vec2<f32> = u_xlat52;
            let x_2124 : vec2<f32> = (x_2123 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2125 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2124.x, x_2124.y, x_2125.z, x_2125.w);
            let x_2127 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2127.y, x_2127.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2131 : f32 = u_xlat11.x;
            u_xlat12.z = x_2131;
            let x_2134 : f32 = u_xlat52.x;
            u_xlat12.w = x_2134;
            let x_2137 : f32 = u_xlat13.x;
            u_xlat10.z = x_2137;
            let x_2140 : f32 = u_xlat9.x;
            u_xlat10.w = x_2140;
            let x_2142 : vec4<f32> = u_xlat10;
            let x_2144 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2142.z, x_2142.w, x_2142.x, x_2142.z) + vec4<f32>(x_2144.z, x_2144.w, x_2144.x, x_2144.z));
            let x_2148 : f32 = u_xlat12.y;
            u_xlat11.z = x_2148;
            let x_2151 : f32 = u_xlat52.y;
            u_xlat11.w = x_2151;
            let x_2154 : f32 = u_xlat10.y;
            u_xlat13.z = x_2154;
            let x_2157 : f32 = u_xlat9.z;
            u_xlat13.w = x_2157;
            let x_2159 : vec4<f32> = u_xlat11;
            let x_2161 : vec4<f32> = u_xlat13;
            let x_2163 : vec3<f32> = (vec3<f32>(x_2159.z, x_2159.y, x_2159.w) + vec3<f32>(x_2161.z, x_2161.y, x_2161.w));
            let x_2164 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2164.w);
            let x_2166 : vec4<f32> = u_xlat10;
            let x_2168 : vec4<f32> = u_xlat14;
            let x_2170 : vec3<f32> = (vec3<f32>(x_2166.x, x_2166.z, x_2166.w) / vec3<f32>(x_2168.z, x_2168.w, x_2168.y));
            let x_2171 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2170.x, x_2170.y, x_2170.z, x_2171.w);
            let x_2173 : vec4<f32> = u_xlat10;
            let x_2175 : vec3<f32> = (vec3<f32>(x_2173.x, x_2173.y, x_2173.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2176 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);
            let x_2178 : vec4<f32> = u_xlat13;
            let x_2180 : vec4<f32> = u_xlat9;
            let x_2182 : vec3<f32> = (vec3<f32>(x_2178.z, x_2178.y, x_2178.w) / vec3<f32>(x_2180.x, x_2180.y, x_2180.z));
            let x_2183 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2182.x, x_2182.y, x_2182.z, x_2183.w);
            let x_2185 : vec4<f32> = u_xlat11;
            let x_2187 : vec3<f32> = (vec3<f32>(x_2185.x, x_2185.y, x_2185.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2188 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);
            let x_2190 : vec4<f32> = u_xlat10;
            let x_2193 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2195 : vec3<f32> = (vec3<f32>(x_2190.y, x_2190.x, x_2190.z) * vec3<f32>(x_2193.x, x_2193.x, x_2193.x));
            let x_2196 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2195.x, x_2195.y, x_2195.z, x_2196.w);
            let x_2198 : vec4<f32> = u_xlat11;
            let x_2201 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2203 : vec3<f32> = (vec3<f32>(x_2198.x, x_2198.y, x_2198.z) * vec3<f32>(x_2201.y, x_2201.y, x_2201.y));
            let x_2204 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2203.x, x_2203.y, x_2203.z, x_2204.w);
            let x_2207 : f32 = u_xlat11.x;
            u_xlat10.w = x_2207;
            let x_2209 : vec4<f32> = u_xlat8;
            let x_2212 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2215 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2209.x, x_2209.y, x_2209.x, x_2209.y) * vec4<f32>(x_2212.x, x_2212.y, x_2212.x, x_2212.y)) + vec4<f32>(x_2215.y, x_2215.w, x_2215.x, x_2215.w));
            let x_2218 : vec4<f32> = u_xlat8;
            let x_2221 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2224 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2218.x, x_2218.y) * vec2<f32>(x_2221.x, x_2221.y)) + vec2<f32>(x_2224.z, x_2224.w));
            let x_2228 : f32 = u_xlat10.y;
            u_xlat11.w = x_2228;
            let x_2230 : vec4<f32> = u_xlat11;
            let x_2231 : vec2<f32> = vec2<f32>(x_2230.y, x_2230.z);
            let x_2232 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2232.x, x_2231.x, x_2232.z, x_2231.y);
            let x_2234 : vec4<f32> = u_xlat8;
            let x_2237 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2240 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2234.x, x_2234.y, x_2234.x, x_2234.y) * vec4<f32>(x_2237.x, x_2237.y, x_2237.x, x_2237.y)) + vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2240.y));
            let x_2243 : vec4<f32> = u_xlat8;
            let x_2246 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2249 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2243.x, x_2243.y, x_2243.x, x_2243.y) * vec4<f32>(x_2246.x, x_2246.y, x_2246.x, x_2246.y)) + vec4<f32>(x_2249.w, x_2249.y, x_2249.w, x_2249.z));
            let x_2252 : vec4<f32> = u_xlat8;
            let x_2255 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2258 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2252.x, x_2252.y, x_2252.x, x_2252.y) * vec4<f32>(x_2255.x, x_2255.y, x_2255.x, x_2255.y)) + vec4<f32>(x_2258.x, x_2258.w, x_2258.z, x_2258.w));
            let x_2261 : vec4<f32> = u_xlat9;
            let x_2263 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2261.x, x_2261.x, x_2261.x, x_2261.y) * vec4<f32>(x_2263.z, x_2263.w, x_2263.y, x_2263.z));
            let x_2266 : vec4<f32> = u_xlat9;
            let x_2268 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2266.y, x_2266.y, x_2266.z, x_2266.z) * x_2268);
            let x_2271 : f32 = u_xlat9.z;
            let x_2273 : f32 = u_xlat14.y;
            u_xlat72 = (x_2271 * x_2273);
            let x_2276 : vec4<f32> = u_xlat12;
            let x_2277 : vec2<f32> = vec2<f32>(x_2276.x, x_2276.y);
            let x_2279 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2277.x, x_2277.y, x_2279);
            let x_2286 : vec3<f32> = txVec34;
            let x_2288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2286.xy, x_2286.z);
            u_xlat73 = x_2288;
            let x_2290 : vec4<f32> = u_xlat12;
            let x_2291 : vec2<f32> = vec2<f32>(x_2290.z, x_2290.w);
            let x_2293 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2291.x, x_2291.y, x_2293);
            let x_2300 : vec3<f32> = txVec35;
            let x_2302 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2300.xy, x_2300.z);
            u_xlat8.x = x_2302;
            let x_2305 : f32 = u_xlat8.x;
            let x_2307 : f32 = u_xlat15.y;
            u_xlat8.x = (x_2305 * x_2307);
            let x_2311 : f32 = u_xlat15.x;
            let x_2312 : f32 = u_xlat73;
            let x_2315 : f32 = u_xlat8.x;
            u_xlat73 = ((x_2311 * x_2312) + x_2315);
            let x_2318 : vec2<f32> = u_xlat52;
            let x_2320 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2318.x, x_2318.y, x_2320);
            let x_2327 : vec3<f32> = txVec36;
            let x_2329 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2327.xy, x_2327.z);
            u_xlat8.x = x_2329;
            let x_2332 : f32 = u_xlat15.z;
            let x_2334 : f32 = u_xlat8.x;
            let x_2336 : f32 = u_xlat73;
            u_xlat73 = ((x_2332 * x_2334) + x_2336);
            let x_2339 : vec4<f32> = u_xlat11;
            let x_2340 : vec2<f32> = vec2<f32>(x_2339.x, x_2339.y);
            let x_2342 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2340.x, x_2340.y, x_2342);
            let x_2349 : vec3<f32> = txVec37;
            let x_2351 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2349.xy, x_2349.z);
            u_xlat8.x = x_2351;
            let x_2354 : f32 = u_xlat15.w;
            let x_2356 : f32 = u_xlat8.x;
            let x_2358 : f32 = u_xlat73;
            u_xlat73 = ((x_2354 * x_2356) + x_2358);
            let x_2361 : vec4<f32> = u_xlat13;
            let x_2362 : vec2<f32> = vec2<f32>(x_2361.x, x_2361.y);
            let x_2364 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2362.x, x_2362.y, x_2364);
            let x_2371 : vec3<f32> = txVec38;
            let x_2373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2371.xy, x_2371.z);
            u_xlat8.x = x_2373;
            let x_2376 : f32 = u_xlat16.x;
            let x_2378 : f32 = u_xlat8.x;
            let x_2380 : f32 = u_xlat73;
            u_xlat73 = ((x_2376 * x_2378) + x_2380);
            let x_2383 : vec4<f32> = u_xlat13;
            let x_2384 : vec2<f32> = vec2<f32>(x_2383.z, x_2383.w);
            let x_2386 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2384.x, x_2384.y, x_2386);
            let x_2393 : vec3<f32> = txVec39;
            let x_2395 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2393.xy, x_2393.z);
            u_xlat8.x = x_2395;
            let x_2398 : f32 = u_xlat16.y;
            let x_2400 : f32 = u_xlat8.x;
            let x_2402 : f32 = u_xlat73;
            u_xlat73 = ((x_2398 * x_2400) + x_2402);
            let x_2405 : vec4<f32> = u_xlat11;
            let x_2406 : vec2<f32> = vec2<f32>(x_2405.z, x_2405.w);
            let x_2408 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2406.x, x_2406.y, x_2408);
            let x_2415 : vec3<f32> = txVec40;
            let x_2417 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2415.xy, x_2415.z);
            u_xlat8.x = x_2417;
            let x_2420 : f32 = u_xlat16.z;
            let x_2422 : f32 = u_xlat8.x;
            let x_2424 : f32 = u_xlat73;
            u_xlat73 = ((x_2420 * x_2422) + x_2424);
            let x_2427 : vec4<f32> = u_xlat10;
            let x_2428 : vec2<f32> = vec2<f32>(x_2427.x, x_2427.y);
            let x_2430 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2428.x, x_2428.y, x_2430);
            let x_2437 : vec3<f32> = txVec41;
            let x_2439 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2437.xy, x_2437.z);
            u_xlat8.x = x_2439;
            let x_2442 : f32 = u_xlat16.w;
            let x_2444 : f32 = u_xlat8.x;
            let x_2446 : f32 = u_xlat73;
            u_xlat73 = ((x_2442 * x_2444) + x_2446);
            let x_2449 : vec4<f32> = u_xlat10;
            let x_2450 : vec2<f32> = vec2<f32>(x_2449.z, x_2449.w);
            let x_2452 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
            let x_2459 : vec3<f32> = txVec42;
            let x_2461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
            u_xlat8.x = x_2461;
            let x_2463 : f32 = u_xlat72;
            let x_2465 : f32 = u_xlat8.x;
            let x_2467 : f32 = u_xlat73;
            u_xlat71 = ((x_2463 * x_2465) + x_2467);
          } else {
            let x_2470 : vec4<f32> = u_xlat7;
            let x_2473 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2476 : vec2<f32> = ((vec2<f32>(x_2470.x, x_2470.y) * vec2<f32>(x_2473.z, x_2473.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2477 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2479 : vec4<f32> = u_xlat8;
            let x_2481 : vec2<f32> = floor(vec2<f32>(x_2479.x, x_2479.y));
            let x_2482 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2481.x, x_2481.y, x_2482.z, x_2482.w);
            let x_2484 : vec4<f32> = u_xlat7;
            let x_2487 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2490 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2484.x, x_2484.y) * vec2<f32>(x_2487.z, x_2487.w)) + -(vec2<f32>(x_2490.x, x_2490.y)));
            let x_2494 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2494.x, x_2494.x, x_2494.y, x_2494.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2497 : vec4<f32> = u_xlat9;
            let x_2499 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2497.x, x_2497.x, x_2497.z, x_2497.z) * vec4<f32>(x_2499.x, x_2499.x, x_2499.z, x_2499.z));
            let x_2502 : vec4<f32> = u_xlat10;
            let x_2504 : vec2<f32> = (vec2<f32>(x_2502.y, x_2502.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2505 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2505.x, x_2504.x, x_2505.z, x_2504.y);
            let x_2507 : vec4<f32> = u_xlat10;
            let x_2510 : vec2<f32> = u_xlat52;
            let x_2512 : vec2<f32> = ((vec2<f32>(x_2507.x, x_2507.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2510));
            let x_2513 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2512.x, x_2513.y, x_2512.y, x_2513.w);
            let x_2515 : vec2<f32> = u_xlat52;
            let x_2517 : vec2<f32> = (-(x_2515) + vec2<f32>(1.0f, 1.0f));
            let x_2518 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2517.x, x_2517.y, x_2518.z, x_2518.w);
            let x_2520 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2520, vec2<f32>(0.0f, 0.0f));
            let x_2522 : vec2<f32> = u_xlat54;
            let x_2524 : vec2<f32> = u_xlat54;
            let x_2526 : vec4<f32> = u_xlat10;
            let x_2528 : vec2<f32> = ((-(x_2522) * x_2524) + vec2<f32>(x_2526.x, x_2526.y));
            let x_2529 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
            let x_2531 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2531, vec2<f32>(0.0f, 0.0f));
            let x_2534 : vec2<f32> = u_xlat54;
            let x_2536 : vec2<f32> = u_xlat54;
            let x_2538 : vec4<f32> = u_xlat9;
            let x_2540 : vec2<f32> = ((-(x_2534) * x_2536) + vec2<f32>(x_2538.y, x_2538.w));
            let x_2541 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2540.x, x_2541.y, x_2540.y);
            let x_2543 : vec4<f32> = u_xlat10;
            let x_2545 : vec2<f32> = (vec2<f32>(x_2543.x, x_2543.y) + vec2<f32>(2.0f, 2.0f));
            let x_2546 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2545.x, x_2545.y, x_2546.z, x_2546.w);
            let x_2548 : vec3<f32> = u_xlat31;
            let x_2550 : vec2<f32> = (vec2<f32>(x_2548.x, x_2548.z) + vec2<f32>(2.0f, 2.0f));
            let x_2551 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2551.x, x_2550.x, x_2551.z, x_2550.y);
            let x_2554 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2554 * 0.08163200318813323975f);
            let x_2557 : vec4<f32> = u_xlat9;
            let x_2559 : vec3<f32> = (vec3<f32>(x_2557.z, x_2557.x, x_2557.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2560 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
            let x_2562 : vec4<f32> = u_xlat10;
            let x_2564 : vec2<f32> = (vec2<f32>(x_2562.x, x_2562.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2565 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2564.x, x_2564.y, x_2565.z, x_2565.w);
            let x_2568 : f32 = u_xlat13.y;
            u_xlat12.x = x_2568;
            let x_2570 : vec2<f32> = u_xlat52;
            let x_2573 : vec2<f32> = ((vec2<f32>(x_2570.x, x_2570.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2574 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2574.x, x_2573.x, x_2574.z, x_2573.y);
            let x_2576 : vec2<f32> = u_xlat52;
            let x_2579 : vec2<f32> = ((vec2<f32>(x_2576.x, x_2576.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2580 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2579.x, x_2580.y, x_2579.y, x_2580.w);
            let x_2583 : f32 = u_xlat9.x;
            u_xlat10.y = x_2583;
            let x_2586 : f32 = u_xlat11.y;
            u_xlat10.w = x_2586;
            let x_2588 : vec4<f32> = u_xlat10;
            let x_2589 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2588 + x_2589);
            let x_2591 : vec2<f32> = u_xlat52;
            let x_2594 : vec2<f32> = ((vec2<f32>(x_2591.y, x_2591.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2595 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2595.x, x_2594.x, x_2595.z, x_2594.y);
            let x_2597 : vec2<f32> = u_xlat52;
            let x_2600 : vec2<f32> = ((vec2<f32>(x_2597.y, x_2597.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2601 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2600.x, x_2601.y, x_2600.y, x_2601.w);
            let x_2604 : f32 = u_xlat9.y;
            u_xlat11.y = x_2604;
            let x_2606 : vec4<f32> = u_xlat11;
            let x_2607 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2606 + x_2607);
            let x_2609 : vec4<f32> = u_xlat10;
            let x_2610 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2609 / x_2610);
            let x_2612 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2612 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2614 : vec4<f32> = u_xlat11;
            let x_2615 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2614 / x_2615);
            let x_2617 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2617 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2619 : vec4<f32> = u_xlat10;
            let x_2622 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2619.w, x_2619.x, x_2619.y, x_2619.z) * vec4<f32>(x_2622.x, x_2622.x, x_2622.x, x_2622.x));
            let x_2625 : vec4<f32> = u_xlat11;
            let x_2628 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2625.x, x_2625.w, x_2625.y, x_2625.z) * vec4<f32>(x_2628.y, x_2628.y, x_2628.y, x_2628.y));
            let x_2631 : vec4<f32> = u_xlat10;
            let x_2632 : vec3<f32> = vec3<f32>(x_2631.y, x_2631.z, x_2631.w);
            let x_2633 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2632.x, x_2633.y, x_2632.y, x_2632.z);
            let x_2636 : f32 = u_xlat11.x;
            u_xlat13.y = x_2636;
            let x_2638 : vec4<f32> = u_xlat8;
            let x_2641 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2644 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2638.x, x_2638.y, x_2638.x, x_2638.y) * vec4<f32>(x_2641.x, x_2641.y, x_2641.x, x_2641.y)) + vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2644.y));
            let x_2647 : vec4<f32> = u_xlat8;
            let x_2650 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2653 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2647.x, x_2647.y) * vec2<f32>(x_2650.x, x_2650.y)) + vec2<f32>(x_2653.w, x_2653.y));
            let x_2657 : f32 = u_xlat13.y;
            u_xlat10.y = x_2657;
            let x_2660 : f32 = u_xlat11.z;
            u_xlat13.y = x_2660;
            let x_2662 : vec4<f32> = u_xlat8;
            let x_2665 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2668 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2662.x, x_2662.y, x_2662.x, x_2662.y) * vec4<f32>(x_2665.x, x_2665.y, x_2665.x, x_2665.y)) + vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2668.y));
            let x_2671 : vec4<f32> = u_xlat8;
            let x_2674 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2677 : vec4<f32> = u_xlat13;
            let x_2679 : vec2<f32> = ((vec2<f32>(x_2671.x, x_2671.y) * vec2<f32>(x_2674.x, x_2674.y)) + vec2<f32>(x_2677.w, x_2677.y));
            let x_2680 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2679.x, x_2679.y, x_2680.z, x_2680.w);
            let x_2683 : f32 = u_xlat13.y;
            u_xlat10.z = x_2683;
            let x_2685 : vec4<f32> = u_xlat8;
            let x_2688 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2691 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2685.x, x_2685.y, x_2685.x, x_2685.y) * vec4<f32>(x_2688.x, x_2688.y, x_2688.x, x_2688.y)) + vec4<f32>(x_2691.x, x_2691.y, x_2691.x, x_2691.z));
            let x_2695 : f32 = u_xlat11.w;
            u_xlat13.y = x_2695;
            let x_2698 : vec4<f32> = u_xlat8;
            let x_2701 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2704 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2698.x, x_2698.y, x_2698.x, x_2698.y) * vec4<f32>(x_2701.x, x_2701.y, x_2701.x, x_2701.y)) + vec4<f32>(x_2704.x, x_2704.y, x_2704.z, x_2704.y));
            let x_2708 : vec4<f32> = u_xlat8;
            let x_2711 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2714 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2708.x, x_2708.y) * vec2<f32>(x_2711.x, x_2711.y)) + vec2<f32>(x_2714.w, x_2714.y));
            let x_2718 : f32 = u_xlat13.y;
            u_xlat10.w = x_2718;
            let x_2721 : vec4<f32> = u_xlat8;
            let x_2724 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2721.x, x_2721.y) * vec2<f32>(x_2724.x, x_2724.y)) + vec2<f32>(x_2727.x, x_2727.w));
            let x_2730 : vec4<f32> = u_xlat13;
            let x_2731 : vec3<f32> = vec3<f32>(x_2730.x, x_2730.z, x_2730.w);
            let x_2732 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2731.x, x_2732.y, x_2731.y, x_2731.z);
            let x_2734 : vec4<f32> = u_xlat8;
            let x_2737 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2740 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2734.x, x_2734.y, x_2734.x, x_2734.y) * vec4<f32>(x_2737.x, x_2737.y, x_2737.x, x_2737.y)) + vec4<f32>(x_2740.x, x_2740.y, x_2740.z, x_2740.y));
            let x_2744 : vec4<f32> = u_xlat8;
            let x_2747 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2750 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2744.x, x_2744.y) * vec2<f32>(x_2747.x, x_2747.y)) + vec2<f32>(x_2750.w, x_2750.y));
            let x_2754 : f32 = u_xlat10.x;
            u_xlat11.x = x_2754;
            let x_2756 : vec4<f32> = u_xlat8;
            let x_2759 : vec4<f32> = x_283.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat11;
            let x_2764 : vec2<f32> = ((vec2<f32>(x_2756.x, x_2756.y) * vec2<f32>(x_2759.x, x_2759.y)) + vec2<f32>(x_2762.x, x_2762.y));
            let x_2765 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2764.x, x_2764.y, x_2765.z, x_2765.w);
            let x_2768 : vec4<f32> = u_xlat9;
            let x_2770 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2768.x, x_2768.x, x_2768.x, x_2768.x) * x_2770);
            let x_2773 : vec4<f32> = u_xlat9;
            let x_2775 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2773.y, x_2773.y, x_2773.y, x_2773.y) * x_2775);
            let x_2778 : vec4<f32> = u_xlat9;
            let x_2780 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2778.z, x_2778.z, x_2778.z, x_2778.z) * x_2780);
            let x_2782 : vec4<f32> = u_xlat9;
            let x_2784 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2782.w, x_2782.w, x_2782.w, x_2782.w) * x_2784);
            let x_2787 : vec4<f32> = u_xlat14;
            let x_2788 : vec2<f32> = vec2<f32>(x_2787.x, x_2787.y);
            let x_2790 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2788.x, x_2788.y, x_2790);
            let x_2797 : vec3<f32> = txVec43;
            let x_2799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2797.xy, x_2797.z);
            u_xlat72 = x_2799;
            let x_2801 : vec4<f32> = u_xlat14;
            let x_2802 : vec2<f32> = vec2<f32>(x_2801.z, x_2801.w);
            let x_2804 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2802.x, x_2802.y, x_2804);
            let x_2811 : vec3<f32> = txVec44;
            let x_2813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2811.xy, x_2811.z);
            u_xlat73 = x_2813;
            let x_2814 : f32 = u_xlat73;
            let x_2816 : f32 = u_xlat19.y;
            u_xlat73 = (x_2814 * x_2816);
            let x_2819 : f32 = u_xlat19.x;
            let x_2820 : f32 = u_xlat72;
            let x_2822 : f32 = u_xlat73;
            u_xlat72 = ((x_2819 * x_2820) + x_2822);
            let x_2825 : vec2<f32> = u_xlat52;
            let x_2827 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2825.x, x_2825.y, x_2827);
            let x_2834 : vec3<f32> = txVec45;
            let x_2836 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2834.xy, x_2834.z);
            u_xlat73 = x_2836;
            let x_2838 : f32 = u_xlat19.z;
            let x_2839 : f32 = u_xlat73;
            let x_2841 : f32 = u_xlat72;
            u_xlat72 = ((x_2838 * x_2839) + x_2841);
            let x_2844 : vec4<f32> = u_xlat17;
            let x_2845 : vec2<f32> = vec2<f32>(x_2844.x, x_2844.y);
            let x_2847 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
            let x_2854 : vec3<f32> = txVec46;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat73 = x_2856;
            let x_2858 : f32 = u_xlat19.w;
            let x_2859 : f32 = u_xlat73;
            let x_2861 : f32 = u_xlat72;
            u_xlat72 = ((x_2858 * x_2859) + x_2861);
            let x_2864 : vec4<f32> = u_xlat15;
            let x_2865 : vec2<f32> = vec2<f32>(x_2864.x, x_2864.y);
            let x_2867 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2865.x, x_2865.y, x_2867);
            let x_2874 : vec3<f32> = txVec47;
            let x_2876 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2874.xy, x_2874.z);
            u_xlat73 = x_2876;
            let x_2878 : f32 = u_xlat20.x;
            let x_2879 : f32 = u_xlat73;
            let x_2881 : f32 = u_xlat72;
            u_xlat72 = ((x_2878 * x_2879) + x_2881);
            let x_2884 : vec4<f32> = u_xlat15;
            let x_2885 : vec2<f32> = vec2<f32>(x_2884.z, x_2884.w);
            let x_2887 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2885.x, x_2885.y, x_2887);
            let x_2894 : vec3<f32> = txVec48;
            let x_2896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2894.xy, x_2894.z);
            u_xlat73 = x_2896;
            let x_2898 : f32 = u_xlat20.y;
            let x_2899 : f32 = u_xlat73;
            let x_2901 : f32 = u_xlat72;
            u_xlat72 = ((x_2898 * x_2899) + x_2901);
            let x_2904 : vec4<f32> = u_xlat16;
            let x_2905 : vec2<f32> = vec2<f32>(x_2904.x, x_2904.y);
            let x_2907 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2905.x, x_2905.y, x_2907);
            let x_2914 : vec3<f32> = txVec49;
            let x_2916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2914.xy, x_2914.z);
            u_xlat73 = x_2916;
            let x_2918 : f32 = u_xlat20.z;
            let x_2919 : f32 = u_xlat73;
            let x_2921 : f32 = u_xlat72;
            u_xlat72 = ((x_2918 * x_2919) + x_2921);
            let x_2924 : vec4<f32> = u_xlat17;
            let x_2925 : vec2<f32> = vec2<f32>(x_2924.z, x_2924.w);
            let x_2927 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec50;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat73 = x_2936;
            let x_2938 : f32 = u_xlat20.w;
            let x_2939 : f32 = u_xlat73;
            let x_2941 : f32 = u_xlat72;
            u_xlat72 = ((x_2938 * x_2939) + x_2941);
            let x_2944 : vec4<f32> = u_xlat18;
            let x_2945 : vec2<f32> = vec2<f32>(x_2944.x, x_2944.y);
            let x_2947 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_2945.x, x_2945.y, x_2947);
            let x_2954 : vec3<f32> = txVec51;
            let x_2956 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2954.xy, x_2954.z);
            u_xlat73 = x_2956;
            let x_2958 : f32 = u_xlat21.x;
            let x_2959 : f32 = u_xlat73;
            let x_2961 : f32 = u_xlat72;
            u_xlat72 = ((x_2958 * x_2959) + x_2961);
            let x_2964 : vec4<f32> = u_xlat18;
            let x_2965 : vec2<f32> = vec2<f32>(x_2964.z, x_2964.w);
            let x_2967 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_2965.x, x_2965.y, x_2967);
            let x_2974 : vec3<f32> = txVec52;
            let x_2976 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2974.xy, x_2974.z);
            u_xlat73 = x_2976;
            let x_2978 : f32 = u_xlat21.y;
            let x_2979 : f32 = u_xlat73;
            let x_2981 : f32 = u_xlat72;
            u_xlat72 = ((x_2978 * x_2979) + x_2981);
            let x_2984 : vec2<f32> = u_xlat32;
            let x_2986 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
            let x_2993 : vec3<f32> = txVec53;
            let x_2995 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
            u_xlat73 = x_2995;
            let x_2997 : f32 = u_xlat21.z;
            let x_2998 : f32 = u_xlat73;
            let x_3000 : f32 = u_xlat72;
            u_xlat72 = ((x_2997 * x_2998) + x_3000);
            let x_3003 : vec2<f32> = u_xlat60;
            let x_3005 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
            let x_3012 : vec3<f32> = txVec54;
            let x_3014 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
            u_xlat73 = x_3014;
            let x_3016 : f32 = u_xlat21.w;
            let x_3017 : f32 = u_xlat73;
            let x_3019 : f32 = u_xlat72;
            u_xlat72 = ((x_3016 * x_3017) + x_3019);
            let x_3022 : vec4<f32> = u_xlat13;
            let x_3023 : vec2<f32> = vec2<f32>(x_3022.x, x_3022.y);
            let x_3025 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
            let x_3032 : vec3<f32> = txVec55;
            let x_3034 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3032.xy, x_3032.z);
            u_xlat73 = x_3034;
            let x_3036 : f32 = u_xlat9.x;
            let x_3037 : f32 = u_xlat73;
            let x_3039 : f32 = u_xlat72;
            u_xlat72 = ((x_3036 * x_3037) + x_3039);
            let x_3042 : vec4<f32> = u_xlat13;
            let x_3043 : vec2<f32> = vec2<f32>(x_3042.z, x_3042.w);
            let x_3045 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
            let x_3052 : vec3<f32> = txVec56;
            let x_3054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
            u_xlat73 = x_3054;
            let x_3056 : f32 = u_xlat9.y;
            let x_3057 : f32 = u_xlat73;
            let x_3059 : f32 = u_xlat72;
            u_xlat72 = ((x_3056 * x_3057) + x_3059);
            let x_3062 : vec2<f32> = u_xlat55;
            let x_3064 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3062.x, x_3062.y, x_3064);
            let x_3071 : vec3<f32> = txVec57;
            let x_3073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3071.xy, x_3071.z);
            u_xlat73 = x_3073;
            let x_3075 : f32 = u_xlat9.z;
            let x_3076 : f32 = u_xlat73;
            let x_3078 : f32 = u_xlat72;
            u_xlat72 = ((x_3075 * x_3076) + x_3078);
            let x_3081 : vec4<f32> = u_xlat8;
            let x_3082 : vec2<f32> = vec2<f32>(x_3081.x, x_3081.y);
            let x_3084 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3082.x, x_3082.y, x_3084);
            let x_3091 : vec3<f32> = txVec58;
            let x_3093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3091.xy, x_3091.z);
            u_xlat73 = x_3093;
            let x_3095 : f32 = u_xlat9.w;
            let x_3096 : f32 = u_xlat73;
            let x_3098 : f32 = u_xlat72;
            u_xlat71 = ((x_3095 * x_3096) + x_3098);
          }
        }
      } else {
        let x_3102 : vec4<f32> = u_xlat7;
        let x_3103 : vec2<f32> = vec2<f32>(x_3102.x, x_3102.y);
        let x_3105 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3103.x, x_3103.y, x_3105);
        let x_3112 : vec3<f32> = txVec59;
        let x_3114 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3112.xy, x_3112.z);
        u_xlat71 = x_3114;
      }
      let x_3115 : i32 = u_xlati69;
      let x_3117 : f32 = x_283.x_AdditionalShadowParams[x_3115].x;
      u_xlat72 = (1.0f + -(x_3117));
      let x_3120 : f32 = u_xlat71;
      let x_3121 : i32 = u_xlati69;
      let x_3123 : f32 = x_283.x_AdditionalShadowParams[x_3121].x;
      let x_3125 : f32 = u_xlat72;
      u_xlat71 = ((x_3120 * x_3123) + x_3125);
      let x_3128 : f32 = u_xlat7.z;
      u_xlatb72 = (0.0f >= x_3128);
      let x_3131 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_3131 >= 1.0f);
      let x_3134 : bool = u_xlatb72;
      let x_3136 : bool = u_xlatb7.x;
      u_xlatb72 = (x_3134 | x_3136);
      let x_3138 : bool = u_xlatb72;
      let x_3139 : f32 = u_xlat71;
      u_xlat71 = select(x_3139, 1.0f, x_3138);
    } else {
      u_xlat71 = 1.0f;
    }
    let x_3142 : f32 = u_xlat71;
    u_xlat72 = (-(x_3142) + 1.0f);
    let x_3146 : f32 = u_xlat1.x;
    let x_3147 : f32 = u_xlat72;
    let x_3149 : f32 = u_xlat71;
    u_xlat71 = ((x_3146 * x_3147) + x_3149);
    let x_3151 : f32 = u_xlat70;
    let x_3152 : f32 = u_xlat71;
    u_xlat70 = (x_3151 * x_3152);
    let x_3154 : f32 = u_xlat70;
    let x_3156 : i32 = u_xlati69;
    let x_3158 : vec4<f32> = x_1704.x_AdditionalLightsColor[x_3156];
    let x_3160 : vec3<f32> = (vec3<f32>(x_3154, x_3154, x_3154) * vec3<f32>(x_3158.x, x_3158.y, x_3158.z));
    let x_3161 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3160.x, x_3160.y, x_3160.z, x_3161.w);
    let x_3163 : vec4<f32> = u_xlat2;
    let x_3165 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_3163.x, x_3163.y, x_3163.z), vec3<f32>(x_3165.x, x_3165.y, x_3165.z));
    let x_3168 : f32 = u_xlat69;
    u_xlat69 = clamp(x_3168, 0.0f, 1.0f);
    let x_3170 : f32 = u_xlat69;
    let x_3172 : vec4<f32> = u_xlat7;
    let x_3174 : vec3<f32> = (vec3<f32>(x_3170, x_3170, x_3170) * vec3<f32>(x_3172.x, x_3172.y, x_3172.z));
    let x_3175 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3174.x, x_3174.y, x_3174.z, x_3175.w);
    let x_3177 : vec4<f32> = u_xlat1;
    let x_3179 : vec4<f32> = u_xlat6;
    let x_3181 : vec3<f32> = (vec3<f32>(x_3177.y, x_3177.z, x_3177.w) * vec3<f32>(x_3179.x, x_3179.y, x_3179.z));
    let x_3182 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3181.x, x_3181.y, x_3181.z, x_3182.w);
    let x_3184 : vec4<f32> = u_xlat6;
    let x_3186 : vec4<f32> = u_xlat0;
    let x_3189 : vec4<f32> = u_xlat5;
    let x_3191 : vec3<f32> = ((vec3<f32>(x_3184.x, x_3184.y, x_3184.z) * vec3<f32>(x_3186.x, x_3186.x, x_3186.x)) + vec3<f32>(x_3189.x, x_3189.y, x_3189.z));
    let x_3192 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3191.x, x_3191.y, x_3191.z, x_3192.w);

    continuing {
      let x_3194 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3194 + bitcast<u32>(1i));
    }
  }
  let x_3196 : vec3<f32> = u_xlat3;
  let x_3197 : vec4<f32> = u_xlat1;
  let x_3200 : vec4<f32> = u_xlat4;
  let x_3202 : vec3<f32> = ((x_3196 * vec3<f32>(x_3197.y, x_3197.z, x_3197.w)) + vec3<f32>(x_3200.x, x_3200.y, x_3200.z));
  let x_3203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3202.x, x_3202.y, x_3202.z, x_3203.w);
  let x_3205 : vec4<f32> = u_xlat5;
  let x_3207 : vec4<f32> = u_xlat1;
  let x_3209 : vec3<f32> = (vec3<f32>(x_3205.x, x_3205.y, x_3205.z) + vec3<f32>(x_3207.x, x_3207.y, x_3207.z));
  let x_3210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3209.x, x_3209.y, x_3209.z, x_3210.w);
  let x_3212 : f32 = u_xlat22;
  let x_3213 : f32 = u_xlat22;
  u_xlat22 = (x_3212 * -(x_3213));
  let x_3216 : f32 = u_xlat22;
  u_xlat22 = exp2(x_3216);
  let x_3218 : vec4<f32> = u_xlat1;
  let x_3221 : vec4<f32> = x_28.unity_FogColor;
  let x_3224 : vec3<f32> = (vec3<f32>(x_3218.x, x_3218.y, x_3218.z) + -(vec3<f32>(x_3221.x, x_3221.y, x_3221.z)));
  let x_3225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3224.x, x_3224.y, x_3224.z, x_3225.w);
  let x_3229 : f32 = u_xlat22;
  let x_3231 : vec4<f32> = u_xlat1;
  let x_3235 : vec4<f32> = x_28.unity_FogColor;
  let x_3237 : vec3<f32> = ((vec3<f32>(x_3229, x_3229, x_3229) * vec3<f32>(x_3231.x, x_3231.y, x_3231.z)) + vec3<f32>(x_3235.x, x_3235.y, x_3235.z));
  let x_3238 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3237.x, x_3237.y, x_3237.z, x_3238.w);
  let x_3241 : f32 = x_42.x_Surface;
  u_xlatb22 = (x_3241 == 1.0f);
  let x_3243 : bool = u_xlatb22;
  let x_3244 : bool = u_xlatb44;
  u_xlatb22 = (x_3243 | x_3244);
  let x_3246 : bool = u_xlatb22;
  if (x_3246) {
    let x_3251 : f32 = u_xlat0.x;
    x_3247 = x_3251;
  } else {
    x_3247 = 1.0f;
  }
  let x_3253 : f32 = x_3247;
  SV_Target0.w = x_3253;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


