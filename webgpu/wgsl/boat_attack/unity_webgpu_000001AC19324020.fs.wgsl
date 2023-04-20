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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_159 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu22 : u32;

var<private> u_xlati22 : i32;

@group(1) @binding(2) var<uniform> x_355 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat68 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1855 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
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
  var x_1992 : f32;
  var x_2002 : f32;
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
  var x_3338 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat22 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat66;
  let x_90 : f32 = u_xlat44;
  u_xlat44 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat44;
  u_xlat44 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat22;
  let x_97 : f32 = u_xlat44;
  u_xlat22 = (x_96 / x_97);
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb44;
  if (x_109) {
    let x_113 : f32 = u_xlat22;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat22 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat22;
  u_xlatb22 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb22;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat22;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_150 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (x_150 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres1;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_181 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres2;
  let x_184 : vec3<f32> = (x_178 + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec3<f32> = vs_TEXCOORD1;
  let x_190 : vec4<f32> = x_159.x_CascadeShadowSplitSpheres3;
  let x_193 : vec3<f32> = (x_188 + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_194 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat3;
  let x_198 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : vec4<f32> = u_xlat5;
  let x_211 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec4<f32> = u_xlat6;
  let x_218 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_225 : vec4<f32> = u_xlat3;
  let x_228 : vec4<f32> = x_159.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_225 < x_228);
  let x_231 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_243);
  let x_247 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_247);
  let x_253 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_253);
  let x_257 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_257);
  let x_260 : vec4<f32> = u_xlat3;
  let x_262 : vec4<f32> = u_xlat4;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_262.y, x_262.z, x_262.w));
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat3;
  let x_270 : vec3<f32> = max(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_271.x, x_270.x, x_270.y, x_270.z);
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(x_273, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_279 : f32 = u_xlat22;
  u_xlat22 = (-(x_279) + 4.0f);
  let x_284 : f32 = u_xlat22;
  u_xlatu22 = u32(x_284);
  let x_288 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_288) << bitcast<u32>(2i));
  let x_291 : vec3<f32> = vs_TEXCOORD1;
  let x_293 : i32 = u_xlati22;
  let x_296 : i32 = u_xlati22;
  let x_300 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_293 + 1i) / 4i)][((x_296 + 1i) % 4i)];
  let x_302 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_305 : i32 = u_xlati22;
  let x_307 : i32 = u_xlati22;
  let x_310 : vec4<f32> = x_159.x_MainLightWorldToShadow[(x_305 / 4i)][(x_307 % 4i)];
  let x_312 : vec3<f32> = vs_TEXCOORD1;
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.x, x_312.x, x_312.x)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : i32 = u_xlati22;
  let x_323 : i32 = u_xlati22;
  let x_327 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_320 + 2i) / 4i)][((x_323 + 2i) % 4i)];
  let x_329 : vec3<f32> = vs_TEXCOORD1;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat3;
  let x_339 : i32 = u_xlati22;
  let x_342 : i32 = u_xlati22;
  let x_346 : vec4<f32> = x_159.x_MainLightWorldToShadow[((x_339 + 3i) / 4i)][((x_342 + 3i) % 4i)];
  let x_348 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  u_xlat2.w = 1.0f;
  let x_358 : vec4<f32> = x_355.unity_SHAr;
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_358, x_359);
  let x_364 : vec4<f32> = x_355.unity_SHAg;
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_364, x_365);
  let x_370 : vec4<f32> = x_355.unity_SHAb;
  let x_371 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_370, x_371);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_374.y, x_374.z, x_374.z, x_374.x) * vec4<f32>(x_376.x, x_376.y, x_376.z, x_376.z));
  let x_381 : vec4<f32> = x_355.unity_SHBr;
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_355.unity_SHBg;
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_355.unity_SHBb;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_393, x_394);
  let x_398 : f32 = u_xlat2.y;
  let x_400 : f32 = u_xlat2.y;
  u_xlat22 = (x_398 * x_400);
  let x_403 : f32 = u_xlat2.x;
  let x_405 : f32 = u_xlat2.x;
  let x_407 : f32 = u_xlat22;
  u_xlat22 = ((x_403 * x_405) + -(x_407));
  let x_412 : vec4<f32> = x_355.unity_SHC;
  let x_414 : f32 = u_xlat22;
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414, x_414, x_414)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat4;
  let x_424 : vec4<f32> = u_xlat5;
  let x_426 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat4;
  let x_431 : vec3<f32> = max(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_159.x_MainLightShadowParams.y;
  u_xlatb22 = (0.0f < x_436);
  let x_438 : bool = u_xlatb22;
  if (x_438) {
    let x_442 : f32 = x_159.x_MainLightShadowParams.y;
    u_xlatb22 = (x_442 == 1.0f);
    let x_444 : bool = u_xlatb22;
    if (x_444) {
      let x_447 : vec4<f32> = u_xlat3;
      let x_451 : vec4<f32> = x_159.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_447.x, x_447.y, x_447.x, x_447.y) + x_451);
      let x_455 : vec4<f32> = u_xlat5;
      let x_456 : vec2<f32> = vec2<f32>(x_455.x, x_455.y);
      let x_458 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_456.x, x_456.y, x_458);
      let x_470 : vec3<f32> = txVec0;
      let x_472 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_470.xy, x_470.z);
      u_xlat6.x = x_472;
      let x_475 : vec4<f32> = u_xlat5;
      let x_476 : vec2<f32> = vec2<f32>(x_475.z, x_475.w);
      let x_478 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_476.x, x_476.y, x_478);
      let x_485 : vec3<f32> = txVec1;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_485.xy, x_485.z);
      u_xlat6.y = x_487;
      let x_489 : vec4<f32> = u_xlat3;
      let x_493 : vec4<f32> = x_159.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_489.x, x_489.y, x_489.x, x_489.y) + x_493);
      let x_496 : vec4<f32> = u_xlat5;
      let x_497 : vec2<f32> = vec2<f32>(x_496.x, x_496.y);
      let x_499 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_497.x, x_497.y, x_499);
      let x_506 : vec3<f32> = txVec2;
      let x_508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_506.xy, x_506.z);
      u_xlat6.z = x_508;
      let x_511 : vec4<f32> = u_xlat5;
      let x_512 : vec2<f32> = vec2<f32>(x_511.z, x_511.w);
      let x_514 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_512.x, x_512.y, x_514);
      let x_521 : vec3<f32> = txVec3;
      let x_523 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_521.xy, x_521.z);
      u_xlat6.w = x_523;
      let x_525 : vec4<f32> = u_xlat6;
      u_xlat22 = dot(x_525, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_532 : f32 = x_159.x_MainLightShadowParams.y;
      u_xlatb66 = (x_532 == 2.0f);
      let x_534 : bool = u_xlatb66;
      if (x_534) {
        let x_537 : vec4<f32> = u_xlat3;
        let x_541 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_545 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(x_541.z, x_541.w)) + vec2<f32>(0.5f, 0.5f));
        let x_546 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat5;
        let x_550 : vec2<f32> = floor(vec2<f32>(x_548.x, x_548.y));
        let x_551 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
        let x_555 : vec4<f32> = u_xlat3;
        let x_558 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_561 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_555.x, x_555.y) * vec2<f32>(x_558.z, x_558.w)) + -(vec2<f32>(x_561.x, x_561.y)));
        let x_565 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_565.x, x_565.x, x_565.y, x_565.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_570 : vec4<f32> = u_xlat6;
        let x_572 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_570.x, x_570.x, x_570.z, x_570.z) * vec4<f32>(x_572.x, x_572.x, x_572.z, x_572.z));
        let x_575 : vec4<f32> = u_xlat7;
        let x_579 : vec2<f32> = (vec2<f32>(x_575.y, x_575.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_580 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_579.x, x_580.y, x_579.y, x_580.w);
        let x_582 : vec4<f32> = u_xlat7;
        let x_585 : vec2<f32> = u_xlat49;
        let x_587 : vec2<f32> = ((vec2<f32>(x_582.x, x_582.z) * vec2<f32>(0.5f, 0.5f)) + -(x_585));
        let x_588 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_591 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_591) + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec2<f32> = u_xlat49;
        let x_598 : vec2<f32> = min(x_596, vec2<f32>(0.0f, 0.0f));
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat8;
        let x_604 : vec4<f32> = u_xlat8;
        let x_607 : vec2<f32> = u_xlat51;
        let x_608 : vec2<f32> = ((-(vec2<f32>(x_601.x, x_601.y)) * vec2<f32>(x_604.x, x_604.y)) + x_607);
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_611, vec2<f32>(0.0f, 0.0f));
        let x_613 : vec2<f32> = u_xlat49;
        let x_615 : vec2<f32> = u_xlat49;
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_613) * x_615) + vec2<f32>(x_617.y, x_617.w));
        let x_620 : vec4<f32> = u_xlat8;
        let x_622 : vec2<f32> = (vec2<f32>(x_620.x, x_620.y) + vec2<f32>(1.0f, 1.0f));
        let x_623 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_623.z, x_623.w);
        let x_625 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_625 + vec2<f32>(1.0f, 1.0f));
        let x_628 : vec4<f32> = u_xlat7;
        let x_632 : vec2<f32> = (vec2<f32>(x_628.x, x_628.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec2<f32> = u_xlat51;
        let x_636 : vec2<f32> = (x_635 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
        let x_639 : vec4<f32> = u_xlat8;
        let x_641 : vec2<f32> = (vec2<f32>(x_639.x, x_639.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
        let x_645 : vec2<f32> = u_xlat49;
        let x_646 : vec2<f32> = (x_645 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_647 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_649.y, x_649.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : f32 = u_xlat8.x;
        u_xlat9.z = x_653;
        let x_656 : f32 = u_xlat49.x;
        u_xlat9.w = x_656;
        let x_659 : f32 = u_xlat10.x;
        u_xlat7.z = x_659;
        let x_662 : f32 = u_xlat6.x;
        u_xlat7.w = x_662;
        let x_665 : vec4<f32> = u_xlat7;
        let x_667 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_665.z, x_665.w, x_665.x, x_665.z) + vec4<f32>(x_667.z, x_667.w, x_667.x, x_667.z));
        let x_671 : f32 = u_xlat9.y;
        u_xlat8.z = x_671;
        let x_674 : f32 = u_xlat49.y;
        u_xlat8.w = x_674;
        let x_677 : f32 = u_xlat7.y;
        u_xlat10.z = x_677;
        let x_680 : f32 = u_xlat6.z;
        u_xlat10.w = x_680;
        let x_682 : vec4<f32> = u_xlat8;
        let x_684 : vec4<f32> = u_xlat10;
        let x_686 : vec3<f32> = (vec3<f32>(x_682.z, x_682.y, x_682.w) + vec3<f32>(x_684.z, x_684.y, x_684.w));
        let x_687 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat7;
        let x_691 : vec4<f32> = u_xlat11;
        let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.z, x_689.w) / vec3<f32>(x_691.z, x_691.w, x_691.y));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat7;
        let x_702 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_703 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat10;
        let x_707 : vec4<f32> = u_xlat6;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.z, x_705.y, x_705.w) / vec3<f32>(x_707.x, x_707.y, x_707.z));
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat8;
        let x_714 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_715 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
        let x_717 : vec4<f32> = u_xlat7;
        let x_720 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_722 : vec3<f32> = (vec3<f32>(x_717.y, x_717.x, x_717.z) * vec3<f32>(x_720.x, x_720.x, x_720.x));
        let x_723 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
        let x_725 : vec4<f32> = u_xlat8;
        let x_728 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_730 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_728.y, x_728.y, x_728.y));
        let x_731 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_734 : f32 = u_xlat8.x;
        u_xlat7.w = x_734;
        let x_736 : vec4<f32> = u_xlat5;
        let x_739 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y) * vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y)) + vec4<f32>(x_742.y, x_742.w, x_742.x, x_742.w));
        let x_745 : vec4<f32> = u_xlat5;
        let x_748 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_745.x, x_745.y) * vec2<f32>(x_748.x, x_748.y)) + vec2<f32>(x_751.z, x_751.w));
        let x_755 : f32 = u_xlat7.y;
        u_xlat8.w = x_755;
        let x_757 : vec4<f32> = u_xlat8;
        let x_758 : vec2<f32> = vec2<f32>(x_757.y, x_757.z);
        let x_759 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_759.x, x_758.x, x_759.z, x_758.y);
        let x_761 : vec4<f32> = u_xlat5;
        let x_764 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.y) * vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y)) + vec4<f32>(x_767.x, x_767.y, x_767.z, x_767.y));
        let x_770 : vec4<f32> = u_xlat5;
        let x_773 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_776 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_770.x, x_770.y, x_770.x, x_770.y) * vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y)) + vec4<f32>(x_776.w, x_776.y, x_776.w, x_776.z));
        let x_779 : vec4<f32> = u_xlat5;
        let x_782 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_785 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.y) * vec4<f32>(x_782.x, x_782.y, x_782.x, x_782.y)) + vec4<f32>(x_785.x, x_785.w, x_785.z, x_785.w));
        let x_789 : vec4<f32> = u_xlat6;
        let x_791 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_789.x, x_789.x, x_789.x, x_789.y) * vec4<f32>(x_791.z, x_791.w, x_791.y, x_791.z));
        let x_795 : vec4<f32> = u_xlat6;
        let x_797 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_795.y, x_795.y, x_795.z, x_795.z) * x_797);
        let x_800 : f32 = u_xlat6.z;
        let x_802 : f32 = u_xlat11.y;
        u_xlat66 = (x_800 * x_802);
        let x_805 : vec4<f32> = u_xlat9;
        let x_806 : vec2<f32> = vec2<f32>(x_805.x, x_805.y);
        let x_808 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_806.x, x_806.y, x_808);
        let x_815 : vec3<f32> = txVec4;
        let x_817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_815.xy, x_815.z);
        u_xlat1.x = x_817;
        let x_820 : vec4<f32> = u_xlat9;
        let x_821 : vec2<f32> = vec2<f32>(x_820.z, x_820.w);
        let x_823 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_821.x, x_821.y, x_823);
        let x_831 : vec3<f32> = txVec5;
        let x_833 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_831.xy, x_831.z);
        u_xlat68 = x_833;
        let x_834 : f32 = u_xlat68;
        let x_836 : f32 = u_xlat12.y;
        u_xlat68 = (x_834 * x_836);
        let x_839 : f32 = u_xlat12.x;
        let x_841 : f32 = u_xlat1.x;
        let x_843 : f32 = u_xlat68;
        u_xlat1.x = ((x_839 * x_841) + x_843);
        let x_847 : vec2<f32> = u_xlat49;
        let x_849 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_847.x, x_847.y, x_849);
        let x_856 : vec3<f32> = txVec6;
        let x_858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_856.xy, x_856.z);
        u_xlat68 = x_858;
        let x_860 : f32 = u_xlat12.z;
        let x_861 : f32 = u_xlat68;
        let x_864 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_860 * x_861) + x_864);
        let x_868 : vec4<f32> = u_xlat8;
        let x_869 : vec2<f32> = vec2<f32>(x_868.x, x_868.y);
        let x_871 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_878 : vec3<f32> = txVec7;
        let x_880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_878.xy, x_878.z);
        u_xlat68 = x_880;
        let x_882 : f32 = u_xlat12.w;
        let x_883 : f32 = u_xlat68;
        let x_886 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_882 * x_883) + x_886);
        let x_890 : vec4<f32> = u_xlat10;
        let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
        let x_893 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_891.x, x_891.y, x_893);
        let x_900 : vec3<f32> = txVec8;
        let x_902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_900.xy, x_900.z);
        u_xlat68 = x_902;
        let x_904 : f32 = u_xlat13.x;
        let x_905 : f32 = u_xlat68;
        let x_908 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_904 * x_905) + x_908);
        let x_912 : vec4<f32> = u_xlat10;
        let x_913 : vec2<f32> = vec2<f32>(x_912.z, x_912.w);
        let x_915 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_913.x, x_913.y, x_915);
        let x_922 : vec3<f32> = txVec9;
        let x_924 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_922.xy, x_922.z);
        u_xlat68 = x_924;
        let x_926 : f32 = u_xlat13.y;
        let x_927 : f32 = u_xlat68;
        let x_930 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_926 * x_927) + x_930);
        let x_934 : vec4<f32> = u_xlat8;
        let x_935 : vec2<f32> = vec2<f32>(x_934.z, x_934.w);
        let x_937 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_935.x, x_935.y, x_937);
        let x_944 : vec3<f32> = txVec10;
        let x_946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_944.xy, x_944.z);
        u_xlat68 = x_946;
        let x_948 : f32 = u_xlat13.z;
        let x_949 : f32 = u_xlat68;
        let x_952 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_948 * x_949) + x_952);
        let x_956 : vec4<f32> = u_xlat7;
        let x_957 : vec2<f32> = vec2<f32>(x_956.x, x_956.y);
        let x_959 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_957.x, x_957.y, x_959);
        let x_966 : vec3<f32> = txVec11;
        let x_968 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_966.xy, x_966.z);
        u_xlat68 = x_968;
        let x_970 : f32 = u_xlat13.w;
        let x_971 : f32 = u_xlat68;
        let x_974 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_970 * x_971) + x_974);
        let x_978 : vec4<f32> = u_xlat7;
        let x_979 : vec2<f32> = vec2<f32>(x_978.z, x_978.w);
        let x_981 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_979.x, x_979.y, x_981);
        let x_988 : vec3<f32> = txVec12;
        let x_990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_988.xy, x_988.z);
        u_xlat68 = x_990;
        let x_991 : f32 = u_xlat66;
        let x_992 : f32 = u_xlat68;
        let x_995 : f32 = u_xlat1.x;
        u_xlat22 = ((x_991 * x_992) + x_995);
      } else {
        let x_998 : vec4<f32> = u_xlat3;
        let x_1001 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1004 : vec2<f32> = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.z, x_1001.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1005 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
        let x_1007 : vec4<f32> = u_xlat5;
        let x_1009 : vec2<f32> = floor(vec2<f32>(x_1007.x, x_1007.y));
        let x_1010 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
        let x_1012 : vec4<f32> = u_xlat3;
        let x_1015 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1018 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.z, x_1015.w)) + -(vec2<f32>(x_1018.x, x_1018.y)));
        let x_1022 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_1022.x, x_1022.x, x_1022.y, x_1022.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1025 : vec4<f32> = u_xlat6;
        let x_1027 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1025.x, x_1025.x, x_1025.z, x_1025.z) * vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z));
        let x_1030 : vec4<f32> = u_xlat7;
        let x_1034 : vec2<f32> = (vec2<f32>(x_1030.y, x_1030.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1035 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1035.x, x_1034.x, x_1035.z, x_1034.y);
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1040 : vec2<f32> = u_xlat49;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1037.x, x_1037.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1040));
        let x_1043 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1042.x, x_1043.y, x_1042.y, x_1043.w);
        let x_1045 : vec2<f32> = u_xlat49;
        let x_1047 : vec2<f32> = (-(x_1045) + vec2<f32>(1.0f, 1.0f));
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
        let x_1050 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1050, vec2<f32>(0.0f, 0.0f));
        let x_1052 : vec2<f32> = u_xlat51;
        let x_1054 : vec2<f32> = u_xlat51;
        let x_1056 : vec4<f32> = u_xlat7;
        let x_1058 : vec2<f32> = ((-(x_1052) * x_1054) + vec2<f32>(x_1056.x, x_1056.y));
        let x_1059 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
        let x_1061 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1061, vec2<f32>(0.0f, 0.0f));
        let x_1065 : vec2<f32> = u_xlat51;
        let x_1067 : vec2<f32> = u_xlat51;
        let x_1069 : vec4<f32> = u_xlat6;
        let x_1071 : vec2<f32> = ((-(x_1065) * x_1067) + vec2<f32>(x_1069.y, x_1069.w));
        let x_1072 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1071.x, x_1072.y, x_1071.y);
        let x_1074 : vec4<f32> = u_xlat7;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1074.x, x_1074.y) + vec2<f32>(2.0f, 2.0f));
        let x_1078 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec3<f32> = u_xlat28;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1080.x, x_1080.z) + vec2<f32>(2.0f, 2.0f));
        let x_1083 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1083.x, x_1082.x, x_1083.z, x_1082.y);
        let x_1086 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1086 * 0.08163200318813323975f);
        let x_1090 : vec4<f32> = u_xlat6;
        let x_1093 : vec3<f32> = (vec3<f32>(x_1090.z, x_1090.x, x_1090.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1094 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1099 : vec2<f32> = (vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1099.x, x_1099.y, x_1100.z, x_1100.w);
        let x_1103 : f32 = u_xlat10.y;
        u_xlat9.x = x_1103;
        let x_1105 : vec2<f32> = u_xlat49;
        let x_1112 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1112.x, x_1113.z, x_1112.y);
        let x_1115 : vec2<f32> = u_xlat49;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1115.x, x_1115.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1119.x, x_1120.y, x_1119.y, x_1120.w);
        let x_1123 : f32 = u_xlat6.x;
        u_xlat7.y = x_1123;
        let x_1126 : f32 = u_xlat8.y;
        u_xlat7.w = x_1126;
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1128 + x_1129);
        let x_1131 : vec2<f32> = u_xlat49;
        let x_1134 : vec2<f32> = ((vec2<f32>(x_1131.y, x_1131.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1135 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1135.x, x_1134.x, x_1135.z, x_1134.y);
        let x_1137 : vec2<f32> = u_xlat49;
        let x_1140 : vec2<f32> = ((vec2<f32>(x_1137.y, x_1137.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1141 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1140.x, x_1141.y, x_1140.y, x_1141.w);
        let x_1144 : f32 = u_xlat6.y;
        u_xlat8.y = x_1144;
        let x_1146 : vec4<f32> = u_xlat8;
        let x_1147 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1146 + x_1147);
        let x_1149 : vec4<f32> = u_xlat7;
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1149 / x_1150);
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1152 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1158 : vec4<f32> = u_xlat8;
        let x_1159 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1158 / x_1159);
        let x_1161 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1161 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1166 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1163.w, x_1163.x, x_1163.y, x_1163.z) * vec4<f32>(x_1166.x, x_1166.x, x_1166.x, x_1166.x));
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1172 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1169.x, x_1169.w, x_1169.y, x_1169.z) * vec4<f32>(x_1172.y, x_1172.y, x_1172.y, x_1172.y));
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1176 : vec3<f32> = vec3<f32>(x_1175.y, x_1175.z, x_1175.w);
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1176.x, x_1177.y, x_1176.y, x_1176.z);
        let x_1180 : f32 = u_xlat8.x;
        u_xlat10.y = x_1180;
        let x_1182 : vec4<f32> = u_xlat5;
        let x_1185 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y) * vec4<f32>(x_1185.x, x_1185.y, x_1185.x, x_1185.y)) + vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1188.y));
        let x_1191 : vec4<f32> = u_xlat5;
        let x_1194 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(x_1194.x, x_1194.y)) + vec2<f32>(x_1197.w, x_1197.y));
        let x_1201 : f32 = u_xlat10.y;
        u_xlat7.y = x_1201;
        let x_1204 : f32 = u_xlat8.z;
        u_xlat10.y = x_1204;
        let x_1206 : vec4<f32> = u_xlat5;
        let x_1209 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1215 : vec4<f32> = u_xlat5;
        let x_1218 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat10;
        let x_1223 : vec2<f32> = ((vec2<f32>(x_1215.x, x_1215.y) * vec2<f32>(x_1218.x, x_1218.y)) + vec2<f32>(x_1221.w, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1223.x, x_1223.y, x_1224.z, x_1224.w);
        let x_1227 : f32 = u_xlat10.y;
        u_xlat7.z = x_1227;
        let x_1230 : vec4<f32> = u_xlat5;
        let x_1233 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1230.x, x_1230.y, x_1230.x, x_1230.y) * vec4<f32>(x_1233.x, x_1233.y, x_1233.x, x_1233.y)) + vec4<f32>(x_1236.x, x_1236.y, x_1236.x, x_1236.z));
        let x_1240 : f32 = u_xlat8.w;
        u_xlat10.y = x_1240;
        let x_1243 : vec4<f32> = u_xlat5;
        let x_1246 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1249.y));
        let x_1253 : vec4<f32> = u_xlat5;
        let x_1256 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1253.x, x_1253.y) * vec2<f32>(x_1256.x, x_1256.y)) + vec2<f32>(x_1259.w, x_1259.y));
        let x_1263 : f32 = u_xlat10.y;
        u_xlat7.w = x_1263;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.w));
        let x_1275 : vec4<f32> = u_xlat10;
        let x_1276 : vec3<f32> = vec3<f32>(x_1275.x, x_1275.z, x_1275.w);
        let x_1277 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1276.x, x_1277.y, x_1276.y, x_1276.z);
        let x_1279 : vec4<f32> = u_xlat5;
        let x_1282 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1285.y));
        let x_1289 : vec4<f32> = u_xlat5;
        let x_1292 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1295 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1292.x, x_1292.y)) + vec2<f32>(x_1295.w, x_1295.y));
        let x_1299 : f32 = u_xlat7.x;
        u_xlat8.x = x_1299;
        let x_1301 : vec4<f32> = u_xlat5;
        let x_1304 : vec4<f32> = x_159.x_MainLightShadowmapSize;
        let x_1307 : vec4<f32> = u_xlat8;
        let x_1309 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.y) * vec2<f32>(x_1304.x, x_1304.y)) + vec2<f32>(x_1307.x, x_1307.y));
        let x_1310 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1313.x, x_1313.x, x_1313.x, x_1313.x) * x_1315);
        let x_1318 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1318.y, x_1318.y, x_1318.y, x_1318.y) * x_1320);
        let x_1323 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1323.z, x_1323.z, x_1323.z, x_1323.z) * x_1325);
        let x_1327 : vec4<f32> = u_xlat6;
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1327.w, x_1327.w, x_1327.w, x_1327.w) * x_1329);
        let x_1332 : vec4<f32> = u_xlat11;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.x, x_1332.y);
        let x_1335 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec13;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1342.xy, x_1342.z);
        u_xlat66 = x_1344;
        let x_1346 : vec4<f32> = u_xlat11;
        let x_1347 : vec2<f32> = vec2<f32>(x_1346.z, x_1346.w);
        let x_1349 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1347.x, x_1347.y, x_1349);
        let x_1356 : vec3<f32> = txVec14;
        let x_1358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1356.xy, x_1356.z);
        u_xlat1.x = x_1358;
        let x_1361 : f32 = u_xlat1.x;
        let x_1363 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1361 * x_1363);
        let x_1367 : f32 = u_xlat16.x;
        let x_1368 : f32 = u_xlat66;
        let x_1371 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1367 * x_1368) + x_1371);
        let x_1374 : vec2<f32> = u_xlat49;
        let x_1376 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec15;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1383.xy, x_1383.z);
        u_xlat1.x = x_1385;
        let x_1388 : f32 = u_xlat16.z;
        let x_1390 : f32 = u_xlat1.x;
        let x_1392 : f32 = u_xlat66;
        u_xlat66 = ((x_1388 * x_1390) + x_1392);
        let x_1395 : vec4<f32> = u_xlat14;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec16;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat1.x = x_1407;
        let x_1410 : f32 = u_xlat16.w;
        let x_1412 : f32 = u_xlat1.x;
        let x_1414 : f32 = u_xlat66;
        u_xlat66 = ((x_1410 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat12;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec17;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat1.x = x_1429;
        let x_1432 : f32 = u_xlat17.x;
        let x_1434 : f32 = u_xlat1.x;
        let x_1436 : f32 = u_xlat66;
        u_xlat66 = ((x_1432 * x_1434) + x_1436);
        let x_1439 : vec4<f32> = u_xlat12;
        let x_1440 : vec2<f32> = vec2<f32>(x_1439.z, x_1439.w);
        let x_1442 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec18;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat1.x = x_1451;
        let x_1454 : f32 = u_xlat17.y;
        let x_1456 : f32 = u_xlat1.x;
        let x_1458 : f32 = u_xlat66;
        u_xlat66 = ((x_1454 * x_1456) + x_1458);
        let x_1461 : vec4<f32> = u_xlat13;
        let x_1462 : vec2<f32> = vec2<f32>(x_1461.x, x_1461.y);
        let x_1464 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec19;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1471.xy, x_1471.z);
        u_xlat1.x = x_1473;
        let x_1476 : f32 = u_xlat17.z;
        let x_1478 : f32 = u_xlat1.x;
        let x_1480 : f32 = u_xlat66;
        u_xlat66 = ((x_1476 * x_1478) + x_1480);
        let x_1483 : vec4<f32> = u_xlat14;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.z, x_1483.w);
        let x_1486 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec20;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1493.xy, x_1493.z);
        u_xlat1.x = x_1495;
        let x_1498 : f32 = u_xlat17.w;
        let x_1500 : f32 = u_xlat1.x;
        let x_1502 : f32 = u_xlat66;
        u_xlat66 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat15;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec21;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1515.xy, x_1515.z);
        u_xlat1.x = x_1517;
        let x_1520 : f32 = u_xlat18.x;
        let x_1522 : f32 = u_xlat1.x;
        let x_1524 : f32 = u_xlat66;
        u_xlat66 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat15;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.z, x_1527.w);
        let x_1530 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec22;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1537.xy, x_1537.z);
        u_xlat1.x = x_1539;
        let x_1542 : f32 = u_xlat18.y;
        let x_1544 : f32 = u_xlat1.x;
        let x_1546 : f32 = u_xlat66;
        u_xlat66 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat29;
        let x_1551 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec23;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat1.x = x_1560;
        let x_1563 : f32 = u_xlat18.z;
        let x_1565 : f32 = u_xlat1.x;
        let x_1567 : f32 = u_xlat66;
        u_xlat66 = ((x_1563 * x_1565) + x_1567);
        let x_1570 : vec2<f32> = u_xlat57;
        let x_1572 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec24;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1579.xy, x_1579.z);
        u_xlat1.x = x_1581;
        let x_1584 : f32 = u_xlat18.w;
        let x_1586 : f32 = u_xlat1.x;
        let x_1588 : f32 = u_xlat66;
        u_xlat66 = ((x_1584 * x_1586) + x_1588);
        let x_1591 : vec4<f32> = u_xlat10;
        let x_1592 : vec2<f32> = vec2<f32>(x_1591.x, x_1591.y);
        let x_1594 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1592.x, x_1592.y, x_1594);
        let x_1601 : vec3<f32> = txVec25;
        let x_1603 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1601.xy, x_1601.z);
        u_xlat1.x = x_1603;
        let x_1606 : f32 = u_xlat6.x;
        let x_1608 : f32 = u_xlat1.x;
        let x_1610 : f32 = u_xlat66;
        u_xlat66 = ((x_1606 * x_1608) + x_1610);
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1614 : vec2<f32> = vec2<f32>(x_1613.z, x_1613.w);
        let x_1616 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1614.x, x_1614.y, x_1616);
        let x_1623 : vec3<f32> = txVec26;
        let x_1625 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1623.xy, x_1623.z);
        u_xlat1.x = x_1625;
        let x_1628 : f32 = u_xlat6.y;
        let x_1630 : f32 = u_xlat1.x;
        let x_1632 : f32 = u_xlat66;
        u_xlat66 = ((x_1628 * x_1630) + x_1632);
        let x_1635 : vec2<f32> = u_xlat52;
        let x_1637 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec27;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1644.xy, x_1644.z);
        u_xlat1.x = x_1646;
        let x_1649 : f32 = u_xlat6.z;
        let x_1651 : f32 = u_xlat1.x;
        let x_1653 : f32 = u_xlat66;
        u_xlat66 = ((x_1649 * x_1651) + x_1653);
        let x_1656 : vec4<f32> = u_xlat5;
        let x_1657 : vec2<f32> = vec2<f32>(x_1656.x, x_1656.y);
        let x_1659 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1657.x, x_1657.y, x_1659);
        let x_1666 : vec3<f32> = txVec28;
        let x_1668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1666.xy, x_1666.z);
        u_xlat1.x = x_1668;
        let x_1671 : f32 = u_xlat6.w;
        let x_1673 : f32 = u_xlat1.x;
        let x_1675 : f32 = u_xlat66;
        u_xlat22 = ((x_1671 * x_1673) + x_1675);
      }
    }
  } else {
    let x_1679 : vec4<f32> = u_xlat3;
    let x_1680 : vec2<f32> = vec2<f32>(x_1679.x, x_1679.y);
    let x_1682 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
    let x_1689 : vec3<f32> = txVec29;
    let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
    u_xlat22 = x_1691;
  }
  let x_1693 : f32 = x_159.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1693) + 1.0f);
  let x_1696 : f32 = u_xlat22;
  let x_1698 : f32 = x_159.x_MainLightShadowParams.x;
  let x_1700 : f32 = u_xlat66;
  u_xlat22 = ((x_1696 * x_1698) + x_1700);
  let x_1703 : f32 = u_xlat3.z;
  u_xlatb66 = (0.0f >= x_1703);
  let x_1707 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1707 >= 1.0f);
  let x_1709 : bool = u_xlatb66;
  let x_1710 : bool = u_xlatb1;
  u_xlatb66 = (x_1709 | x_1710);
  let x_1712 : bool = u_xlatb66;
  let x_1713 : f32 = u_xlat22;
  u_xlat22 = select(x_1713, 1.0f, x_1712);
  let x_1715 : vec3<f32> = vs_TEXCOORD1;
  let x_1718 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1720 : vec3<f32> = (x_1715 + -(x_1718));
  let x_1721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1723 : vec4<f32> = u_xlat3;
  let x_1725 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1723.x, x_1723.y, x_1723.z), vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : f32 = u_xlat66;
  let x_1730 : f32 = x_159.x_MainLightShadowParams.z;
  let x_1733 : f32 = x_159.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1728 * x_1730) + x_1733);
  let x_1737 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1737, 0.0f, 1.0f);
  let x_1740 : f32 = u_xlat22;
  u_xlat68 = (-(x_1740) + 1.0f);
  let x_1744 : f32 = u_xlat1.x;
  let x_1745 : f32 = u_xlat68;
  let x_1747 : f32 = u_xlat22;
  u_xlat22 = ((x_1744 * x_1745) + x_1747);
  let x_1749 : f32 = u_xlat22;
  let x_1751 : f32 = x_355.unity_LightData.z;
  u_xlat22 = (x_1749 * x_1751);
  let x_1753 : f32 = u_xlat22;
  let x_1756 : vec4<f32> = x_27.x_MainLightColor;
  let x_1758 : vec3<f32> = (vec3<f32>(x_1753, x_1753, x_1753) * vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : vec4<f32> = u_xlat2;
  let x_1764 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_1761.x, x_1761.y, x_1761.z), vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1767, 0.0f, 1.0f);
  let x_1769 : f32 = u_xlat22;
  let x_1771 : vec4<f32> = u_xlat3;
  let x_1773 : vec3<f32> = (vec3<f32>(x_1769, x_1769, x_1769) * vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1774 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1776 : vec4<f32> = u_xlat1;
  let x_1778 : vec4<f32> = u_xlat3;
  let x_1780 : vec3<f32> = (vec3<f32>(x_1776.y, x_1776.z, x_1776.w) * vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1784 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1786 : f32 = x_355.unity_LightData.y;
  u_xlat22 = min(x_1784, x_1786);
  let x_1788 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1788));
  let x_1791 : f32 = u_xlat66;
  let x_1794 : f32 = x_159.x_AdditionalShadowFadeParams.x;
  let x_1797 : f32 = x_159.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1791 * x_1794) + x_1797);
  let x_1799 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1799, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1811 : u32 = u_xlatu_loop_1;
    let x_1812 : u32 = u_xlatu22;
    if ((x_1811 < x_1812)) {
    } else {
      break;
    }
    let x_1815 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1815 >> 2u);
    let x_1818 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1818 & 3u));
    let x_1821 : u32 = u_xlatu68;
    let x_1824 : vec4<f32> = x_355.unity_LightIndices[bitcast<i32>(x_1821)];
    let x_1834 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1839 : vec4<u32> = indexable[x_1834];
    u_xlat68 = dot(x_1824, bitcast<vec4<f32>>(x_1839));
    let x_1843 : f32 = u_xlat68;
    u_xlati68 = i32(x_1843);
    let x_1845 : vec3<f32> = vs_TEXCOORD1;
    let x_1856 : i32 = u_xlati68;
    let x_1858 : vec4<f32> = x_1855.x_AdditionalLightsPosition[x_1856];
    let x_1861 : i32 = u_xlati68;
    let x_1863 : vec4<f32> = x_1855.x_AdditionalLightsPosition[x_1861];
    let x_1865 : vec3<f32> = ((-(x_1845) * vec3<f32>(x_1858.w, x_1858.w, x_1858.w)) + vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
    let x_1866 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
    let x_1869 : vec4<f32> = u_xlat6;
    let x_1871 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1869.x, x_1869.y, x_1869.z), vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
    let x_1874 : f32 = u_xlat69;
    u_xlat69 = max(x_1874, 0.00006103515625f);
    let x_1878 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1878);
    let x_1880 : f32 = u_xlat70;
    let x_1882 : vec4<f32> = u_xlat6;
    let x_1884 : vec3<f32> = (vec3<f32>(x_1880, x_1880, x_1880) * vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
    let x_1885 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
    let x_1887 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1887);
    let x_1889 : f32 = u_xlat69;
    let x_1890 : i32 = u_xlati68;
    let x_1892 : f32 = x_1855.x_AdditionalLightsAttenuation[x_1890].x;
    u_xlat69 = (x_1889 * x_1892);
    let x_1894 : f32 = u_xlat69;
    let x_1896 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1894) * x_1896) + 1.0f);
    let x_1899 : f32 = u_xlat69;
    u_xlat69 = max(x_1899, 0.0f);
    let x_1901 : f32 = u_xlat69;
    let x_1902 : f32 = u_xlat69;
    u_xlat69 = (x_1901 * x_1902);
    let x_1904 : f32 = u_xlat69;
    let x_1905 : f32 = u_xlat70;
    u_xlat69 = (x_1904 * x_1905);
    let x_1907 : i32 = u_xlati68;
    let x_1909 : vec4<f32> = x_1855.x_AdditionalLightsSpotDir[x_1907];
    let x_1911 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1909.x, x_1909.y, x_1909.z), vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
    let x_1914 : f32 = u_xlat70;
    let x_1915 : i32 = u_xlati68;
    let x_1917 : f32 = x_1855.x_AdditionalLightsAttenuation[x_1915].z;
    let x_1919 : i32 = u_xlati68;
    let x_1921 : f32 = x_1855.x_AdditionalLightsAttenuation[x_1919].w;
    u_xlat70 = ((x_1914 * x_1917) + x_1921);
    let x_1923 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1923, 0.0f, 1.0f);
    let x_1925 : f32 = u_xlat70;
    let x_1926 : f32 = u_xlat70;
    u_xlat70 = (x_1925 * x_1926);
    let x_1928 : f32 = u_xlat69;
    let x_1929 : f32 = u_xlat70;
    u_xlat69 = (x_1928 * x_1929);
    let x_1933 : i32 = u_xlati68;
    let x_1935 : f32 = x_159.x_AdditionalShadowParams[x_1933].w;
    u_xlati70 = i32(x_1935);
    let x_1938 : i32 = u_xlati70;
    u_xlatb71 = (x_1938 >= 0i);
    let x_1940 : bool = u_xlatb71;
    if (x_1940) {
      let x_1944 : i32 = u_xlati68;
      let x_1946 : f32 = x_159.x_AdditionalShadowParams[x_1944].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1946, x_1946, x_1946, x_1946))));
      let x_1950 : bool = u_xlatb71;
      if (x_1950) {
        let x_1954 : vec4<f32> = u_xlat6;
        let x_1957 : vec4<f32> = u_xlat6;
        let x_1960 : vec4<bool> = (abs(vec4<f32>(x_1954.z, x_1954.z, x_1954.y, x_1954.z)) >= abs(vec4<f32>(x_1957.x, x_1957.y, x_1957.x, x_1957.x)));
        let x_1962 : vec3<bool> = vec3<bool>(x_1960.x, x_1960.y, x_1960.z);
        let x_1963 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
        let x_1966 : bool = u_xlatb7.y;
        let x_1968 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1966 & x_1968);
        let x_1970 : vec4<f32> = u_xlat6;
        let x_1973 : vec4<bool> = (-(vec4<f32>(x_1970.z, x_1970.y, x_1970.z, x_1970.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1974 : vec3<bool> = vec3<bool>(x_1973.x, x_1973.y, x_1973.w);
        let x_1975 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1974.x, x_1974.y, x_1975.z, x_1974.z);
        let x_1978 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1978);
        let x_1983 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1983);
        let x_1988 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1988);
        let x_1991 : bool = u_xlatb7.z;
        if (x_1991) {
          let x_1996 : f32 = u_xlat7.y;
          x_1992 = x_1996;
        } else {
          let x_1998 : f32 = u_xlat72;
          x_1992 = x_1998;
        }
        let x_1999 : f32 = x_1992;
        u_xlat72 = x_1999;
        let x_2001 : bool = u_xlatb71;
        if (x_2001) {
          let x_2006 : f32 = u_xlat7.x;
          x_2002 = x_2006;
        } else {
          let x_2008 : f32 = u_xlat72;
          x_2002 = x_2008;
        }
        let x_2009 : f32 = x_2002;
        u_xlat71 = x_2009;
        let x_2010 : i32 = u_xlati68;
        let x_2012 : f32 = x_159.x_AdditionalShadowParams[x_2010].w;
        u_xlat72 = trunc(x_2012);
        let x_2014 : f32 = u_xlat71;
        let x_2015 : f32 = u_xlat72;
        u_xlat71 = (x_2014 + x_2015);
        let x_2017 : f32 = u_xlat71;
        u_xlati70 = i32(x_2017);
      }
      let x_2019 : i32 = u_xlati70;
      u_xlati70 = (x_2019 << bitcast<u32>(2i));
      let x_2021 : vec3<f32> = vs_TEXCOORD1;
      let x_2024 : i32 = u_xlati70;
      let x_2027 : i32 = u_xlati70;
      let x_2031 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2024 + 1i) / 4i)][((x_2027 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_2021.y, x_2021.y, x_2021.y, x_2021.y) * x_2031);
      let x_2033 : i32 = u_xlati70;
      let x_2035 : i32 = u_xlati70;
      let x_2038 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[(x_2033 / 4i)][(x_2035 % 4i)];
      let x_2039 : vec3<f32> = vs_TEXCOORD1;
      let x_2042 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2038 * vec4<f32>(x_2039.x, x_2039.x, x_2039.x, x_2039.x)) + x_2042);
      let x_2044 : i32 = u_xlati70;
      let x_2047 : i32 = u_xlati70;
      let x_2051 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2044 + 2i) / 4i)][((x_2047 + 2i) % 4i)];
      let x_2052 : vec3<f32> = vs_TEXCOORD1;
      let x_2055 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2051 * vec4<f32>(x_2052.z, x_2052.z, x_2052.z, x_2052.z)) + x_2055);
      let x_2057 : vec4<f32> = u_xlat7;
      let x_2058 : i32 = u_xlati70;
      let x_2061 : i32 = u_xlati70;
      let x_2065 : vec4<f32> = x_159.x_AdditionalLightsWorldToShadow[((x_2058 + 3i) / 4i)][((x_2061 + 3i) % 4i)];
      u_xlat7 = (x_2057 + x_2065);
      let x_2067 : vec4<f32> = u_xlat7;
      let x_2069 : vec4<f32> = u_xlat7;
      let x_2071 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.y, x_2067.z) / vec3<f32>(x_2069.w, x_2069.w, x_2069.w));
      let x_2072 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
      let x_2075 : i32 = u_xlati68;
      let x_2077 : f32 = x_159.x_AdditionalShadowParams[x_2075].y;
      u_xlatb70 = (0.0f < x_2077);
      let x_2079 : bool = u_xlatb70;
      if (x_2079) {
        let x_2082 : i32 = u_xlati68;
        let x_2084 : f32 = x_159.x_AdditionalShadowParams[x_2082].y;
        u_xlatb70 = (1.0f == x_2084);
        let x_2086 : bool = u_xlatb70;
        if (x_2086) {
          let x_2089 : vec4<f32> = u_xlat7;
          let x_2093 : vec4<f32> = x_159.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2089.x, x_2089.y, x_2089.x, x_2089.y) + x_2093);
          let x_2096 : vec4<f32> = u_xlat8;
          let x_2097 : vec2<f32> = vec2<f32>(x_2096.x, x_2096.y);
          let x_2099 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2097.x, x_2097.y, x_2099);
          let x_2107 : vec3<f32> = txVec30;
          let x_2109 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2107.xy, x_2107.z);
          u_xlat9.x = x_2109;
          let x_2112 : vec4<f32> = u_xlat8;
          let x_2113 : vec2<f32> = vec2<f32>(x_2112.z, x_2112.w);
          let x_2115 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2113.x, x_2113.y, x_2115);
          let x_2122 : vec3<f32> = txVec31;
          let x_2124 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2122.xy, x_2122.z);
          u_xlat9.y = x_2124;
          let x_2126 : vec4<f32> = u_xlat7;
          let x_2130 : vec4<f32> = x_159.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2126.x, x_2126.y, x_2126.x, x_2126.y) + x_2130);
          let x_2133 : vec4<f32> = u_xlat8;
          let x_2134 : vec2<f32> = vec2<f32>(x_2133.x, x_2133.y);
          let x_2136 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2134.x, x_2134.y, x_2136);
          let x_2143 : vec3<f32> = txVec32;
          let x_2145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2143.xy, x_2143.z);
          u_xlat9.z = x_2145;
          let x_2148 : vec4<f32> = u_xlat8;
          let x_2149 : vec2<f32> = vec2<f32>(x_2148.z, x_2148.w);
          let x_2151 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2149.x, x_2149.y, x_2151);
          let x_2158 : vec3<f32> = txVec33;
          let x_2160 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2158.xy, x_2158.z);
          u_xlat9.w = x_2160;
          let x_2162 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2162, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2165 : i32 = u_xlati68;
          let x_2167 : f32 = x_159.x_AdditionalShadowParams[x_2165].y;
          u_xlatb71 = (2.0f == x_2167);
          let x_2169 : bool = u_xlatb71;
          if (x_2169) {
            let x_2172 : vec4<f32> = u_xlat7;
            let x_2176 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2179 : vec2<f32> = ((vec2<f32>(x_2172.x, x_2172.y) * vec2<f32>(x_2176.z, x_2176.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2180 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2179.x, x_2179.y, x_2180.z, x_2180.w);
            let x_2182 : vec4<f32> = u_xlat8;
            let x_2184 : vec2<f32> = floor(vec2<f32>(x_2182.x, x_2182.y));
            let x_2185 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2184.x, x_2184.y, x_2185.z, x_2185.w);
            let x_2187 : vec4<f32> = u_xlat7;
            let x_2190 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2193 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2187.x, x_2187.y) * vec2<f32>(x_2190.z, x_2190.w)) + -(vec2<f32>(x_2193.x, x_2193.y)));
            let x_2197 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2197.x, x_2197.x, x_2197.y, x_2197.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2200 : vec4<f32> = u_xlat9;
            let x_2202 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2200.x, x_2200.x, x_2200.z, x_2200.z) * vec4<f32>(x_2202.x, x_2202.x, x_2202.z, x_2202.z));
            let x_2205 : vec4<f32> = u_xlat10;
            let x_2207 : vec2<f32> = (vec2<f32>(x_2205.y, x_2205.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2208 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2207.x, x_2208.y, x_2207.y, x_2208.w);
            let x_2210 : vec4<f32> = u_xlat10;
            let x_2213 : vec2<f32> = u_xlat52;
            let x_2215 : vec2<f32> = ((vec2<f32>(x_2210.x, x_2210.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2213));
            let x_2216 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2219 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2219) + vec2<f32>(1.0f, 1.0f));
            let x_2222 : vec2<f32> = u_xlat52;
            let x_2223 : vec2<f32> = min(x_2222, vec2<f32>(0.0f, 0.0f));
            let x_2224 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2223.x, x_2223.y, x_2224.z, x_2224.w);
            let x_2226 : vec4<f32> = u_xlat11;
            let x_2229 : vec4<f32> = u_xlat11;
            let x_2232 : vec2<f32> = u_xlat54;
            let x_2233 : vec2<f32> = ((-(vec2<f32>(x_2226.x, x_2226.y)) * vec2<f32>(x_2229.x, x_2229.y)) + x_2232);
            let x_2234 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2233.x, x_2233.y, x_2234.z, x_2234.w);
            let x_2236 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2236, vec2<f32>(0.0f, 0.0f));
            let x_2238 : vec2<f32> = u_xlat52;
            let x_2240 : vec2<f32> = u_xlat52;
            let x_2242 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2238) * x_2240) + vec2<f32>(x_2242.y, x_2242.w));
            let x_2245 : vec4<f32> = u_xlat11;
            let x_2247 : vec2<f32> = (vec2<f32>(x_2245.x, x_2245.y) + vec2<f32>(1.0f, 1.0f));
            let x_2248 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2247.x, x_2247.y, x_2248.z, x_2248.w);
            let x_2250 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2250 + vec2<f32>(1.0f, 1.0f));
            let x_2252 : vec4<f32> = u_xlat10;
            let x_2254 : vec2<f32> = (vec2<f32>(x_2252.x, x_2252.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2255 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2254.x, x_2254.y, x_2255.z, x_2255.w);
            let x_2257 : vec2<f32> = u_xlat54;
            let x_2258 : vec2<f32> = (x_2257 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2259 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
            let x_2261 : vec4<f32> = u_xlat11;
            let x_2263 : vec2<f32> = (vec2<f32>(x_2261.x, x_2261.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2264 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
            let x_2266 : vec2<f32> = u_xlat52;
            let x_2267 : vec2<f32> = (x_2266 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2268 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2267.x, x_2267.y, x_2268.z, x_2268.w);
            let x_2270 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2270.y, x_2270.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2274 : f32 = u_xlat11.x;
            u_xlat12.z = x_2274;
            let x_2277 : f32 = u_xlat52.x;
            u_xlat12.w = x_2277;
            let x_2280 : f32 = u_xlat13.x;
            u_xlat10.z = x_2280;
            let x_2283 : f32 = u_xlat9.x;
            u_xlat10.w = x_2283;
            let x_2285 : vec4<f32> = u_xlat10;
            let x_2287 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2285.z, x_2285.w, x_2285.x, x_2285.z) + vec4<f32>(x_2287.z, x_2287.w, x_2287.x, x_2287.z));
            let x_2291 : f32 = u_xlat12.y;
            u_xlat11.z = x_2291;
            let x_2294 : f32 = u_xlat52.y;
            u_xlat11.w = x_2294;
            let x_2297 : f32 = u_xlat10.y;
            u_xlat13.z = x_2297;
            let x_2300 : f32 = u_xlat9.z;
            u_xlat13.w = x_2300;
            let x_2302 : vec4<f32> = u_xlat11;
            let x_2304 : vec4<f32> = u_xlat13;
            let x_2306 : vec3<f32> = (vec3<f32>(x_2302.z, x_2302.y, x_2302.w) + vec3<f32>(x_2304.z, x_2304.y, x_2304.w));
            let x_2307 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
            let x_2309 : vec4<f32> = u_xlat10;
            let x_2311 : vec4<f32> = u_xlat14;
            let x_2313 : vec3<f32> = (vec3<f32>(x_2309.x, x_2309.z, x_2309.w) / vec3<f32>(x_2311.z, x_2311.w, x_2311.y));
            let x_2314 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2314.w);
            let x_2316 : vec4<f32> = u_xlat10;
            let x_2318 : vec3<f32> = (vec3<f32>(x_2316.x, x_2316.y, x_2316.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2319 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
            let x_2321 : vec4<f32> = u_xlat13;
            let x_2323 : vec4<f32> = u_xlat9;
            let x_2325 : vec3<f32> = (vec3<f32>(x_2321.z, x_2321.y, x_2321.w) / vec3<f32>(x_2323.x, x_2323.y, x_2323.z));
            let x_2326 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2325.x, x_2325.y, x_2325.z, x_2326.w);
            let x_2328 : vec4<f32> = u_xlat11;
            let x_2330 : vec3<f32> = (vec3<f32>(x_2328.x, x_2328.y, x_2328.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2331 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2330.x, x_2330.y, x_2330.z, x_2331.w);
            let x_2333 : vec4<f32> = u_xlat10;
            let x_2336 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2338 : vec3<f32> = (vec3<f32>(x_2333.y, x_2333.x, x_2333.z) * vec3<f32>(x_2336.x, x_2336.x, x_2336.x));
            let x_2339 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2338.x, x_2338.y, x_2338.z, x_2339.w);
            let x_2341 : vec4<f32> = u_xlat11;
            let x_2344 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2346 : vec3<f32> = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) * vec3<f32>(x_2344.y, x_2344.y, x_2344.y));
            let x_2347 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2346.x, x_2346.y, x_2346.z, x_2347.w);
            let x_2350 : f32 = u_xlat11.x;
            u_xlat10.w = x_2350;
            let x_2352 : vec4<f32> = u_xlat8;
            let x_2355 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2358 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y) * vec4<f32>(x_2355.x, x_2355.y, x_2355.x, x_2355.y)) + vec4<f32>(x_2358.y, x_2358.w, x_2358.x, x_2358.w));
            let x_2361 : vec4<f32> = u_xlat8;
            let x_2364 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2367 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2361.x, x_2361.y) * vec2<f32>(x_2364.x, x_2364.y)) + vec2<f32>(x_2367.z, x_2367.w));
            let x_2371 : f32 = u_xlat10.y;
            u_xlat11.w = x_2371;
            let x_2373 : vec4<f32> = u_xlat11;
            let x_2374 : vec2<f32> = vec2<f32>(x_2373.y, x_2373.z);
            let x_2375 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2375.x, x_2374.x, x_2375.z, x_2374.y);
            let x_2377 : vec4<f32> = u_xlat8;
            let x_2380 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2383 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2377.x, x_2377.y, x_2377.x, x_2377.y) * vec4<f32>(x_2380.x, x_2380.y, x_2380.x, x_2380.y)) + vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2383.y));
            let x_2386 : vec4<f32> = u_xlat8;
            let x_2389 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2392 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2386.x, x_2386.y, x_2386.x, x_2386.y) * vec4<f32>(x_2389.x, x_2389.y, x_2389.x, x_2389.y)) + vec4<f32>(x_2392.w, x_2392.y, x_2392.w, x_2392.z));
            let x_2395 : vec4<f32> = u_xlat8;
            let x_2398 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2401 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2395.x, x_2395.y, x_2395.x, x_2395.y) * vec4<f32>(x_2398.x, x_2398.y, x_2398.x, x_2398.y)) + vec4<f32>(x_2401.x, x_2401.w, x_2401.z, x_2401.w));
            let x_2404 : vec4<f32> = u_xlat9;
            let x_2406 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2404.x, x_2404.x, x_2404.x, x_2404.y) * vec4<f32>(x_2406.z, x_2406.w, x_2406.y, x_2406.z));
            let x_2409 : vec4<f32> = u_xlat9;
            let x_2411 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2409.y, x_2409.y, x_2409.z, x_2409.z) * x_2411);
            let x_2414 : f32 = u_xlat9.z;
            let x_2416 : f32 = u_xlat14.y;
            u_xlat71 = (x_2414 * x_2416);
            let x_2419 : vec4<f32> = u_xlat12;
            let x_2420 : vec2<f32> = vec2<f32>(x_2419.x, x_2419.y);
            let x_2422 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2420.x, x_2420.y, x_2422);
            let x_2429 : vec3<f32> = txVec34;
            let x_2431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2429.xy, x_2429.z);
            u_xlat72 = x_2431;
            let x_2433 : vec4<f32> = u_xlat12;
            let x_2434 : vec2<f32> = vec2<f32>(x_2433.z, x_2433.w);
            let x_2436 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2434.x, x_2434.y, x_2436);
            let x_2444 : vec3<f32> = txVec35;
            let x_2446 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2444.xy, x_2444.z);
            u_xlat73 = x_2446;
            let x_2447 : f32 = u_xlat73;
            let x_2449 : f32 = u_xlat15.y;
            u_xlat73 = (x_2447 * x_2449);
            let x_2452 : f32 = u_xlat15.x;
            let x_2453 : f32 = u_xlat72;
            let x_2455 : f32 = u_xlat73;
            u_xlat72 = ((x_2452 * x_2453) + x_2455);
            let x_2458 : vec2<f32> = u_xlat52;
            let x_2460 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2458.x, x_2458.y, x_2460);
            let x_2467 : vec3<f32> = txVec36;
            let x_2469 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2467.xy, x_2467.z);
            u_xlat73 = x_2469;
            let x_2471 : f32 = u_xlat15.z;
            let x_2472 : f32 = u_xlat73;
            let x_2474 : f32 = u_xlat72;
            u_xlat72 = ((x_2471 * x_2472) + x_2474);
            let x_2477 : vec4<f32> = u_xlat11;
            let x_2478 : vec2<f32> = vec2<f32>(x_2477.x, x_2477.y);
            let x_2480 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2478.x, x_2478.y, x_2480);
            let x_2487 : vec3<f32> = txVec37;
            let x_2489 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2487.xy, x_2487.z);
            u_xlat73 = x_2489;
            let x_2491 : f32 = u_xlat15.w;
            let x_2492 : f32 = u_xlat73;
            let x_2494 : f32 = u_xlat72;
            u_xlat72 = ((x_2491 * x_2492) + x_2494);
            let x_2497 : vec4<f32> = u_xlat13;
            let x_2498 : vec2<f32> = vec2<f32>(x_2497.x, x_2497.y);
            let x_2500 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2498.x, x_2498.y, x_2500);
            let x_2507 : vec3<f32> = txVec38;
            let x_2509 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2507.xy, x_2507.z);
            u_xlat73 = x_2509;
            let x_2511 : f32 = u_xlat16.x;
            let x_2512 : f32 = u_xlat73;
            let x_2514 : f32 = u_xlat72;
            u_xlat72 = ((x_2511 * x_2512) + x_2514);
            let x_2517 : vec4<f32> = u_xlat13;
            let x_2518 : vec2<f32> = vec2<f32>(x_2517.z, x_2517.w);
            let x_2520 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2518.x, x_2518.y, x_2520);
            let x_2527 : vec3<f32> = txVec39;
            let x_2529 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2527.xy, x_2527.z);
            u_xlat73 = x_2529;
            let x_2531 : f32 = u_xlat16.y;
            let x_2532 : f32 = u_xlat73;
            let x_2534 : f32 = u_xlat72;
            u_xlat72 = ((x_2531 * x_2532) + x_2534);
            let x_2537 : vec4<f32> = u_xlat11;
            let x_2538 : vec2<f32> = vec2<f32>(x_2537.z, x_2537.w);
            let x_2540 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
            let x_2547 : vec3<f32> = txVec40;
            let x_2549 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2547.xy, x_2547.z);
            u_xlat73 = x_2549;
            let x_2551 : f32 = u_xlat16.z;
            let x_2552 : f32 = u_xlat73;
            let x_2554 : f32 = u_xlat72;
            u_xlat72 = ((x_2551 * x_2552) + x_2554);
            let x_2557 : vec4<f32> = u_xlat10;
            let x_2558 : vec2<f32> = vec2<f32>(x_2557.x, x_2557.y);
            let x_2560 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2558.x, x_2558.y, x_2560);
            let x_2567 : vec3<f32> = txVec41;
            let x_2569 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2567.xy, x_2567.z);
            u_xlat73 = x_2569;
            let x_2571 : f32 = u_xlat16.w;
            let x_2572 : f32 = u_xlat73;
            let x_2574 : f32 = u_xlat72;
            u_xlat72 = ((x_2571 * x_2572) + x_2574);
            let x_2577 : vec4<f32> = u_xlat10;
            let x_2578 : vec2<f32> = vec2<f32>(x_2577.z, x_2577.w);
            let x_2580 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2578.x, x_2578.y, x_2580);
            let x_2587 : vec3<f32> = txVec42;
            let x_2589 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2587.xy, x_2587.z);
            u_xlat73 = x_2589;
            let x_2590 : f32 = u_xlat71;
            let x_2591 : f32 = u_xlat73;
            let x_2593 : f32 = u_xlat72;
            u_xlat70 = ((x_2590 * x_2591) + x_2593);
          } else {
            let x_2596 : vec4<f32> = u_xlat7;
            let x_2599 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2602 : vec2<f32> = ((vec2<f32>(x_2596.x, x_2596.y) * vec2<f32>(x_2599.z, x_2599.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2603 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2602.x, x_2602.y, x_2603.z, x_2603.w);
            let x_2605 : vec4<f32> = u_xlat8;
            let x_2607 : vec2<f32> = floor(vec2<f32>(x_2605.x, x_2605.y));
            let x_2608 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
            let x_2610 : vec4<f32> = u_xlat7;
            let x_2613 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2616 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2610.x, x_2610.y) * vec2<f32>(x_2613.z, x_2613.w)) + -(vec2<f32>(x_2616.x, x_2616.y)));
            let x_2620 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2620.x, x_2620.x, x_2620.y, x_2620.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2623 : vec4<f32> = u_xlat9;
            let x_2625 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2623.x, x_2623.x, x_2623.z, x_2623.z) * vec4<f32>(x_2625.x, x_2625.x, x_2625.z, x_2625.z));
            let x_2628 : vec4<f32> = u_xlat10;
            let x_2630 : vec2<f32> = (vec2<f32>(x_2628.y, x_2628.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2631 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2631.x, x_2630.x, x_2631.z, x_2630.y);
            let x_2633 : vec4<f32> = u_xlat10;
            let x_2636 : vec2<f32> = u_xlat52;
            let x_2638 : vec2<f32> = ((vec2<f32>(x_2633.x, x_2633.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2636));
            let x_2639 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2638.x, x_2639.y, x_2638.y, x_2639.w);
            let x_2641 : vec2<f32> = u_xlat52;
            let x_2643 : vec2<f32> = (-(x_2641) + vec2<f32>(1.0f, 1.0f));
            let x_2644 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2643.x, x_2643.y, x_2644.z, x_2644.w);
            let x_2646 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2646, vec2<f32>(0.0f, 0.0f));
            let x_2648 : vec2<f32> = u_xlat54;
            let x_2650 : vec2<f32> = u_xlat54;
            let x_2652 : vec4<f32> = u_xlat10;
            let x_2654 : vec2<f32> = ((-(x_2648) * x_2650) + vec2<f32>(x_2652.x, x_2652.y));
            let x_2655 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2654.x, x_2654.y, x_2655.z, x_2655.w);
            let x_2657 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2657, vec2<f32>(0.0f, 0.0f));
            let x_2660 : vec2<f32> = u_xlat54;
            let x_2662 : vec2<f32> = u_xlat54;
            let x_2664 : vec4<f32> = u_xlat9;
            let x_2666 : vec2<f32> = ((-(x_2660) * x_2662) + vec2<f32>(x_2664.y, x_2664.w));
            let x_2667 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2666.x, x_2667.y, x_2666.y);
            let x_2669 : vec4<f32> = u_xlat10;
            let x_2671 : vec2<f32> = (vec2<f32>(x_2669.x, x_2669.y) + vec2<f32>(2.0f, 2.0f));
            let x_2672 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2671.x, x_2671.y, x_2672.z, x_2672.w);
            let x_2674 : vec3<f32> = u_xlat31;
            let x_2676 : vec2<f32> = (vec2<f32>(x_2674.x, x_2674.z) + vec2<f32>(2.0f, 2.0f));
            let x_2677 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2677.x, x_2676.x, x_2677.z, x_2676.y);
            let x_2680 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2680 * 0.08163200318813323975f);
            let x_2683 : vec4<f32> = u_xlat9;
            let x_2685 : vec3<f32> = (vec3<f32>(x_2683.z, x_2683.x, x_2683.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2685.x, x_2685.y, x_2685.z, x_2686.w);
            let x_2688 : vec4<f32> = u_xlat10;
            let x_2690 : vec2<f32> = (vec2<f32>(x_2688.x, x_2688.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2691 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2690.x, x_2690.y, x_2691.z, x_2691.w);
            let x_2694 : f32 = u_xlat13.y;
            u_xlat12.x = x_2694;
            let x_2696 : vec2<f32> = u_xlat52;
            let x_2699 : vec2<f32> = ((vec2<f32>(x_2696.x, x_2696.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2700 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2700.x, x_2699.x, x_2700.z, x_2699.y);
            let x_2702 : vec2<f32> = u_xlat52;
            let x_2705 : vec2<f32> = ((vec2<f32>(x_2702.x, x_2702.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2706 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2705.x, x_2706.y, x_2705.y, x_2706.w);
            let x_2709 : f32 = u_xlat9.x;
            u_xlat10.y = x_2709;
            let x_2712 : f32 = u_xlat11.y;
            u_xlat10.w = x_2712;
            let x_2714 : vec4<f32> = u_xlat10;
            let x_2715 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2714 + x_2715);
            let x_2717 : vec2<f32> = u_xlat52;
            let x_2720 : vec2<f32> = ((vec2<f32>(x_2717.y, x_2717.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2721 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2721.x, x_2720.x, x_2721.z, x_2720.y);
            let x_2723 : vec2<f32> = u_xlat52;
            let x_2726 : vec2<f32> = ((vec2<f32>(x_2723.y, x_2723.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2727 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2726.x, x_2727.y, x_2726.y, x_2727.w);
            let x_2730 : f32 = u_xlat9.y;
            u_xlat11.y = x_2730;
            let x_2732 : vec4<f32> = u_xlat11;
            let x_2733 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2732 + x_2733);
            let x_2735 : vec4<f32> = u_xlat10;
            let x_2736 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2735 / x_2736);
            let x_2738 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2738 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2740 : vec4<f32> = u_xlat11;
            let x_2741 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2740 / x_2741);
            let x_2743 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2743 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2745 : vec4<f32> = u_xlat10;
            let x_2748 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2745.w, x_2745.x, x_2745.y, x_2745.z) * vec4<f32>(x_2748.x, x_2748.x, x_2748.x, x_2748.x));
            let x_2751 : vec4<f32> = u_xlat11;
            let x_2754 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2751.x, x_2751.w, x_2751.y, x_2751.z) * vec4<f32>(x_2754.y, x_2754.y, x_2754.y, x_2754.y));
            let x_2757 : vec4<f32> = u_xlat10;
            let x_2758 : vec3<f32> = vec3<f32>(x_2757.y, x_2757.z, x_2757.w);
            let x_2759 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2758.x, x_2759.y, x_2758.y, x_2758.z);
            let x_2762 : f32 = u_xlat11.x;
            u_xlat13.y = x_2762;
            let x_2764 : vec4<f32> = u_xlat8;
            let x_2767 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2770 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2764.x, x_2764.y, x_2764.x, x_2764.y) * vec4<f32>(x_2767.x, x_2767.y, x_2767.x, x_2767.y)) + vec4<f32>(x_2770.x, x_2770.y, x_2770.z, x_2770.y));
            let x_2773 : vec4<f32> = u_xlat8;
            let x_2776 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2779 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2773.x, x_2773.y) * vec2<f32>(x_2776.x, x_2776.y)) + vec2<f32>(x_2779.w, x_2779.y));
            let x_2783 : f32 = u_xlat13.y;
            u_xlat10.y = x_2783;
            let x_2786 : f32 = u_xlat11.z;
            u_xlat13.y = x_2786;
            let x_2788 : vec4<f32> = u_xlat8;
            let x_2791 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2794 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y) * vec4<f32>(x_2791.x, x_2791.y, x_2791.x, x_2791.y)) + vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2794.y));
            let x_2797 : vec4<f32> = u_xlat8;
            let x_2800 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2803 : vec4<f32> = u_xlat13;
            let x_2805 : vec2<f32> = ((vec2<f32>(x_2797.x, x_2797.y) * vec2<f32>(x_2800.x, x_2800.y)) + vec2<f32>(x_2803.w, x_2803.y));
            let x_2806 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
            let x_2809 : f32 = u_xlat13.y;
            u_xlat10.z = x_2809;
            let x_2811 : vec4<f32> = u_xlat8;
            let x_2814 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2817 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2811.x, x_2811.y, x_2811.x, x_2811.y) * vec4<f32>(x_2814.x, x_2814.y, x_2814.x, x_2814.y)) + vec4<f32>(x_2817.x, x_2817.y, x_2817.x, x_2817.z));
            let x_2821 : f32 = u_xlat11.w;
            u_xlat13.y = x_2821;
            let x_2823 : vec4<f32> = u_xlat8;
            let x_2826 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2829 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2823.x, x_2823.y, x_2823.x, x_2823.y) * vec4<f32>(x_2826.x, x_2826.y, x_2826.x, x_2826.y)) + vec4<f32>(x_2829.x, x_2829.y, x_2829.z, x_2829.y));
            let x_2833 : vec4<f32> = u_xlat8;
            let x_2836 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2839 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.x, x_2836.y)) + vec2<f32>(x_2839.w, x_2839.y));
            let x_2843 : f32 = u_xlat13.y;
            u_xlat10.w = x_2843;
            let x_2846 : vec4<f32> = u_xlat8;
            let x_2849 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2852 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2846.x, x_2846.y) * vec2<f32>(x_2849.x, x_2849.y)) + vec2<f32>(x_2852.x, x_2852.w));
            let x_2855 : vec4<f32> = u_xlat13;
            let x_2856 : vec3<f32> = vec3<f32>(x_2855.x, x_2855.z, x_2855.w);
            let x_2857 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2856.x, x_2857.y, x_2856.y, x_2856.z);
            let x_2859 : vec4<f32> = u_xlat8;
            let x_2862 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2865 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2859.x, x_2859.y, x_2859.x, x_2859.y) * vec4<f32>(x_2862.x, x_2862.y, x_2862.x, x_2862.y)) + vec4<f32>(x_2865.x, x_2865.y, x_2865.z, x_2865.y));
            let x_2869 : vec4<f32> = u_xlat8;
            let x_2872 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2875 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2869.x, x_2869.y) * vec2<f32>(x_2872.x, x_2872.y)) + vec2<f32>(x_2875.w, x_2875.y));
            let x_2879 : f32 = u_xlat10.x;
            u_xlat11.x = x_2879;
            let x_2881 : vec4<f32> = u_xlat8;
            let x_2884 : vec4<f32> = x_159.x_AdditionalShadowmapSize;
            let x_2887 : vec4<f32> = u_xlat11;
            let x_2889 : vec2<f32> = ((vec2<f32>(x_2881.x, x_2881.y) * vec2<f32>(x_2884.x, x_2884.y)) + vec2<f32>(x_2887.x, x_2887.y));
            let x_2890 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2889.x, x_2889.y, x_2890.z, x_2890.w);
            let x_2893 : vec4<f32> = u_xlat9;
            let x_2895 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2893.x, x_2893.x, x_2893.x, x_2893.x) * x_2895);
            let x_2898 : vec4<f32> = u_xlat9;
            let x_2900 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2898.y, x_2898.y, x_2898.y, x_2898.y) * x_2900);
            let x_2903 : vec4<f32> = u_xlat9;
            let x_2905 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2903.z, x_2903.z, x_2903.z, x_2903.z) * x_2905);
            let x_2907 : vec4<f32> = u_xlat9;
            let x_2909 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2907.w, x_2907.w, x_2907.w, x_2907.w) * x_2909);
            let x_2912 : vec4<f32> = u_xlat14;
            let x_2913 : vec2<f32> = vec2<f32>(x_2912.x, x_2912.y);
            let x_2915 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2913.x, x_2913.y, x_2915);
            let x_2922 : vec3<f32> = txVec43;
            let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
            u_xlat71 = x_2924;
            let x_2926 : vec4<f32> = u_xlat14;
            let x_2927 : vec2<f32> = vec2<f32>(x_2926.z, x_2926.w);
            let x_2929 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
            let x_2936 : vec3<f32> = txVec44;
            let x_2938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2936.xy, x_2936.z);
            u_xlat72 = x_2938;
            let x_2939 : f32 = u_xlat72;
            let x_2941 : f32 = u_xlat19.y;
            u_xlat72 = (x_2939 * x_2941);
            let x_2944 : f32 = u_xlat19.x;
            let x_2945 : f32 = u_xlat71;
            let x_2947 : f32 = u_xlat72;
            u_xlat71 = ((x_2944 * x_2945) + x_2947);
            let x_2950 : vec2<f32> = u_xlat52;
            let x_2952 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2950.x, x_2950.y, x_2952);
            let x_2959 : vec3<f32> = txVec45;
            let x_2961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2959.xy, x_2959.z);
            u_xlat72 = x_2961;
            let x_2963 : f32 = u_xlat19.z;
            let x_2964 : f32 = u_xlat72;
            let x_2966 : f32 = u_xlat71;
            u_xlat71 = ((x_2963 * x_2964) + x_2966);
            let x_2969 : vec4<f32> = u_xlat17;
            let x_2970 : vec2<f32> = vec2<f32>(x_2969.x, x_2969.y);
            let x_2972 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2970.x, x_2970.y, x_2972);
            let x_2979 : vec3<f32> = txVec46;
            let x_2981 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2979.xy, x_2979.z);
            u_xlat72 = x_2981;
            let x_2983 : f32 = u_xlat19.w;
            let x_2984 : f32 = u_xlat72;
            let x_2986 : f32 = u_xlat71;
            u_xlat71 = ((x_2983 * x_2984) + x_2986);
            let x_2989 : vec4<f32> = u_xlat15;
            let x_2990 : vec2<f32> = vec2<f32>(x_2989.x, x_2989.y);
            let x_2992 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2990.x, x_2990.y, x_2992);
            let x_2999 : vec3<f32> = txVec47;
            let x_3001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2999.xy, x_2999.z);
            u_xlat72 = x_3001;
            let x_3003 : f32 = u_xlat20.x;
            let x_3004 : f32 = u_xlat72;
            let x_3006 : f32 = u_xlat71;
            u_xlat71 = ((x_3003 * x_3004) + x_3006);
            let x_3009 : vec4<f32> = u_xlat15;
            let x_3010 : vec2<f32> = vec2<f32>(x_3009.z, x_3009.w);
            let x_3012 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
            let x_3019 : vec3<f32> = txVec48;
            let x_3021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
            u_xlat72 = x_3021;
            let x_3023 : f32 = u_xlat20.y;
            let x_3024 : f32 = u_xlat72;
            let x_3026 : f32 = u_xlat71;
            u_xlat71 = ((x_3023 * x_3024) + x_3026);
            let x_3029 : vec4<f32> = u_xlat16;
            let x_3030 : vec2<f32> = vec2<f32>(x_3029.x, x_3029.y);
            let x_3032 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_3030.x, x_3030.y, x_3032);
            let x_3039 : vec3<f32> = txVec49;
            let x_3041 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3039.xy, x_3039.z);
            u_xlat72 = x_3041;
            let x_3043 : f32 = u_xlat20.z;
            let x_3044 : f32 = u_xlat72;
            let x_3046 : f32 = u_xlat71;
            u_xlat71 = ((x_3043 * x_3044) + x_3046);
            let x_3049 : vec4<f32> = u_xlat17;
            let x_3050 : vec2<f32> = vec2<f32>(x_3049.z, x_3049.w);
            let x_3052 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
            let x_3059 : vec3<f32> = txVec50;
            let x_3061 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
            u_xlat72 = x_3061;
            let x_3063 : f32 = u_xlat20.w;
            let x_3064 : f32 = u_xlat72;
            let x_3066 : f32 = u_xlat71;
            u_xlat71 = ((x_3063 * x_3064) + x_3066);
            let x_3069 : vec4<f32> = u_xlat18;
            let x_3070 : vec2<f32> = vec2<f32>(x_3069.x, x_3069.y);
            let x_3072 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3070.x, x_3070.y, x_3072);
            let x_3079 : vec3<f32> = txVec51;
            let x_3081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3079.xy, x_3079.z);
            u_xlat72 = x_3081;
            let x_3083 : f32 = u_xlat21.x;
            let x_3084 : f32 = u_xlat72;
            let x_3086 : f32 = u_xlat71;
            u_xlat71 = ((x_3083 * x_3084) + x_3086);
            let x_3089 : vec4<f32> = u_xlat18;
            let x_3090 : vec2<f32> = vec2<f32>(x_3089.z, x_3089.w);
            let x_3092 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3090.x, x_3090.y, x_3092);
            let x_3099 : vec3<f32> = txVec52;
            let x_3101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3099.xy, x_3099.z);
            u_xlat72 = x_3101;
            let x_3103 : f32 = u_xlat21.y;
            let x_3104 : f32 = u_xlat72;
            let x_3106 : f32 = u_xlat71;
            u_xlat71 = ((x_3103 * x_3104) + x_3106);
            let x_3109 : vec2<f32> = u_xlat32;
            let x_3111 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
            let x_3118 : vec3<f32> = txVec53;
            let x_3120 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3118.xy, x_3118.z);
            u_xlat72 = x_3120;
            let x_3122 : f32 = u_xlat21.z;
            let x_3123 : f32 = u_xlat72;
            let x_3125 : f32 = u_xlat71;
            u_xlat71 = ((x_3122 * x_3123) + x_3125);
            let x_3128 : vec2<f32> = u_xlat60;
            let x_3130 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3128.x, x_3128.y, x_3130);
            let x_3137 : vec3<f32> = txVec54;
            let x_3139 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3137.xy, x_3137.z);
            u_xlat72 = x_3139;
            let x_3141 : f32 = u_xlat21.w;
            let x_3142 : f32 = u_xlat72;
            let x_3144 : f32 = u_xlat71;
            u_xlat71 = ((x_3141 * x_3142) + x_3144);
            let x_3147 : vec4<f32> = u_xlat13;
            let x_3148 : vec2<f32> = vec2<f32>(x_3147.x, x_3147.y);
            let x_3150 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3148.x, x_3148.y, x_3150);
            let x_3157 : vec3<f32> = txVec55;
            let x_3159 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3157.xy, x_3157.z);
            u_xlat72 = x_3159;
            let x_3161 : f32 = u_xlat9.x;
            let x_3162 : f32 = u_xlat72;
            let x_3164 : f32 = u_xlat71;
            u_xlat71 = ((x_3161 * x_3162) + x_3164);
            let x_3167 : vec4<f32> = u_xlat13;
            let x_3168 : vec2<f32> = vec2<f32>(x_3167.z, x_3167.w);
            let x_3170 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3168.x, x_3168.y, x_3170);
            let x_3177 : vec3<f32> = txVec56;
            let x_3179 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3177.xy, x_3177.z);
            u_xlat72 = x_3179;
            let x_3181 : f32 = u_xlat9.y;
            let x_3182 : f32 = u_xlat72;
            let x_3184 : f32 = u_xlat71;
            u_xlat71 = ((x_3181 * x_3182) + x_3184);
            let x_3187 : vec2<f32> = u_xlat55;
            let x_3189 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3187.x, x_3187.y, x_3189);
            let x_3196 : vec3<f32> = txVec57;
            let x_3198 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3196.xy, x_3196.z);
            u_xlat72 = x_3198;
            let x_3200 : f32 = u_xlat9.z;
            let x_3201 : f32 = u_xlat72;
            let x_3203 : f32 = u_xlat71;
            u_xlat71 = ((x_3200 * x_3201) + x_3203);
            let x_3206 : vec4<f32> = u_xlat8;
            let x_3207 : vec2<f32> = vec2<f32>(x_3206.x, x_3206.y);
            let x_3209 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3207.x, x_3207.y, x_3209);
            let x_3216 : vec3<f32> = txVec58;
            let x_3218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3216.xy, x_3216.z);
            u_xlat72 = x_3218;
            let x_3220 : f32 = u_xlat9.w;
            let x_3221 : f32 = u_xlat72;
            let x_3223 : f32 = u_xlat71;
            u_xlat70 = ((x_3220 * x_3221) + x_3223);
          }
        }
      } else {
        let x_3227 : vec4<f32> = u_xlat7;
        let x_3228 : vec2<f32> = vec2<f32>(x_3227.x, x_3227.y);
        let x_3230 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3228.x, x_3228.y, x_3230);
        let x_3237 : vec3<f32> = txVec59;
        let x_3239 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3237.xy, x_3237.z);
        u_xlat70 = x_3239;
      }
      let x_3240 : i32 = u_xlati68;
      let x_3242 : f32 = x_159.x_AdditionalShadowParams[x_3240].x;
      u_xlat71 = (1.0f + -(x_3242));
      let x_3245 : f32 = u_xlat70;
      let x_3246 : i32 = u_xlati68;
      let x_3248 : f32 = x_159.x_AdditionalShadowParams[x_3246].x;
      let x_3250 : f32 = u_xlat71;
      u_xlat70 = ((x_3245 * x_3248) + x_3250);
      let x_3253 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3253);
      let x_3257 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3257 >= 1.0f);
      let x_3259 : bool = u_xlatb71;
      let x_3260 : bool = u_xlatb72;
      u_xlatb71 = (x_3259 | x_3260);
      let x_3262 : bool = u_xlatb71;
      let x_3263 : f32 = u_xlat70;
      u_xlat70 = select(x_3263, 1.0f, x_3262);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3266 : f32 = u_xlat70;
    u_xlat71 = (-(x_3266) + 1.0f);
    let x_3269 : f32 = u_xlat66;
    let x_3270 : f32 = u_xlat71;
    let x_3272 : f32 = u_xlat70;
    u_xlat70 = ((x_3269 * x_3270) + x_3272);
    let x_3274 : f32 = u_xlat69;
    let x_3275 : f32 = u_xlat70;
    u_xlat69 = (x_3274 * x_3275);
    let x_3277 : f32 = u_xlat69;
    let x_3279 : i32 = u_xlati68;
    let x_3281 : vec4<f32> = x_1855.x_AdditionalLightsColor[x_3279];
    let x_3283 : vec3<f32> = (vec3<f32>(x_3277, x_3277, x_3277) * vec3<f32>(x_3281.x, x_3281.y, x_3281.z));
    let x_3284 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3283.x, x_3283.y, x_3283.z, x_3284.w);
    let x_3286 : vec4<f32> = u_xlat2;
    let x_3288 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(vec3<f32>(x_3286.x, x_3286.y, x_3286.z), vec3<f32>(x_3288.x, x_3288.y, x_3288.z));
    let x_3291 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3291, 0.0f, 1.0f);
    let x_3293 : f32 = u_xlat68;
    let x_3295 : vec4<f32> = u_xlat7;
    let x_3297 : vec3<f32> = (vec3<f32>(x_3293, x_3293, x_3293) * vec3<f32>(x_3295.x, x_3295.y, x_3295.z));
    let x_3298 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3297.x, x_3297.y, x_3297.z, x_3298.w);
    let x_3300 : vec4<f32> = u_xlat6;
    let x_3302 : vec4<f32> = u_xlat1;
    let x_3305 : vec4<f32> = u_xlat5;
    let x_3307 : vec3<f32> = ((vec3<f32>(x_3300.x, x_3300.y, x_3300.z) * vec3<f32>(x_3302.y, x_3302.z, x_3302.w)) + vec3<f32>(x_3305.x, x_3305.y, x_3305.z));
    let x_3308 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3307.x, x_3307.y, x_3307.z, x_3308.w);

    continuing {
      let x_3310 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3310 + bitcast<u32>(1i));
    }
  }
  let x_3312 : vec4<f32> = u_xlat4;
  let x_3314 : vec4<f32> = u_xlat1;
  let x_3317 : vec4<f32> = u_xlat3;
  let x_3319 : vec3<f32> = ((vec3<f32>(x_3312.x, x_3312.y, x_3312.z) * vec3<f32>(x_3314.y, x_3314.z, x_3314.w)) + vec3<f32>(x_3317.x, x_3317.y, x_3317.z));
  let x_3320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3319.x, x_3319.y, x_3319.z, x_3320.w);
  let x_3324 : vec4<f32> = u_xlat5;
  let x_3326 : vec4<f32> = u_xlat1;
  let x_3328 : vec3<f32> = (vec3<f32>(x_3324.x, x_3324.y, x_3324.z) + vec3<f32>(x_3326.x, x_3326.y, x_3326.z));
  let x_3329 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3328.x, x_3328.y, x_3328.z, x_3329.w);
  let x_3332 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3332 == 1.0f);
  let x_3334 : bool = u_xlatb22;
  let x_3335 : bool = u_xlatb44;
  u_xlatb22 = (x_3334 | x_3335);
  let x_3337 : bool = u_xlatb22;
  if (x_3337) {
    let x_3342 : f32 = u_xlat0.x;
    x_3338 = x_3342;
  } else {
    x_3338 = 1.0f;
  }
  let x_3344 : f32 = x_3338;
  SV_Target0.w = x_3344;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


