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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlat24 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat70 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_210 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat71 : f32;

var<private> u_xlatu71 : u32;

var<private> u_xlati71 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat72 : f32;

var<private> u_xlatb72 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb73 : bool;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat30 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlatb49 : bool;

var<private> u_xlat26 : vec3<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlat74 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati52 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_2009 : AdditionalLights;

var<private> u_xlat52 : f32;

var<private> u_xlat75 : f32;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat77 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat76 : f32;

var<private> u_xlatb75 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat58 : vec2<f32>;

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
  var x_1787 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2146 : f32;
  var x_2156 : f32;
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
  var x_3587 : f32;
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
  let x_159 : vec3<f32> = u_xlat2;
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
    let x_180 : vec3<f32> = u_xlat2;
    x_175 = x_180;
  }
  let x_181 : vec3<f32> = x_175;
  u_xlat1 = x_181;
  let x_184 : vec3<f32> = vs_TEXCOORD2;
  let x_185 : vec3<f32> = vs_TEXCOORD2;
  u_xlat70 = dot(x_184, x_185);
  let x_187 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_187);
  let x_189 : f32 = u_xlat70;
  let x_191 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_189, x_189, x_189) * x_191);
  let x_193 : vec3<f32> = u_xlat1;
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat70 = dot(x_193, x_194);
  let x_196 : f32 = u_xlat70;
  u_xlat70 = max(x_196, 0.00006103515625f);
  let x_199 : f32 = u_xlat70;
  u_xlat70 = inverseSqrt(x_199);
  let x_202 : vec3<f32> = vs_TEXCOORD1;
  let x_212 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres0;
  let x_215 : vec3<f32> = (x_202 + -(vec3<f32>(x_212.x, x_212.y, x_212.z)));
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_219 : vec3<f32> = vs_TEXCOORD1;
  let x_221 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres1;
  let x_224 : vec3<f32> = (x_219 + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_228 : vec3<f32> = vs_TEXCOORD1;
  let x_231 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres2;
  let x_234 : vec3<f32> = (x_228 + -(vec3<f32>(x_231.x, x_231.y, x_231.z)));
  let x_235 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_238 : vec3<f32> = vs_TEXCOORD1;
  let x_240 : vec4<f32> = x_210.x_CascadeShadowSplitSpheres3;
  let x_243 : vec3<f32> = (x_238 + -(vec3<f32>(x_240.x, x_240.y, x_240.z)));
  let x_244 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_246.x, x_246.y, x_246.z), vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_258 : vec4<f32> = u_xlat5;
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_258.x, x_258.y, x_258.z), vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_264 : vec4<f32> = u_xlat6;
  let x_266 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_273 : vec4<f32> = u_xlat3;
  let x_276 : vec4<f32> = x_210.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_273 < x_276);
  let x_279 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_279);
  let x_283 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_283);
  let x_287 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_287);
  let x_291 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_291);
  let x_295 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_295);
  let x_301 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_301);
  let x_305 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_305);
  let x_308 : vec4<f32> = u_xlat3;
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) + vec3<f32>(x_310.y, x_310.z, x_310.w));
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat3;
  let x_318 : vec3<f32> = max(vec3<f32>(x_315.x, x_315.y, x_315.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_319.x, x_318.x, x_318.y, x_318.z);
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat71 = dot(x_322, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_328 : f32 = u_xlat71;
  u_xlat71 = (-(x_328) + 4.0f);
  let x_333 : f32 = u_xlat71;
  u_xlatu71 = u32(x_333);
  let x_337 : u32 = u_xlatu71;
  u_xlati71 = (bitcast<i32>(x_337) << bitcast<u32>(2i));
  let x_340 : vec3<f32> = vs_TEXCOORD1;
  let x_342 : i32 = u_xlati71;
  let x_345 : i32 = u_xlati71;
  let x_349 : vec4<f32> = x_210.x_MainLightWorldToShadow[((x_342 + 1i) / 4i)][((x_345 + 1i) % 4i)];
  let x_351 : vec3<f32> = (vec3<f32>(x_340.y, x_340.y, x_340.y) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : i32 = u_xlati71;
  let x_356 : i32 = u_xlati71;
  let x_359 : vec4<f32> = x_210.x_MainLightWorldToShadow[(x_354 / 4i)][(x_356 % 4i)];
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = u_xlat3;
  let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : i32 = u_xlati71;
  let x_372 : i32 = u_xlati71;
  let x_376 : vec4<f32> = x_210.x_MainLightWorldToShadow[((x_369 + 2i) / 4i)][((x_372 + 2i) % 4i)];
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.z, x_378.z, x_378.z)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : i32 = u_xlati71;
  let x_391 : i32 = u_xlati71;
  let x_395 : vec4<f32> = x_210.x_MainLightWorldToShadow[((x_388 + 3i) / 4i)][((x_391 + 3i) % 4i)];
  let x_397 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_401 : f32 = vs_TEXCOORD1.y;
  let x_403 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat71 = (x_401 * x_403);
  let x_406 : f32 = x_45.unity_MatrixV[0i].z;
  let x_408 : f32 = vs_TEXCOORD1.x;
  let x_410 : f32 = u_xlat71;
  u_xlat71 = ((x_406 * x_408) + x_410);
  let x_413 : f32 = x_45.unity_MatrixV[2i].z;
  let x_415 : f32 = vs_TEXCOORD1.z;
  let x_417 : f32 = u_xlat71;
  u_xlat71 = ((x_413 * x_415) + x_417);
  let x_419 : f32 = u_xlat71;
  let x_421 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat71 = (x_419 + x_421);
  let x_423 : f32 = u_xlat71;
  let x_426 : f32 = x_45.x_ProjectionParams.y;
  u_xlat71 = (-(x_423) + -(x_426));
  let x_429 : f32 = u_xlat71;
  u_xlat71 = max(x_429, 0.0f);
  let x_431 : f32 = u_xlat71;
  let x_434 : f32 = x_45.unity_FogParams.x;
  u_xlat71 = (x_431 * x_434);
  let x_442 : vec2<f32> = vs_TEXCOORD7;
  let x_444 : f32 = x_45.x_GlobalMipBias.x;
  let x_445 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_442, x_444);
  u_xlat4 = x_445;
  let x_450 : vec2<f32> = vs_TEXCOORD7;
  let x_452 : f32 = x_45.x_GlobalMipBias.x;
  let x_453 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_450, x_452);
  let x_454 : vec3<f32> = vec3<f32>(x_453.x, x_453.y, x_453.z);
  let x_455 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat4;
  let x_461 : vec3<f32> = (vec3<f32>(x_457.x, x_457.y, x_457.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : vec3<f32> = u_xlat2;
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat72 = dot(x_465, vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : f32 = u_xlat72;
  u_xlat72 = (x_469 + 0.5f);
  let x_472 : f32 = u_xlat72;
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec3<f32> = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : f32 = u_xlat4.w;
  u_xlat72 = max(x_480, 0.00009999999747378752f);
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : f32 = u_xlat72;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) / vec3<f32>(x_485, x_485, x_485));
  let x_488 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_493 : f32 = x_210.x_MainLightShadowParams.y;
  u_xlatb72 = (0.0f < x_493);
  let x_495 : bool = u_xlatb72;
  if (x_495) {
    let x_499 : f32 = x_210.x_MainLightShadowParams.y;
    u_xlatb72 = (x_499 == 1.0f);
    let x_501 : bool = u_xlatb72;
    if (x_501) {
      let x_504 : vec4<f32> = u_xlat3;
      let x_507 : vec4<f32> = x_210.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_504.x, x_504.y, x_504.x, x_504.y) + x_507);
      let x_510 : vec4<f32> = u_xlat5;
      let x_511 : vec2<f32> = vec2<f32>(x_510.x, x_510.y);
      let x_513 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_511.x, x_511.y, x_513);
      let x_525 : vec3<f32> = txVec0;
      let x_527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_525.xy, x_525.z);
      u_xlat6.x = x_527;
      let x_530 : vec4<f32> = u_xlat5;
      let x_531 : vec2<f32> = vec2<f32>(x_530.z, x_530.w);
      let x_533 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_531.x, x_531.y, x_533);
      let x_540 : vec3<f32> = txVec1;
      let x_542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_540.xy, x_540.z);
      u_xlat6.y = x_542;
      let x_544 : vec4<f32> = u_xlat3;
      let x_547 : vec4<f32> = x_210.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y) + x_547);
      let x_550 : vec4<f32> = u_xlat5;
      let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
      let x_553 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_551.x, x_551.y, x_553);
      let x_560 : vec3<f32> = txVec2;
      let x_562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_560.xy, x_560.z);
      u_xlat6.z = x_562;
      let x_565 : vec4<f32> = u_xlat5;
      let x_566 : vec2<f32> = vec2<f32>(x_565.z, x_565.w);
      let x_568 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_566.x, x_566.y, x_568);
      let x_575 : vec3<f32> = txVec3;
      let x_577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_575.xy, x_575.z);
      u_xlat6.w = x_577;
      let x_579 : vec4<f32> = u_xlat6;
      u_xlat72 = dot(x_579, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_586 : f32 = x_210.x_MainLightShadowParams.y;
      u_xlatb73 = (x_586 == 2.0f);
      let x_588 : bool = u_xlatb73;
      if (x_588) {
        let x_591 : vec4<f32> = u_xlat3;
        let x_594 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_598 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(x_594.z, x_594.w)) + vec2<f32>(0.5f, 0.5f));
        let x_599 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_601 : vec4<f32> = u_xlat5;
        let x_603 : vec2<f32> = floor(vec2<f32>(x_601.x, x_601.y));
        let x_604 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_608 : vec4<f32> = u_xlat3;
        let x_611 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_608.x, x_608.y) * vec2<f32>(x_611.z, x_611.w)) + -(vec2<f32>(x_614.x, x_614.y)));
        let x_618 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_618.x, x_618.x, x_618.y, x_618.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_623 : vec4<f32> = u_xlat6;
        let x_625 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_623.x, x_623.x, x_623.z, x_623.z) * vec4<f32>(x_625.x, x_625.x, x_625.z, x_625.z));
        let x_628 : vec4<f32> = u_xlat7;
        let x_632 : vec2<f32> = (vec2<f32>(x_628.y, x_628.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_632.x, x_633.y, x_632.y, x_633.w);
        let x_635 : vec4<f32> = u_xlat7;
        let x_638 : vec2<f32> = u_xlat51;
        let x_640 : vec2<f32> = ((vec2<f32>(x_635.x, x_635.z) * vec2<f32>(0.5f, 0.5f)) + -(x_638));
        let x_641 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_644 : vec2<f32> = u_xlat51;
        u_xlat53 = (-(x_644) + vec2<f32>(1.0f, 1.0f));
        let x_649 : vec2<f32> = u_xlat51;
        let x_651 : vec2<f32> = min(x_649, vec2<f32>(0.0f, 0.0f));
        let x_652 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_654 : vec4<f32> = u_xlat8;
        let x_657 : vec4<f32> = u_xlat8;
        let x_660 : vec2<f32> = u_xlat53;
        let x_661 : vec2<f32> = ((-(vec2<f32>(x_654.x, x_654.y)) * vec2<f32>(x_657.x, x_657.y)) + x_660);
        let x_662 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
        let x_664 : vec2<f32> = u_xlat51;
        u_xlat51 = max(x_664, vec2<f32>(0.0f, 0.0f));
        let x_666 : vec2<f32> = u_xlat51;
        let x_668 : vec2<f32> = u_xlat51;
        let x_670 : vec4<f32> = u_xlat6;
        u_xlat51 = ((-(x_666) * x_668) + vec2<f32>(x_670.y, x_670.w));
        let x_673 : vec4<f32> = u_xlat8;
        let x_675 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) + vec2<f32>(1.0f, 1.0f));
        let x_676 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_678 + vec2<f32>(1.0f, 1.0f));
        let x_681 : vec4<f32> = u_xlat7;
        let x_685 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_686 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
        let x_688 : vec2<f32> = u_xlat53;
        let x_689 : vec2<f32> = (x_688 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_690 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_692 : vec4<f32> = u_xlat8;
        let x_694 : vec2<f32> = (vec2<f32>(x_692.x, x_692.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_695 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
        let x_698 : vec2<f32> = u_xlat51;
        let x_699 : vec2<f32> = (x_698 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_700 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
        let x_702 : vec4<f32> = u_xlat6;
        u_xlat51 = (vec2<f32>(x_702.y, x_702.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_706 : f32 = u_xlat8.x;
        u_xlat9.z = x_706;
        let x_709 : f32 = u_xlat51.x;
        u_xlat9.w = x_709;
        let x_712 : f32 = u_xlat10.x;
        u_xlat7.z = x_712;
        let x_715 : f32 = u_xlat6.x;
        u_xlat7.w = x_715;
        let x_718 : vec4<f32> = u_xlat7;
        let x_720 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_718.z, x_718.w, x_718.x, x_718.z) + vec4<f32>(x_720.z, x_720.w, x_720.x, x_720.z));
        let x_724 : f32 = u_xlat9.y;
        u_xlat8.z = x_724;
        let x_727 : f32 = u_xlat51.y;
        u_xlat8.w = x_727;
        let x_730 : f32 = u_xlat7.y;
        u_xlat10.z = x_730;
        let x_733 : f32 = u_xlat6.z;
        u_xlat10.w = x_733;
        let x_735 : vec4<f32> = u_xlat8;
        let x_737 : vec4<f32> = u_xlat10;
        let x_739 : vec3<f32> = (vec3<f32>(x_735.z, x_735.y, x_735.w) + vec3<f32>(x_737.z, x_737.y, x_737.w));
        let x_740 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat7;
        let x_744 : vec4<f32> = u_xlat11;
        let x_746 : vec3<f32> = (vec3<f32>(x_742.x, x_742.z, x_742.w) / vec3<f32>(x_744.z, x_744.w, x_744.y));
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat7;
        let x_754 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_755 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat10;
        let x_759 : vec4<f32> = u_xlat6;
        let x_761 : vec3<f32> = (vec3<f32>(x_757.z, x_757.y, x_757.w) / vec3<f32>(x_759.x, x_759.y, x_759.z));
        let x_762 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat8;
        let x_766 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_767 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
        let x_769 : vec4<f32> = u_xlat7;
        let x_772 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_774 : vec3<f32> = (vec3<f32>(x_769.y, x_769.x, x_769.z) * vec3<f32>(x_772.x, x_772.x, x_772.x));
        let x_775 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
        let x_777 : vec4<f32> = u_xlat8;
        let x_780 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_782 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_780.y, x_780.y, x_780.y));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
        let x_786 : f32 = u_xlat8.x;
        u_xlat7.w = x_786;
        let x_788 : vec4<f32> = u_xlat5;
        let x_791 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_794 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y) * vec4<f32>(x_791.x, x_791.y, x_791.x, x_791.y)) + vec4<f32>(x_794.y, x_794.w, x_794.x, x_794.w));
        let x_797 : vec4<f32> = u_xlat5;
        let x_800 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_803 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_797.x, x_797.y) * vec2<f32>(x_800.x, x_800.y)) + vec2<f32>(x_803.z, x_803.w));
        let x_807 : f32 = u_xlat7.y;
        u_xlat8.w = x_807;
        let x_809 : vec4<f32> = u_xlat8;
        let x_810 : vec2<f32> = vec2<f32>(x_809.y, x_809.z);
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_811.x, x_810.x, x_811.z, x_810.y);
        let x_813 : vec4<f32> = u_xlat5;
        let x_816 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y) * vec4<f32>(x_816.x, x_816.y, x_816.x, x_816.y)) + vec4<f32>(x_819.x, x_819.y, x_819.z, x_819.y));
        let x_822 : vec4<f32> = u_xlat5;
        let x_825 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_828 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_822.x, x_822.y, x_822.x, x_822.y) * vec4<f32>(x_825.x, x_825.y, x_825.x, x_825.y)) + vec4<f32>(x_828.w, x_828.y, x_828.w, x_828.z));
        let x_831 : vec4<f32> = u_xlat5;
        let x_834 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_837 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_831.x, x_831.y, x_831.x, x_831.y) * vec4<f32>(x_834.x, x_834.y, x_834.x, x_834.y)) + vec4<f32>(x_837.x, x_837.w, x_837.z, x_837.w));
        let x_841 : vec4<f32> = u_xlat6;
        let x_843 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_841.x, x_841.x, x_841.x, x_841.y) * vec4<f32>(x_843.z, x_843.w, x_843.y, x_843.z));
        let x_847 : vec4<f32> = u_xlat6;
        let x_849 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_847.y, x_847.y, x_847.z, x_847.z) * x_849);
        let x_853 : f32 = u_xlat6.z;
        let x_855 : f32 = u_xlat11.y;
        u_xlat73 = (x_853 * x_855);
        let x_858 : vec4<f32> = u_xlat9;
        let x_859 : vec2<f32> = vec2<f32>(x_858.x, x_858.y);
        let x_861 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_859.x, x_859.y, x_861);
        let x_868 : vec3<f32> = txVec4;
        let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_868.xy, x_868.z);
        u_xlat5.x = x_870;
        let x_873 : vec4<f32> = u_xlat9;
        let x_874 : vec2<f32> = vec2<f32>(x_873.z, x_873.w);
        let x_876 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_874.x, x_874.y, x_876);
        let x_884 : vec3<f32> = txVec5;
        let x_886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_884.xy, x_884.z);
        u_xlat28.x = x_886;
        let x_889 : f32 = u_xlat28.x;
        let x_891 : f32 = u_xlat12.y;
        u_xlat28.x = (x_889 * x_891);
        let x_895 : f32 = u_xlat12.x;
        let x_897 : f32 = u_xlat5.x;
        let x_900 : f32 = u_xlat28.x;
        u_xlat5.x = ((x_895 * x_897) + x_900);
        let x_904 : vec2<f32> = u_xlat51;
        let x_906 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_904.x, x_904.y, x_906);
        let x_913 : vec3<f32> = txVec6;
        let x_915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_913.xy, x_913.z);
        u_xlat28.x = x_915;
        let x_918 : f32 = u_xlat12.z;
        let x_920 : f32 = u_xlat28.x;
        let x_923 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_918 * x_920) + x_923);
        let x_927 : vec4<f32> = u_xlat8;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec7;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
        u_xlat28.x = x_939;
        let x_942 : f32 = u_xlat12.w;
        let x_944 : f32 = u_xlat28.x;
        let x_947 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_942 * x_944) + x_947);
        let x_951 : vec4<f32> = u_xlat10;
        let x_952 : vec2<f32> = vec2<f32>(x_951.x, x_951.y);
        let x_954 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_952.x, x_952.y, x_954);
        let x_961 : vec3<f32> = txVec8;
        let x_963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_961.xy, x_961.z);
        u_xlat28.x = x_963;
        let x_966 : f32 = u_xlat13.x;
        let x_968 : f32 = u_xlat28.x;
        let x_971 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_966 * x_968) + x_971);
        let x_975 : vec4<f32> = u_xlat10;
        let x_976 : vec2<f32> = vec2<f32>(x_975.z, x_975.w);
        let x_978 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec9;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_985.xy, x_985.z);
        u_xlat28.x = x_987;
        let x_990 : f32 = u_xlat13.y;
        let x_992 : f32 = u_xlat28.x;
        let x_995 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_990 * x_992) + x_995);
        let x_999 : vec4<f32> = u_xlat8;
        let x_1000 : vec2<f32> = vec2<f32>(x_999.z, x_999.w);
        let x_1002 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1000.x, x_1000.y, x_1002);
        let x_1009 : vec3<f32> = txVec10;
        let x_1011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1009.xy, x_1009.z);
        u_xlat28.x = x_1011;
        let x_1014 : f32 = u_xlat13.z;
        let x_1016 : f32 = u_xlat28.x;
        let x_1019 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1014 * x_1016) + x_1019);
        let x_1023 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = vec2<f32>(x_1023.x, x_1023.y);
        let x_1026 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1024.x, x_1024.y, x_1026);
        let x_1033 : vec3<f32> = txVec11;
        let x_1035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1033.xy, x_1033.z);
        u_xlat28.x = x_1035;
        let x_1038 : f32 = u_xlat13.w;
        let x_1040 : f32 = u_xlat28.x;
        let x_1043 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1038 * x_1040) + x_1043);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1048 : vec2<f32> = vec2<f32>(x_1047.z, x_1047.w);
        let x_1050 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
        let x_1057 : vec3<f32> = txVec12;
        let x_1059 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1057.xy, x_1057.z);
        u_xlat28.x = x_1059;
        let x_1061 : f32 = u_xlat73;
        let x_1063 : f32 = u_xlat28.x;
        let x_1066 : f32 = u_xlat5.x;
        u_xlat72 = ((x_1061 * x_1063) + x_1066);
      } else {
        let x_1069 : vec4<f32> = u_xlat3;
        let x_1072 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1069.x, x_1069.y) * vec2<f32>(x_1072.z, x_1072.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1076 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat5;
        let x_1080 : vec2<f32> = floor(vec2<f32>(x_1078.x, x_1078.y));
        let x_1081 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1080.x, x_1080.y, x_1081.z, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat3;
        let x_1086 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat5;
        u_xlat51 = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.z, x_1086.w)) + -(vec2<f32>(x_1089.x, x_1089.y)));
        let x_1093 : vec2<f32> = u_xlat51;
        u_xlat6 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.y, x_1093.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1096 : vec4<f32> = u_xlat6;
        let x_1098 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1096.x, x_1096.x, x_1096.z, x_1096.z) * vec4<f32>(x_1098.x, x_1098.x, x_1098.z, x_1098.z));
        let x_1101 : vec4<f32> = u_xlat7;
        let x_1105 : vec2<f32> = (vec2<f32>(x_1101.y, x_1101.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1106.x, x_1105.x, x_1106.z, x_1105.y);
        let x_1108 : vec4<f32> = u_xlat7;
        let x_1111 : vec2<f32> = u_xlat51;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1108.x, x_1108.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1111));
        let x_1114 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1113.x, x_1114.y, x_1113.y, x_1114.w);
        let x_1116 : vec2<f32> = u_xlat51;
        let x_1118 : vec2<f32> = (-(x_1116) + vec2<f32>(1.0f, 1.0f));
        let x_1119 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1118.x, x_1118.y, x_1119.z, x_1119.w);
        let x_1121 : vec2<f32> = u_xlat51;
        u_xlat53 = min(x_1121, vec2<f32>(0.0f, 0.0f));
        let x_1123 : vec2<f32> = u_xlat53;
        let x_1125 : vec2<f32> = u_xlat53;
        let x_1127 : vec4<f32> = u_xlat7;
        let x_1129 : vec2<f32> = ((-(x_1123) * x_1125) + vec2<f32>(x_1127.x, x_1127.y));
        let x_1130 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec2<f32> = u_xlat51;
        u_xlat53 = max(x_1132, vec2<f32>(0.0f, 0.0f));
        let x_1135 : vec2<f32> = u_xlat53;
        let x_1137 : vec2<f32> = u_xlat53;
        let x_1139 : vec4<f32> = u_xlat6;
        let x_1141 : vec2<f32> = ((-(x_1135) * x_1137) + vec2<f32>(x_1139.y, x_1139.w));
        let x_1142 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1141.x, x_1142.y, x_1141.y);
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1147 : vec2<f32> = (vec2<f32>(x_1144.x, x_1144.y) + vec2<f32>(2.0f, 2.0f));
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1147.x, x_1147.y, x_1148.z, x_1148.w);
        let x_1150 : vec3<f32> = u_xlat29;
        let x_1152 : vec2<f32> = (vec2<f32>(x_1150.x, x_1150.z) + vec2<f32>(2.0f, 2.0f));
        let x_1153 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1153.x, x_1152.x, x_1153.z, x_1152.y);
        let x_1156 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1156 * 0.08163200318813323975f);
        let x_1160 : vec4<f32> = u_xlat6;
        let x_1163 : vec3<f32> = (vec3<f32>(x_1160.z, x_1160.x, x_1160.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1164 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1169 : vec2<f32> = (vec2<f32>(x_1166.x, x_1166.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1170 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
        let x_1173 : f32 = u_xlat10.y;
        u_xlat9.x = x_1173;
        let x_1175 : vec2<f32> = u_xlat51;
        let x_1182 : vec2<f32> = ((vec2<f32>(x_1175.x, x_1175.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1183 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1183.x, x_1182.x, x_1183.z, x_1182.y);
        let x_1185 : vec2<f32> = u_xlat51;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1185.x, x_1185.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1190 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1190.w);
        let x_1193 : f32 = u_xlat6.x;
        u_xlat7.y = x_1193;
        let x_1196 : f32 = u_xlat8.y;
        u_xlat7.w = x_1196;
        let x_1198 : vec4<f32> = u_xlat7;
        let x_1199 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1198 + x_1199);
        let x_1201 : vec2<f32> = u_xlat51;
        let x_1204 : vec2<f32> = ((vec2<f32>(x_1201.y, x_1201.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1205 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1205.x, x_1204.x, x_1205.z, x_1204.y);
        let x_1207 : vec2<f32> = u_xlat51;
        let x_1210 : vec2<f32> = ((vec2<f32>(x_1207.y, x_1207.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1210.x, x_1211.y, x_1210.y, x_1211.w);
        let x_1214 : f32 = u_xlat6.y;
        u_xlat8.y = x_1214;
        let x_1216 : vec4<f32> = u_xlat8;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1216 + x_1217);
        let x_1219 : vec4<f32> = u_xlat7;
        let x_1220 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1219 / x_1220);
        let x_1222 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1222 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1228 : vec4<f32> = u_xlat8;
        let x_1229 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1228 / x_1229);
        let x_1231 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1231 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1236 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1233.w, x_1233.x, x_1233.y, x_1233.z) * vec4<f32>(x_1236.x, x_1236.x, x_1236.x, x_1236.x));
        let x_1239 : vec4<f32> = u_xlat8;
        let x_1242 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1239.x, x_1239.w, x_1239.y, x_1239.z) * vec4<f32>(x_1242.y, x_1242.y, x_1242.y, x_1242.y));
        let x_1245 : vec4<f32> = u_xlat7;
        let x_1246 : vec3<f32> = vec3<f32>(x_1245.y, x_1245.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1246.x, x_1247.y, x_1246.y, x_1246.z);
        let x_1250 : f32 = u_xlat8.x;
        u_xlat10.y = x_1250;
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.y) * vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y)) + vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.y));
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat51 = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.w, x_1267.y));
        let x_1271 : f32 = u_xlat10.y;
        u_xlat7.y = x_1271;
        let x_1274 : f32 = u_xlat8.z;
        u_xlat10.y = x_1274;
        let x_1276 : vec4<f32> = u_xlat5;
        let x_1279 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1282 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1276.x, x_1276.y, x_1276.x, x_1276.y) * vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y)) + vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1282.y));
        let x_1285 : vec4<f32> = u_xlat5;
        let x_1288 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1291 : vec4<f32> = u_xlat10;
        let x_1293 : vec2<f32> = ((vec2<f32>(x_1285.x, x_1285.y) * vec2<f32>(x_1288.x, x_1288.y)) + vec2<f32>(x_1291.w, x_1291.y));
        let x_1294 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1293.x, x_1293.y, x_1294.z, x_1294.w);
        let x_1297 : f32 = u_xlat10.y;
        u_xlat7.z = x_1297;
        let x_1300 : vec4<f32> = u_xlat5;
        let x_1303 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1300.x, x_1300.y, x_1300.x, x_1300.y) * vec4<f32>(x_1303.x, x_1303.y, x_1303.x, x_1303.y)) + vec4<f32>(x_1306.x, x_1306.y, x_1306.x, x_1306.z));
        let x_1310 : f32 = u_xlat8.w;
        u_xlat10.y = x_1310;
        let x_1313 : vec4<f32> = u_xlat5;
        let x_1316 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1313.x, x_1313.y, x_1313.x, x_1313.y) * vec4<f32>(x_1316.x, x_1316.y, x_1316.x, x_1316.y)) + vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1319.y));
        let x_1323 : vec4<f32> = u_xlat5;
        let x_1326 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1329 : vec4<f32> = u_xlat10;
        u_xlat30 = ((vec2<f32>(x_1323.x, x_1323.y) * vec2<f32>(x_1326.x, x_1326.y)) + vec2<f32>(x_1329.w, x_1329.y));
        let x_1333 : f32 = u_xlat10.y;
        u_xlat7.w = x_1333;
        let x_1336 : vec4<f32> = u_xlat5;
        let x_1339 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.x, x_1342.w));
        let x_1345 : vec4<f32> = u_xlat10;
        let x_1346 : vec3<f32> = vec3<f32>(x_1345.x, x_1345.z, x_1345.w);
        let x_1347 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1346.x, x_1347.y, x_1346.y, x_1346.z);
        let x_1349 : vec4<f32> = u_xlat5;
        let x_1352 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1355 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y) * vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y)) + vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1355.y));
        let x_1359 : vec4<f32> = u_xlat5;
        let x_1362 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1359.x, x_1359.y) * vec2<f32>(x_1362.x, x_1362.y)) + vec2<f32>(x_1365.w, x_1365.y));
        let x_1369 : f32 = u_xlat7.x;
        u_xlat8.x = x_1369;
        let x_1371 : vec4<f32> = u_xlat5;
        let x_1374 : vec4<f32> = x_210.x_MainLightShadowmapSize;
        let x_1377 : vec4<f32> = u_xlat8;
        let x_1379 : vec2<f32> = ((vec2<f32>(x_1371.x, x_1371.y) * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1377.x, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1383 : vec4<f32> = u_xlat6;
        let x_1385 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1383.x, x_1383.x, x_1383.x, x_1383.x) * x_1385);
        let x_1388 : vec4<f32> = u_xlat6;
        let x_1390 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1388.y, x_1388.y, x_1388.y, x_1388.y) * x_1390);
        let x_1393 : vec4<f32> = u_xlat6;
        let x_1395 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1393.z, x_1393.z, x_1393.z, x_1393.z) * x_1395);
        let x_1397 : vec4<f32> = u_xlat6;
        let x_1399 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1397.w, x_1397.w, x_1397.w, x_1397.w) * x_1399);
        let x_1402 : vec4<f32> = u_xlat11;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec13;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1412.xy, x_1412.z);
        u_xlat73 = x_1414;
        let x_1416 : vec4<f32> = u_xlat11;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.z, x_1416.w);
        let x_1419 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec14;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1426.xy, x_1426.z);
        u_xlat7.x = x_1428;
        let x_1431 : f32 = u_xlat7.x;
        let x_1433 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1431 * x_1433);
        let x_1437 : f32 = u_xlat16.x;
        let x_1438 : f32 = u_xlat73;
        let x_1441 : f32 = u_xlat7.x;
        u_xlat73 = ((x_1437 * x_1438) + x_1441);
        let x_1444 : vec2<f32> = u_xlat51;
        let x_1446 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec15;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat51.x = x_1455;
        let x_1458 : f32 = u_xlat16.z;
        let x_1460 : f32 = u_xlat51.x;
        let x_1462 : f32 = u_xlat73;
        u_xlat73 = ((x_1458 * x_1460) + x_1462);
        let x_1465 : vec4<f32> = u_xlat14;
        let x_1466 : vec2<f32> = vec2<f32>(x_1465.x, x_1465.y);
        let x_1468 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1466.x, x_1466.y, x_1468);
        let x_1475 : vec3<f32> = txVec16;
        let x_1477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1475.xy, x_1475.z);
        u_xlat51.x = x_1477;
        let x_1480 : f32 = u_xlat16.w;
        let x_1482 : f32 = u_xlat51.x;
        let x_1484 : f32 = u_xlat73;
        u_xlat73 = ((x_1480 * x_1482) + x_1484);
        let x_1487 : vec4<f32> = u_xlat12;
        let x_1488 : vec2<f32> = vec2<f32>(x_1487.x, x_1487.y);
        let x_1490 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1488.x, x_1488.y, x_1490);
        let x_1497 : vec3<f32> = txVec17;
        let x_1499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1497.xy, x_1497.z);
        u_xlat51.x = x_1499;
        let x_1502 : f32 = u_xlat17.x;
        let x_1504 : f32 = u_xlat51.x;
        let x_1506 : f32 = u_xlat73;
        u_xlat73 = ((x_1502 * x_1504) + x_1506);
        let x_1509 : vec4<f32> = u_xlat12;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec18;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1519.xy, x_1519.z);
        u_xlat51.x = x_1521;
        let x_1524 : f32 = u_xlat17.y;
        let x_1526 : f32 = u_xlat51.x;
        let x_1528 : f32 = u_xlat73;
        u_xlat73 = ((x_1524 * x_1526) + x_1528);
        let x_1531 : vec4<f32> = u_xlat13;
        let x_1532 : vec2<f32> = vec2<f32>(x_1531.x, x_1531.y);
        let x_1534 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1532.x, x_1532.y, x_1534);
        let x_1541 : vec3<f32> = txVec19;
        let x_1543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1541.xy, x_1541.z);
        u_xlat51.x = x_1543;
        let x_1546 : f32 = u_xlat17.z;
        let x_1548 : f32 = u_xlat51.x;
        let x_1550 : f32 = u_xlat73;
        u_xlat73 = ((x_1546 * x_1548) + x_1550);
        let x_1553 : vec4<f32> = u_xlat14;
        let x_1554 : vec2<f32> = vec2<f32>(x_1553.z, x_1553.w);
        let x_1556 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1554.x, x_1554.y, x_1556);
        let x_1563 : vec3<f32> = txVec20;
        let x_1565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1563.xy, x_1563.z);
        u_xlat51.x = x_1565;
        let x_1568 : f32 = u_xlat17.w;
        let x_1570 : f32 = u_xlat51.x;
        let x_1572 : f32 = u_xlat73;
        u_xlat73 = ((x_1568 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat15;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec21;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1585.xy, x_1585.z);
        u_xlat51.x = x_1587;
        let x_1590 : f32 = u_xlat18.x;
        let x_1592 : f32 = u_xlat51.x;
        let x_1594 : f32 = u_xlat73;
        u_xlat73 = ((x_1590 * x_1592) + x_1594);
        let x_1597 : vec4<f32> = u_xlat15;
        let x_1598 : vec2<f32> = vec2<f32>(x_1597.z, x_1597.w);
        let x_1600 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec22;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat51.x = x_1609;
        let x_1612 : f32 = u_xlat18.y;
        let x_1614 : f32 = u_xlat51.x;
        let x_1616 : f32 = u_xlat73;
        u_xlat73 = ((x_1612 * x_1614) + x_1616);
        let x_1619 : vec2<f32> = u_xlat30;
        let x_1621 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec23;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1628.xy, x_1628.z);
        u_xlat51.x = x_1630;
        let x_1633 : f32 = u_xlat18.z;
        let x_1635 : f32 = u_xlat51.x;
        let x_1637 : f32 = u_xlat73;
        u_xlat73 = ((x_1633 * x_1635) + x_1637);
        let x_1640 : vec2<f32> = u_xlat59;
        let x_1642 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec24;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1649.xy, x_1649.z);
        u_xlat51.x = x_1651;
        let x_1654 : f32 = u_xlat18.w;
        let x_1656 : f32 = u_xlat51.x;
        let x_1658 : f32 = u_xlat73;
        u_xlat73 = ((x_1654 * x_1656) + x_1658);
        let x_1661 : vec4<f32> = u_xlat10;
        let x_1662 : vec2<f32> = vec2<f32>(x_1661.x, x_1661.y);
        let x_1664 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1662.x, x_1662.y, x_1664);
        let x_1671 : vec3<f32> = txVec25;
        let x_1673 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1671.xy, x_1671.z);
        u_xlat51.x = x_1673;
        let x_1676 : f32 = u_xlat6.x;
        let x_1678 : f32 = u_xlat51.x;
        let x_1680 : f32 = u_xlat73;
        u_xlat73 = ((x_1676 * x_1678) + x_1680);
        let x_1683 : vec4<f32> = u_xlat10;
        let x_1684 : vec2<f32> = vec2<f32>(x_1683.z, x_1683.w);
        let x_1686 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec26;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1693.xy, x_1693.z);
        u_xlat51.x = x_1695;
        let x_1698 : f32 = u_xlat6.y;
        let x_1700 : f32 = u_xlat51.x;
        let x_1702 : f32 = u_xlat73;
        u_xlat73 = ((x_1698 * x_1700) + x_1702);
        let x_1705 : vec2<f32> = u_xlat54;
        let x_1707 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1705.x, x_1705.y, x_1707);
        let x_1714 : vec3<f32> = txVec27;
        let x_1716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1714.xy, x_1714.z);
        u_xlat51.x = x_1716;
        let x_1719 : f32 = u_xlat6.z;
        let x_1721 : f32 = u_xlat51.x;
        let x_1723 : f32 = u_xlat73;
        u_xlat73 = ((x_1719 * x_1721) + x_1723);
        let x_1726 : vec4<f32> = u_xlat5;
        let x_1727 : vec2<f32> = vec2<f32>(x_1726.x, x_1726.y);
        let x_1729 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
        let x_1736 : vec3<f32> = txVec28;
        let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1736.xy, x_1736.z);
        u_xlat5.x = x_1738;
        let x_1741 : f32 = u_xlat6.w;
        let x_1743 : f32 = u_xlat5.x;
        let x_1745 : f32 = u_xlat73;
        u_xlat72 = ((x_1741 * x_1743) + x_1745);
      }
    }
  } else {
    let x_1749 : vec4<f32> = u_xlat3;
    let x_1750 : vec2<f32> = vec2<f32>(x_1749.x, x_1749.y);
    let x_1752 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
    let x_1759 : vec3<f32> = txVec29;
    let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
    u_xlat72 = x_1761;
  }
  let x_1763 : f32 = x_210.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1763) + 1.0f);
  let x_1767 : f32 = u_xlat72;
  let x_1769 : f32 = x_210.x_MainLightShadowParams.x;
  let x_1772 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1767 * x_1769) + x_1772);
  let x_1777 : f32 = u_xlat3.z;
  u_xlatb26 = (0.0f >= x_1777);
  let x_1781 : f32 = u_xlat3.z;
  u_xlatb49 = (x_1781 >= 1.0f);
  let x_1783 : bool = u_xlatb49;
  let x_1784 : bool = u_xlatb26;
  u_xlatb26 = (x_1783 | x_1784);
  let x_1786 : bool = u_xlatb26;
  if (x_1786) {
    x_1787 = 1.0f;
  } else {
    let x_1792 : f32 = u_xlat3.x;
    x_1787 = x_1792;
  }
  let x_1793 : f32 = x_1787;
  u_xlat3.x = x_1793;
  let x_1796 : vec3<f32> = vs_TEXCOORD1;
  let x_1798 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat26 = (x_1796 + -(x_1798));
  let x_1801 : vec3<f32> = u_xlat26;
  let x_1802 : vec3<f32> = u_xlat26;
  u_xlat26.x = dot(x_1801, x_1802);
  let x_1807 : f32 = u_xlat26.x;
  let x_1809 : f32 = x_210.x_MainLightShadowParams.z;
  let x_1812 : f32 = x_210.x_MainLightShadowParams.w;
  u_xlat49 = ((x_1807 * x_1809) + x_1812);
  let x_1814 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1814, 0.0f, 1.0f);
  let x_1817 : f32 = u_xlat3.x;
  u_xlat72 = (-(x_1817) + 1.0f);
  let x_1820 : f32 = u_xlat49;
  let x_1821 : f32 = u_xlat72;
  let x_1824 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1820 * x_1821) + x_1824);
  let x_1828 : f32 = u_xlat3.x;
  let x_1830 : f32 = x_95.unity_LightData.z;
  u_xlat3.x = (x_1828 * x_1830);
  let x_1833 : vec4<f32> = u_xlat3;
  let x_1836 : vec4<f32> = x_45.x_MainLightColor;
  let x_1838 : vec3<f32> = (vec3<f32>(x_1833.x, x_1833.x, x_1833.x) * vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
  let x_1839 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1838.x, x_1839.y, x_1838.y, x_1838.z);
  let x_1841 : vec3<f32> = u_xlat2;
  let x_1843 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat73 = dot(x_1841, vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : f32 = u_xlat73;
  u_xlat73 = clamp(x_1846, 0.0f, 1.0f);
  let x_1848 : vec4<f32> = u_xlat3;
  let x_1850 : f32 = u_xlat73;
  let x_1852 : vec3<f32> = (vec3<f32>(x_1848.x, x_1848.z, x_1848.w) * vec3<f32>(x_1850, x_1850, x_1850));
  let x_1853 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);
  let x_1856 : f32 = u_xlat0.x;
  u_xlat73 = ((x_1856 * 10.0f) + 1.0f);
  let x_1860 : f32 = u_xlat73;
  u_xlat73 = exp2(x_1860);
  let x_1862 : vec3<f32> = u_xlat1;
  let x_1863 : f32 = u_xlat70;
  let x_1867 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1869 : vec3<f32> = ((x_1862 * vec3<f32>(x_1863, x_1863, x_1863)) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
  let x_1873 : vec4<f32> = u_xlat6;
  let x_1875 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(vec3<f32>(x_1873.x, x_1873.y, x_1873.z), vec3<f32>(x_1875.x, x_1875.y, x_1875.z));
  let x_1878 : f32 = u_xlat74;
  u_xlat74 = max(x_1878, 1.17549435e-38f);
  let x_1881 : f32 = u_xlat74;
  u_xlat74 = inverseSqrt(x_1881);
  let x_1883 : f32 = u_xlat74;
  let x_1885 : vec4<f32> = u_xlat6;
  let x_1887 : vec3<f32> = (vec3<f32>(x_1883, x_1883, x_1883) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
  let x_1888 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
  let x_1890 : vec3<f32> = u_xlat2;
  let x_1891 : vec4<f32> = u_xlat6;
  u_xlat74 = dot(x_1890, vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : f32 = u_xlat74;
  u_xlat74 = clamp(x_1894, 0.0f, 1.0f);
  let x_1896 : f32 = u_xlat74;
  u_xlat74 = log2(x_1896);
  let x_1898 : f32 = u_xlat73;
  let x_1899 : f32 = u_xlat74;
  u_xlat74 = (x_1898 * x_1899);
  let x_1901 : f32 = u_xlat74;
  u_xlat74 = exp2(x_1901);
  let x_1903 : f32 = u_xlat74;
  let x_1906 : vec4<f32> = x_57.x_SpecColor;
  let x_1908 : vec3<f32> = (vec3<f32>(x_1903, x_1903, x_1903) * vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
  let x_1909 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
  let x_1911 : vec4<f32> = u_xlat3;
  let x_1913 : vec4<f32> = u_xlat6;
  let x_1915 : vec3<f32> = (vec3<f32>(x_1911.x, x_1911.z, x_1911.w) * vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1915.x, x_1916.y, x_1915.y, x_1915.z);
  let x_1918 : vec4<f32> = u_xlat5;
  let x_1920 : vec4<f32> = u_xlat0;
  let x_1923 : vec4<f32> = u_xlat3;
  let x_1925 : vec3<f32> = ((vec3<f32>(x_1918.x, x_1918.y, x_1918.z) * vec3<f32>(x_1920.y, x_1920.z, x_1920.w)) + vec3<f32>(x_1923.x, x_1923.z, x_1923.w));
  let x_1926 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1925.x, x_1926.y, x_1925.y, x_1925.z);
  let x_1929 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1931 : f32 = x_95.unity_LightData.y;
  u_xlat5.x = min(x_1929, x_1931);
  let x_1936 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1936));
  let x_1940 : f32 = u_xlat26.x;
  let x_1943 : f32 = x_210.x_AdditionalShadowFadeParams.x;
  let x_1946 : f32 = x_210.x_AdditionalShadowFadeParams.y;
  u_xlat26.x = ((x_1940 * x_1943) + x_1946);
  let x_1950 : f32 = u_xlat26.x;
  u_xlat26.x = clamp(x_1950, 0.0f, 1.0f);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1963 : u32 = u_xlatu_loop_1;
    let x_1964 : u32 = u_xlatu5;
    if ((x_1963 < x_1964)) {
    } else {
      break;
    }
    let x_1967 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_1967 >> 2u);
    let x_1970 : u32 = u_xlatu_loop_1;
    u_xlati52 = bitcast<i32>((x_1970 & 3u));
    let x_1973 : u32 = u_xlatu29;
    let x_1976 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_1973)];
    let x_1986 : i32 = u_xlati52;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1991 : vec4<u32> = indexable[x_1986];
    u_xlat29.x = dot(x_1976, bitcast<vec4<f32>>(x_1991));
    let x_1997 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_1997);
    let x_1999 : vec3<f32> = vs_TEXCOORD1;
    let x_2010 : i32 = u_xlati29;
    let x_2012 : vec4<f32> = x_2009.x_AdditionalLightsPosition[x_2010];
    let x_2015 : i32 = u_xlati29;
    let x_2017 : vec4<f32> = x_2009.x_AdditionalLightsPosition[x_2015];
    let x_2019 : vec3<f32> = ((-(x_1999) * vec3<f32>(x_2012.w, x_2012.w, x_2012.w)) + vec3<f32>(x_2017.x, x_2017.y, x_2017.z));
    let x_2020 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2019.x, x_2019.y, x_2019.z, x_2020.w);
    let x_2023 : vec4<f32> = u_xlat7;
    let x_2025 : vec4<f32> = u_xlat7;
    u_xlat52 = dot(vec3<f32>(x_2023.x, x_2023.y, x_2023.z), vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
    let x_2028 : f32 = u_xlat52;
    u_xlat52 = max(x_2028, 0.00006103515625f);
    let x_2031 : f32 = u_xlat52;
    u_xlat75 = inverseSqrt(x_2031);
    let x_2033 : f32 = u_xlat75;
    let x_2035 : vec4<f32> = u_xlat7;
    let x_2037 : vec3<f32> = (vec3<f32>(x_2033, x_2033, x_2033) * vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
    let x_2038 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
    let x_2040 : f32 = u_xlat52;
    u_xlat75 = (1.0f / x_2040);
    let x_2042 : f32 = u_xlat52;
    let x_2043 : i32 = u_xlati29;
    let x_2045 : f32 = x_2009.x_AdditionalLightsAttenuation[x_2043].x;
    u_xlat52 = (x_2042 * x_2045);
    let x_2047 : f32 = u_xlat52;
    let x_2049 : f32 = u_xlat52;
    u_xlat52 = ((-(x_2047) * x_2049) + 1.0f);
    let x_2052 : f32 = u_xlat52;
    u_xlat52 = max(x_2052, 0.0f);
    let x_2054 : f32 = u_xlat52;
    let x_2055 : f32 = u_xlat52;
    u_xlat52 = (x_2054 * x_2055);
    let x_2057 : f32 = u_xlat52;
    let x_2058 : f32 = u_xlat75;
    u_xlat52 = (x_2057 * x_2058);
    let x_2060 : i32 = u_xlati29;
    let x_2062 : vec4<f32> = x_2009.x_AdditionalLightsSpotDir[x_2060];
    let x_2064 : vec4<f32> = u_xlat7;
    u_xlat75 = dot(vec3<f32>(x_2062.x, x_2062.y, x_2062.z), vec3<f32>(x_2064.x, x_2064.y, x_2064.z));
    let x_2067 : f32 = u_xlat75;
    let x_2068 : i32 = u_xlati29;
    let x_2070 : f32 = x_2009.x_AdditionalLightsAttenuation[x_2068].z;
    let x_2072 : i32 = u_xlati29;
    let x_2074 : f32 = x_2009.x_AdditionalLightsAttenuation[x_2072].w;
    u_xlat75 = ((x_2067 * x_2070) + x_2074);
    let x_2076 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2076, 0.0f, 1.0f);
    let x_2078 : f32 = u_xlat75;
    let x_2079 : f32 = u_xlat75;
    u_xlat75 = (x_2078 * x_2079);
    let x_2081 : f32 = u_xlat75;
    let x_2082 : f32 = u_xlat52;
    u_xlat52 = (x_2081 * x_2082);
    let x_2086 : i32 = u_xlati29;
    let x_2088 : f32 = x_210.x_AdditionalShadowParams[x_2086].w;
    u_xlati75 = i32(x_2088);
    let x_2091 : i32 = u_xlati75;
    u_xlatb76 = (x_2091 >= 0i);
    let x_2093 : bool = u_xlatb76;
    if (x_2093) {
      let x_2097 : i32 = u_xlati29;
      let x_2099 : f32 = x_210.x_AdditionalShadowParams[x_2097].z;
      u_xlatb76 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2099, x_2099, x_2099, x_2099))));
      let x_2103 : bool = u_xlatb76;
      if (x_2103) {
        let x_2107 : vec4<f32> = u_xlat7;
        let x_2110 : vec4<f32> = u_xlat7;
        let x_2113 : vec4<bool> = (abs(vec4<f32>(x_2107.z, x_2107.z, x_2107.y, x_2107.z)) >= abs(vec4<f32>(x_2110.x, x_2110.y, x_2110.x, x_2110.x)));
        let x_2115 : vec3<bool> = vec3<bool>(x_2113.x, x_2113.y, x_2113.z);
        let x_2116 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2115.x, x_2115.y, x_2115.z, x_2116.w);
        let x_2119 : bool = u_xlatb8.y;
        let x_2121 : bool = u_xlatb8.x;
        u_xlatb76 = (x_2119 & x_2121);
        let x_2123 : vec4<f32> = u_xlat7;
        let x_2126 : vec4<bool> = (-(vec4<f32>(x_2123.z, x_2123.y, x_2123.z, x_2123.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2127 : vec3<bool> = vec3<bool>(x_2126.x, x_2126.y, x_2126.w);
        let x_2128 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_2127.x, x_2127.y, x_2128.z, x_2127.z);
        let x_2131 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_2131);
        let x_2136 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_2136);
        let x_2141 : bool = u_xlatb8.w;
        u_xlat77 = select(0.0f, 1.0f, x_2141);
        let x_2145 : bool = u_xlatb8.z;
        if (x_2145) {
          let x_2150 : f32 = u_xlat8.y;
          x_2146 = x_2150;
        } else {
          let x_2152 : f32 = u_xlat77;
          x_2146 = x_2152;
        }
        let x_2153 : f32 = x_2146;
        u_xlat31 = x_2153;
        let x_2155 : bool = u_xlatb76;
        if (x_2155) {
          let x_2160 : f32 = u_xlat8.x;
          x_2156 = x_2160;
        } else {
          let x_2162 : f32 = u_xlat31;
          x_2156 = x_2162;
        }
        let x_2163 : f32 = x_2156;
        u_xlat76 = x_2163;
        let x_2164 : i32 = u_xlati29;
        let x_2166 : f32 = x_210.x_AdditionalShadowParams[x_2164].w;
        u_xlat8.x = trunc(x_2166);
        let x_2169 : f32 = u_xlat76;
        let x_2171 : f32 = u_xlat8.x;
        u_xlat76 = (x_2169 + x_2171);
        let x_2173 : f32 = u_xlat76;
        u_xlati75 = i32(x_2173);
      }
      let x_2175 : i32 = u_xlati75;
      u_xlati75 = (x_2175 << bitcast<u32>(2i));
      let x_2177 : vec3<f32> = vs_TEXCOORD1;
      let x_2180 : i32 = u_xlati75;
      let x_2183 : i32 = u_xlati75;
      let x_2187 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[((x_2180 + 1i) / 4i)][((x_2183 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_2177.y, x_2177.y, x_2177.y, x_2177.y) * x_2187);
      let x_2189 : i32 = u_xlati75;
      let x_2191 : i32 = u_xlati75;
      let x_2194 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[(x_2189 / 4i)][(x_2191 % 4i)];
      let x_2195 : vec3<f32> = vs_TEXCOORD1;
      let x_2198 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2194 * vec4<f32>(x_2195.x, x_2195.x, x_2195.x, x_2195.x)) + x_2198);
      let x_2200 : i32 = u_xlati75;
      let x_2203 : i32 = u_xlati75;
      let x_2207 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[((x_2200 + 2i) / 4i)][((x_2203 + 2i) % 4i)];
      let x_2208 : vec3<f32> = vs_TEXCOORD1;
      let x_2211 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_2207 * vec4<f32>(x_2208.z, x_2208.z, x_2208.z, x_2208.z)) + x_2211);
      let x_2213 : vec4<f32> = u_xlat8;
      let x_2214 : i32 = u_xlati75;
      let x_2217 : i32 = u_xlati75;
      let x_2221 : vec4<f32> = x_210.x_AdditionalLightsWorldToShadow[((x_2214 + 3i) / 4i)][((x_2217 + 3i) % 4i)];
      u_xlat8 = (x_2213 + x_2221);
      let x_2223 : vec4<f32> = u_xlat8;
      let x_2225 : vec4<f32> = u_xlat8;
      let x_2227 : vec3<f32> = (vec3<f32>(x_2223.x, x_2223.y, x_2223.z) / vec3<f32>(x_2225.w, x_2225.w, x_2225.w));
      let x_2228 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2227.x, x_2227.y, x_2227.z, x_2228.w);
      let x_2231 : i32 = u_xlati29;
      let x_2233 : f32 = x_210.x_AdditionalShadowParams[x_2231].y;
      u_xlatb75 = (0.0f < x_2233);
      let x_2235 : bool = u_xlatb75;
      if (x_2235) {
        let x_2238 : i32 = u_xlati29;
        let x_2240 : f32 = x_210.x_AdditionalShadowParams[x_2238].y;
        u_xlatb75 = (1.0f == x_2240);
        let x_2242 : bool = u_xlatb75;
        if (x_2242) {
          let x_2245 : vec4<f32> = u_xlat8;
          let x_2248 : vec4<f32> = x_210.x_AdditionalShadowOffset0;
          u_xlat9 = (vec4<f32>(x_2245.x, x_2245.y, x_2245.x, x_2245.y) + x_2248);
          let x_2251 : vec4<f32> = u_xlat9;
          let x_2252 : vec2<f32> = vec2<f32>(x_2251.x, x_2251.y);
          let x_2254 : f32 = u_xlat8.z;
          txVec30 = vec3<f32>(x_2252.x, x_2252.y, x_2254);
          let x_2262 : vec3<f32> = txVec30;
          let x_2264 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2262.xy, x_2262.z);
          u_xlat10.x = x_2264;
          let x_2267 : vec4<f32> = u_xlat9;
          let x_2268 : vec2<f32> = vec2<f32>(x_2267.z, x_2267.w);
          let x_2270 : f32 = u_xlat8.z;
          txVec31 = vec3<f32>(x_2268.x, x_2268.y, x_2270);
          let x_2277 : vec3<f32> = txVec31;
          let x_2279 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2277.xy, x_2277.z);
          u_xlat10.y = x_2279;
          let x_2281 : vec4<f32> = u_xlat8;
          let x_2285 : vec4<f32> = x_210.x_AdditionalShadowOffset1;
          u_xlat9 = (vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.y) + x_2285);
          let x_2288 : vec4<f32> = u_xlat9;
          let x_2289 : vec2<f32> = vec2<f32>(x_2288.x, x_2288.y);
          let x_2291 : f32 = u_xlat8.z;
          txVec32 = vec3<f32>(x_2289.x, x_2289.y, x_2291);
          let x_2298 : vec3<f32> = txVec32;
          let x_2300 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2298.xy, x_2298.z);
          u_xlat10.z = x_2300;
          let x_2303 : vec4<f32> = u_xlat9;
          let x_2304 : vec2<f32> = vec2<f32>(x_2303.z, x_2303.w);
          let x_2306 : f32 = u_xlat8.z;
          txVec33 = vec3<f32>(x_2304.x, x_2304.y, x_2306);
          let x_2313 : vec3<f32> = txVec33;
          let x_2315 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2313.xy, x_2313.z);
          u_xlat10.w = x_2315;
          let x_2317 : vec4<f32> = u_xlat10;
          u_xlat75 = dot(x_2317, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2320 : i32 = u_xlati29;
          let x_2322 : f32 = x_210.x_AdditionalShadowParams[x_2320].y;
          u_xlatb76 = (2.0f == x_2322);
          let x_2324 : bool = u_xlatb76;
          if (x_2324) {
            let x_2327 : vec4<f32> = u_xlat8;
            let x_2331 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2334 : vec2<f32> = ((vec2<f32>(x_2327.x, x_2327.y) * vec2<f32>(x_2331.z, x_2331.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2335 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2334.x, x_2334.y, x_2335.z, x_2335.w);
            let x_2337 : vec4<f32> = u_xlat9;
            let x_2339 : vec2<f32> = floor(vec2<f32>(x_2337.x, x_2337.y));
            let x_2340 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2339.x, x_2339.y, x_2340.z, x_2340.w);
            let x_2343 : vec4<f32> = u_xlat8;
            let x_2346 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2349 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2343.x, x_2343.y) * vec2<f32>(x_2346.z, x_2346.w)) + -(vec2<f32>(x_2349.x, x_2349.y)));
            let x_2353 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2353.x, x_2353.x, x_2353.y, x_2353.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2356 : vec4<f32> = u_xlat10;
            let x_2358 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2356.x, x_2356.x, x_2356.z, x_2356.z) * vec4<f32>(x_2358.x, x_2358.x, x_2358.z, x_2358.z));
            let x_2361 : vec4<f32> = u_xlat11;
            let x_2363 : vec2<f32> = (vec2<f32>(x_2361.y, x_2361.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2364 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2363.x, x_2364.y, x_2363.y, x_2364.w);
            let x_2366 : vec4<f32> = u_xlat11;
            let x_2369 : vec2<f32> = u_xlat55;
            let x_2371 : vec2<f32> = ((vec2<f32>(x_2366.x, x_2366.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2369));
            let x_2372 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
            let x_2375 : vec2<f32> = u_xlat55;
            u_xlat57 = (-(x_2375) + vec2<f32>(1.0f, 1.0f));
            let x_2378 : vec2<f32> = u_xlat55;
            let x_2379 : vec2<f32> = min(x_2378, vec2<f32>(0.0f, 0.0f));
            let x_2380 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2379.x, x_2379.y, x_2380.z, x_2380.w);
            let x_2382 : vec4<f32> = u_xlat12;
            let x_2385 : vec4<f32> = u_xlat12;
            let x_2388 : vec2<f32> = u_xlat57;
            let x_2389 : vec2<f32> = ((-(vec2<f32>(x_2382.x, x_2382.y)) * vec2<f32>(x_2385.x, x_2385.y)) + x_2388);
            let x_2390 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2389.x, x_2389.y, x_2390.z, x_2390.w);
            let x_2392 : vec2<f32> = u_xlat55;
            u_xlat55 = max(x_2392, vec2<f32>(0.0f, 0.0f));
            let x_2394 : vec2<f32> = u_xlat55;
            let x_2396 : vec2<f32> = u_xlat55;
            let x_2398 : vec4<f32> = u_xlat10;
            u_xlat55 = ((-(x_2394) * x_2396) + vec2<f32>(x_2398.y, x_2398.w));
            let x_2401 : vec4<f32> = u_xlat12;
            let x_2403 : vec2<f32> = (vec2<f32>(x_2401.x, x_2401.y) + vec2<f32>(1.0f, 1.0f));
            let x_2404 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2403.x, x_2403.y, x_2404.z, x_2404.w);
            let x_2406 : vec2<f32> = u_xlat55;
            u_xlat55 = (x_2406 + vec2<f32>(1.0f, 1.0f));
            let x_2408 : vec4<f32> = u_xlat11;
            let x_2410 : vec2<f32> = (vec2<f32>(x_2408.x, x_2408.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2411 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2410.x, x_2410.y, x_2411.z, x_2411.w);
            let x_2413 : vec2<f32> = u_xlat57;
            let x_2414 : vec2<f32> = (x_2413 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2415 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2414.x, x_2414.y, x_2415.z, x_2415.w);
            let x_2417 : vec4<f32> = u_xlat12;
            let x_2419 : vec2<f32> = (vec2<f32>(x_2417.x, x_2417.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2420 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2419.x, x_2419.y, x_2420.z, x_2420.w);
            let x_2422 : vec2<f32> = u_xlat55;
            let x_2423 : vec2<f32> = (x_2422 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2424 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2423.x, x_2423.y, x_2424.z, x_2424.w);
            let x_2426 : vec4<f32> = u_xlat10;
            u_xlat55 = (vec2<f32>(x_2426.y, x_2426.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2430 : f32 = u_xlat12.x;
            u_xlat13.z = x_2430;
            let x_2433 : f32 = u_xlat55.x;
            u_xlat13.w = x_2433;
            let x_2436 : f32 = u_xlat14.x;
            u_xlat11.z = x_2436;
            let x_2439 : f32 = u_xlat10.x;
            u_xlat11.w = x_2439;
            let x_2441 : vec4<f32> = u_xlat11;
            let x_2443 : vec4<f32> = u_xlat13;
            u_xlat15 = (vec4<f32>(x_2441.z, x_2441.w, x_2441.x, x_2441.z) + vec4<f32>(x_2443.z, x_2443.w, x_2443.x, x_2443.z));
            let x_2447 : f32 = u_xlat13.y;
            u_xlat12.z = x_2447;
            let x_2450 : f32 = u_xlat55.y;
            u_xlat12.w = x_2450;
            let x_2453 : f32 = u_xlat11.y;
            u_xlat14.z = x_2453;
            let x_2456 : f32 = u_xlat10.z;
            u_xlat14.w = x_2456;
            let x_2458 : vec4<f32> = u_xlat12;
            let x_2460 : vec4<f32> = u_xlat14;
            let x_2462 : vec3<f32> = (vec3<f32>(x_2458.z, x_2458.y, x_2458.w) + vec3<f32>(x_2460.z, x_2460.y, x_2460.w));
            let x_2463 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2462.x, x_2462.y, x_2462.z, x_2463.w);
            let x_2465 : vec4<f32> = u_xlat11;
            let x_2467 : vec4<f32> = u_xlat15;
            let x_2469 : vec3<f32> = (vec3<f32>(x_2465.x, x_2465.z, x_2465.w) / vec3<f32>(x_2467.z, x_2467.w, x_2467.y));
            let x_2470 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2469.x, x_2469.y, x_2469.z, x_2470.w);
            let x_2472 : vec4<f32> = u_xlat11;
            let x_2474 : vec3<f32> = (vec3<f32>(x_2472.x, x_2472.y, x_2472.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2475 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
            let x_2477 : vec4<f32> = u_xlat14;
            let x_2479 : vec4<f32> = u_xlat10;
            let x_2481 : vec3<f32> = (vec3<f32>(x_2477.z, x_2477.y, x_2477.w) / vec3<f32>(x_2479.x, x_2479.y, x_2479.z));
            let x_2482 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2481.x, x_2481.y, x_2481.z, x_2482.w);
            let x_2484 : vec4<f32> = u_xlat12;
            let x_2486 : vec3<f32> = (vec3<f32>(x_2484.x, x_2484.y, x_2484.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2487 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2487.w);
            let x_2489 : vec4<f32> = u_xlat11;
            let x_2492 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2494 : vec3<f32> = (vec3<f32>(x_2489.y, x_2489.x, x_2489.z) * vec3<f32>(x_2492.x, x_2492.x, x_2492.x));
            let x_2495 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2494.x, x_2494.y, x_2494.z, x_2495.w);
            let x_2497 : vec4<f32> = u_xlat12;
            let x_2500 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2502 : vec3<f32> = (vec3<f32>(x_2497.x, x_2497.y, x_2497.z) * vec3<f32>(x_2500.y, x_2500.y, x_2500.y));
            let x_2503 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2502.x, x_2502.y, x_2502.z, x_2503.w);
            let x_2506 : f32 = u_xlat12.x;
            u_xlat11.w = x_2506;
            let x_2508 : vec4<f32> = u_xlat9;
            let x_2511 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2514 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2508.x, x_2508.y, x_2508.x, x_2508.y) * vec4<f32>(x_2511.x, x_2511.y, x_2511.x, x_2511.y)) + vec4<f32>(x_2514.y, x_2514.w, x_2514.x, x_2514.w));
            let x_2517 : vec4<f32> = u_xlat9;
            let x_2520 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2523 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(x_2520.x, x_2520.y)) + vec2<f32>(x_2523.z, x_2523.w));
            let x_2527 : f32 = u_xlat11.y;
            u_xlat12.w = x_2527;
            let x_2529 : vec4<f32> = u_xlat12;
            let x_2530 : vec2<f32> = vec2<f32>(x_2529.y, x_2529.z);
            let x_2531 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2531.x, x_2530.x, x_2531.z, x_2530.y);
            let x_2533 : vec4<f32> = u_xlat9;
            let x_2536 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2539 : vec4<f32> = u_xlat11;
            u_xlat14 = ((vec4<f32>(x_2533.x, x_2533.y, x_2533.x, x_2533.y) * vec4<f32>(x_2536.x, x_2536.y, x_2536.x, x_2536.y)) + vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2539.y));
            let x_2542 : vec4<f32> = u_xlat9;
            let x_2545 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2548 : vec4<f32> = u_xlat12;
            u_xlat12 = ((vec4<f32>(x_2542.x, x_2542.y, x_2542.x, x_2542.y) * vec4<f32>(x_2545.x, x_2545.y, x_2545.x, x_2545.y)) + vec4<f32>(x_2548.w, x_2548.y, x_2548.w, x_2548.z));
            let x_2551 : vec4<f32> = u_xlat9;
            let x_2554 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2557 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2551.x, x_2551.y, x_2551.x, x_2551.y) * vec4<f32>(x_2554.x, x_2554.y, x_2554.x, x_2554.y)) + vec4<f32>(x_2557.x, x_2557.w, x_2557.z, x_2557.w));
            let x_2560 : vec4<f32> = u_xlat10;
            let x_2562 : vec4<f32> = u_xlat15;
            u_xlat16 = (vec4<f32>(x_2560.x, x_2560.x, x_2560.x, x_2560.y) * vec4<f32>(x_2562.z, x_2562.w, x_2562.y, x_2562.z));
            let x_2565 : vec4<f32> = u_xlat10;
            let x_2567 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2565.y, x_2565.y, x_2565.z, x_2565.z) * x_2567);
            let x_2570 : f32 = u_xlat10.z;
            let x_2572 : f32 = u_xlat15.y;
            u_xlat76 = (x_2570 * x_2572);
            let x_2575 : vec4<f32> = u_xlat13;
            let x_2576 : vec2<f32> = vec2<f32>(x_2575.x, x_2575.y);
            let x_2578 : f32 = u_xlat8.z;
            txVec34 = vec3<f32>(x_2576.x, x_2576.y, x_2578);
            let x_2585 : vec3<f32> = txVec34;
            let x_2587 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2585.xy, x_2585.z);
            u_xlat77 = x_2587;
            let x_2589 : vec4<f32> = u_xlat13;
            let x_2590 : vec2<f32> = vec2<f32>(x_2589.z, x_2589.w);
            let x_2592 : f32 = u_xlat8.z;
            txVec35 = vec3<f32>(x_2590.x, x_2590.y, x_2592);
            let x_2599 : vec3<f32> = txVec35;
            let x_2601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2599.xy, x_2599.z);
            u_xlat9.x = x_2601;
            let x_2604 : f32 = u_xlat9.x;
            let x_2606 : f32 = u_xlat16.y;
            u_xlat9.x = (x_2604 * x_2606);
            let x_2610 : f32 = u_xlat16.x;
            let x_2611 : f32 = u_xlat77;
            let x_2614 : f32 = u_xlat9.x;
            u_xlat77 = ((x_2610 * x_2611) + x_2614);
            let x_2617 : vec2<f32> = u_xlat55;
            let x_2619 : f32 = u_xlat8.z;
            txVec36 = vec3<f32>(x_2617.x, x_2617.y, x_2619);
            let x_2626 : vec3<f32> = txVec36;
            let x_2628 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2626.xy, x_2626.z);
            u_xlat9.x = x_2628;
            let x_2631 : f32 = u_xlat16.z;
            let x_2633 : f32 = u_xlat9.x;
            let x_2635 : f32 = u_xlat77;
            u_xlat77 = ((x_2631 * x_2633) + x_2635);
            let x_2638 : vec4<f32> = u_xlat12;
            let x_2639 : vec2<f32> = vec2<f32>(x_2638.x, x_2638.y);
            let x_2641 : f32 = u_xlat8.z;
            txVec37 = vec3<f32>(x_2639.x, x_2639.y, x_2641);
            let x_2648 : vec3<f32> = txVec37;
            let x_2650 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2648.xy, x_2648.z);
            u_xlat9.x = x_2650;
            let x_2653 : f32 = u_xlat16.w;
            let x_2655 : f32 = u_xlat9.x;
            let x_2657 : f32 = u_xlat77;
            u_xlat77 = ((x_2653 * x_2655) + x_2657);
            let x_2660 : vec4<f32> = u_xlat14;
            let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
            let x_2663 : f32 = u_xlat8.z;
            txVec38 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
            let x_2670 : vec3<f32> = txVec38;
            let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
            u_xlat9.x = x_2672;
            let x_2675 : f32 = u_xlat17.x;
            let x_2677 : f32 = u_xlat9.x;
            let x_2679 : f32 = u_xlat77;
            u_xlat77 = ((x_2675 * x_2677) + x_2679);
            let x_2682 : vec4<f32> = u_xlat14;
            let x_2683 : vec2<f32> = vec2<f32>(x_2682.z, x_2682.w);
            let x_2685 : f32 = u_xlat8.z;
            txVec39 = vec3<f32>(x_2683.x, x_2683.y, x_2685);
            let x_2692 : vec3<f32> = txVec39;
            let x_2694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2692.xy, x_2692.z);
            u_xlat9.x = x_2694;
            let x_2697 : f32 = u_xlat17.y;
            let x_2699 : f32 = u_xlat9.x;
            let x_2701 : f32 = u_xlat77;
            u_xlat77 = ((x_2697 * x_2699) + x_2701);
            let x_2704 : vec4<f32> = u_xlat12;
            let x_2705 : vec2<f32> = vec2<f32>(x_2704.z, x_2704.w);
            let x_2707 : f32 = u_xlat8.z;
            txVec40 = vec3<f32>(x_2705.x, x_2705.y, x_2707);
            let x_2714 : vec3<f32> = txVec40;
            let x_2716 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2714.xy, x_2714.z);
            u_xlat9.x = x_2716;
            let x_2719 : f32 = u_xlat17.z;
            let x_2721 : f32 = u_xlat9.x;
            let x_2723 : f32 = u_xlat77;
            u_xlat77 = ((x_2719 * x_2721) + x_2723);
            let x_2726 : vec4<f32> = u_xlat11;
            let x_2727 : vec2<f32> = vec2<f32>(x_2726.x, x_2726.y);
            let x_2729 : f32 = u_xlat8.z;
            txVec41 = vec3<f32>(x_2727.x, x_2727.y, x_2729);
            let x_2736 : vec3<f32> = txVec41;
            let x_2738 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2736.xy, x_2736.z);
            u_xlat9.x = x_2738;
            let x_2741 : f32 = u_xlat17.w;
            let x_2743 : f32 = u_xlat9.x;
            let x_2745 : f32 = u_xlat77;
            u_xlat77 = ((x_2741 * x_2743) + x_2745);
            let x_2748 : vec4<f32> = u_xlat11;
            let x_2749 : vec2<f32> = vec2<f32>(x_2748.z, x_2748.w);
            let x_2751 : f32 = u_xlat8.z;
            txVec42 = vec3<f32>(x_2749.x, x_2749.y, x_2751);
            let x_2758 : vec3<f32> = txVec42;
            let x_2760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2758.xy, x_2758.z);
            u_xlat9.x = x_2760;
            let x_2762 : f32 = u_xlat76;
            let x_2764 : f32 = u_xlat9.x;
            let x_2766 : f32 = u_xlat77;
            u_xlat75 = ((x_2762 * x_2764) + x_2766);
          } else {
            let x_2769 : vec4<f32> = u_xlat8;
            let x_2772 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2775 : vec2<f32> = ((vec2<f32>(x_2769.x, x_2769.y) * vec2<f32>(x_2772.z, x_2772.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2776 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2775.x, x_2775.y, x_2776.z, x_2776.w);
            let x_2778 : vec4<f32> = u_xlat9;
            let x_2780 : vec2<f32> = floor(vec2<f32>(x_2778.x, x_2778.y));
            let x_2781 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2780.x, x_2780.y, x_2781.z, x_2781.w);
            let x_2783 : vec4<f32> = u_xlat8;
            let x_2786 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2789 : vec4<f32> = u_xlat9;
            u_xlat55 = ((vec2<f32>(x_2783.x, x_2783.y) * vec2<f32>(x_2786.z, x_2786.w)) + -(vec2<f32>(x_2789.x, x_2789.y)));
            let x_2793 : vec2<f32> = u_xlat55;
            u_xlat10 = (vec4<f32>(x_2793.x, x_2793.x, x_2793.y, x_2793.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2796 : vec4<f32> = u_xlat10;
            let x_2798 : vec4<f32> = u_xlat10;
            u_xlat11 = (vec4<f32>(x_2796.x, x_2796.x, x_2796.z, x_2796.z) * vec4<f32>(x_2798.x, x_2798.x, x_2798.z, x_2798.z));
            let x_2801 : vec4<f32> = u_xlat11;
            let x_2803 : vec2<f32> = (vec2<f32>(x_2801.y, x_2801.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2804 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2804.x, x_2803.x, x_2804.z, x_2803.y);
            let x_2806 : vec4<f32> = u_xlat11;
            let x_2809 : vec2<f32> = u_xlat55;
            let x_2811 : vec2<f32> = ((vec2<f32>(x_2806.x, x_2806.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2809));
            let x_2812 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2811.x, x_2812.y, x_2811.y, x_2812.w);
            let x_2814 : vec2<f32> = u_xlat55;
            let x_2816 : vec2<f32> = (-(x_2814) + vec2<f32>(1.0f, 1.0f));
            let x_2817 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2816.x, x_2816.y, x_2817.z, x_2817.w);
            let x_2819 : vec2<f32> = u_xlat55;
            u_xlat57 = min(x_2819, vec2<f32>(0.0f, 0.0f));
            let x_2821 : vec2<f32> = u_xlat57;
            let x_2823 : vec2<f32> = u_xlat57;
            let x_2825 : vec4<f32> = u_xlat11;
            let x_2827 : vec2<f32> = ((-(x_2821) * x_2823) + vec2<f32>(x_2825.x, x_2825.y));
            let x_2828 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2827.x, x_2827.y, x_2828.z, x_2828.w);
            let x_2830 : vec2<f32> = u_xlat55;
            u_xlat57 = max(x_2830, vec2<f32>(0.0f, 0.0f));
            let x_2833 : vec2<f32> = u_xlat57;
            let x_2835 : vec2<f32> = u_xlat57;
            let x_2837 : vec4<f32> = u_xlat10;
            let x_2839 : vec2<f32> = ((-(x_2833) * x_2835) + vec2<f32>(x_2837.y, x_2837.w));
            let x_2840 : vec3<f32> = u_xlat33;
            u_xlat33 = vec3<f32>(x_2839.x, x_2840.y, x_2839.y);
            let x_2842 : vec4<f32> = u_xlat11;
            let x_2844 : vec2<f32> = (vec2<f32>(x_2842.x, x_2842.y) + vec2<f32>(2.0f, 2.0f));
            let x_2845 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2844.x, x_2844.y, x_2845.z, x_2845.w);
            let x_2847 : vec3<f32> = u_xlat33;
            let x_2849 : vec2<f32> = (vec2<f32>(x_2847.x, x_2847.z) + vec2<f32>(2.0f, 2.0f));
            let x_2850 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2850.x, x_2849.x, x_2850.z, x_2849.y);
            let x_2853 : f32 = u_xlat10.y;
            u_xlat13.z = (x_2853 * 0.08163200318813323975f);
            let x_2856 : vec4<f32> = u_xlat10;
            let x_2858 : vec3<f32> = (vec3<f32>(x_2856.z, x_2856.x, x_2856.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2859 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
            let x_2861 : vec4<f32> = u_xlat11;
            let x_2863 : vec2<f32> = (vec2<f32>(x_2861.x, x_2861.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2864 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2863.x, x_2863.y, x_2864.z, x_2864.w);
            let x_2867 : f32 = u_xlat14.y;
            u_xlat13.x = x_2867;
            let x_2869 : vec2<f32> = u_xlat55;
            let x_2872 : vec2<f32> = ((vec2<f32>(x_2869.x, x_2869.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2873 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2873.x, x_2872.x, x_2873.z, x_2872.y);
            let x_2875 : vec2<f32> = u_xlat55;
            let x_2878 : vec2<f32> = ((vec2<f32>(x_2875.x, x_2875.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2879 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2878.x, x_2879.y, x_2878.y, x_2879.w);
            let x_2882 : f32 = u_xlat10.x;
            u_xlat11.y = x_2882;
            let x_2885 : f32 = u_xlat12.y;
            u_xlat11.w = x_2885;
            let x_2887 : vec4<f32> = u_xlat11;
            let x_2888 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_2887 + x_2888);
            let x_2890 : vec2<f32> = u_xlat55;
            let x_2893 : vec2<f32> = ((vec2<f32>(x_2890.y, x_2890.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2894 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2894.x, x_2893.x, x_2894.z, x_2893.y);
            let x_2896 : vec2<f32> = u_xlat55;
            let x_2899 : vec2<f32> = ((vec2<f32>(x_2896.y, x_2896.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2900 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2899.x, x_2900.y, x_2899.y, x_2900.w);
            let x_2903 : f32 = u_xlat10.y;
            u_xlat12.y = x_2903;
            let x_2905 : vec4<f32> = u_xlat12;
            let x_2906 : vec4<f32> = u_xlat14;
            u_xlat10 = (x_2905 + x_2906);
            let x_2908 : vec4<f32> = u_xlat11;
            let x_2909 : vec4<f32> = u_xlat13;
            u_xlat11 = (x_2908 / x_2909);
            let x_2911 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2911 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2913 : vec4<f32> = u_xlat12;
            let x_2914 : vec4<f32> = u_xlat10;
            u_xlat12 = (x_2913 / x_2914);
            let x_2916 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2916 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2918 : vec4<f32> = u_xlat11;
            let x_2921 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2918.w, x_2918.x, x_2918.y, x_2918.z) * vec4<f32>(x_2921.x, x_2921.x, x_2921.x, x_2921.x));
            let x_2924 : vec4<f32> = u_xlat12;
            let x_2927 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            u_xlat12 = (vec4<f32>(x_2924.x, x_2924.w, x_2924.y, x_2924.z) * vec4<f32>(x_2927.y, x_2927.y, x_2927.y, x_2927.y));
            let x_2930 : vec4<f32> = u_xlat11;
            let x_2931 : vec3<f32> = vec3<f32>(x_2930.y, x_2930.z, x_2930.w);
            let x_2932 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2931.x, x_2932.y, x_2931.y, x_2931.z);
            let x_2935 : f32 = u_xlat12.x;
            u_xlat14.y = x_2935;
            let x_2937 : vec4<f32> = u_xlat9;
            let x_2940 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat14;
            u_xlat15 = ((vec4<f32>(x_2937.x, x_2937.y, x_2937.x, x_2937.y) * vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y)) + vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2943.y));
            let x_2946 : vec4<f32> = u_xlat9;
            let x_2949 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat14;
            u_xlat55 = ((vec2<f32>(x_2946.x, x_2946.y) * vec2<f32>(x_2949.x, x_2949.y)) + vec2<f32>(x_2952.w, x_2952.y));
            let x_2956 : f32 = u_xlat14.y;
            u_xlat11.y = x_2956;
            let x_2959 : f32 = u_xlat12.z;
            u_xlat14.y = x_2959;
            let x_2961 : vec4<f32> = u_xlat9;
            let x_2964 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2967 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y) * vec4<f32>(x_2964.x, x_2964.y, x_2964.x, x_2964.y)) + vec4<f32>(x_2967.x, x_2967.y, x_2967.z, x_2967.y));
            let x_2970 : vec4<f32> = u_xlat9;
            let x_2973 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2976 : vec4<f32> = u_xlat14;
            let x_2978 : vec2<f32> = ((vec2<f32>(x_2970.x, x_2970.y) * vec2<f32>(x_2973.x, x_2973.y)) + vec2<f32>(x_2976.w, x_2976.y));
            let x_2979 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2978.x, x_2978.y, x_2979.z, x_2979.w);
            let x_2982 : f32 = u_xlat14.y;
            u_xlat11.z = x_2982;
            let x_2984 : vec4<f32> = u_xlat9;
            let x_2987 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_2990 : vec4<f32> = u_xlat11;
            u_xlat18 = ((vec4<f32>(x_2984.x, x_2984.y, x_2984.x, x_2984.y) * vec4<f32>(x_2987.x, x_2987.y, x_2987.x, x_2987.y)) + vec4<f32>(x_2990.x, x_2990.y, x_2990.x, x_2990.z));
            let x_2994 : f32 = u_xlat12.w;
            u_xlat14.y = x_2994;
            let x_2997 : vec4<f32> = u_xlat9;
            let x_3000 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_3003 : vec4<f32> = u_xlat14;
            u_xlat19 = ((vec4<f32>(x_2997.x, x_2997.y, x_2997.x, x_2997.y) * vec4<f32>(x_3000.x, x_3000.y, x_3000.x, x_3000.y)) + vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3003.y));
            let x_3007 : vec4<f32> = u_xlat9;
            let x_3010 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_3013 : vec4<f32> = u_xlat14;
            u_xlat34 = ((vec2<f32>(x_3007.x, x_3007.y) * vec2<f32>(x_3010.x, x_3010.y)) + vec2<f32>(x_3013.w, x_3013.y));
            let x_3017 : f32 = u_xlat14.y;
            u_xlat11.w = x_3017;
            let x_3020 : vec4<f32> = u_xlat9;
            let x_3023 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_3026 : vec4<f32> = u_xlat11;
            u_xlat63 = ((vec2<f32>(x_3020.x, x_3020.y) * vec2<f32>(x_3023.x, x_3023.y)) + vec2<f32>(x_3026.x, x_3026.w));
            let x_3029 : vec4<f32> = u_xlat14;
            let x_3030 : vec3<f32> = vec3<f32>(x_3029.x, x_3029.z, x_3029.w);
            let x_3031 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3030.x, x_3031.y, x_3030.y, x_3030.z);
            let x_3033 : vec4<f32> = u_xlat9;
            let x_3036 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_3039 : vec4<f32> = u_xlat12;
            u_xlat14 = ((vec4<f32>(x_3033.x, x_3033.y, x_3033.x, x_3033.y) * vec4<f32>(x_3036.x, x_3036.y, x_3036.x, x_3036.y)) + vec4<f32>(x_3039.x, x_3039.y, x_3039.z, x_3039.y));
            let x_3043 : vec4<f32> = u_xlat9;
            let x_3046 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_3049 : vec4<f32> = u_xlat12;
            u_xlat58 = ((vec2<f32>(x_3043.x, x_3043.y) * vec2<f32>(x_3046.x, x_3046.y)) + vec2<f32>(x_3049.w, x_3049.y));
            let x_3053 : f32 = u_xlat11.x;
            u_xlat12.x = x_3053;
            let x_3055 : vec4<f32> = u_xlat9;
            let x_3058 : vec4<f32> = x_210.x_AdditionalShadowmapSize;
            let x_3061 : vec4<f32> = u_xlat12;
            let x_3063 : vec2<f32> = ((vec2<f32>(x_3055.x, x_3055.y) * vec2<f32>(x_3058.x, x_3058.y)) + vec2<f32>(x_3061.x, x_3061.y));
            let x_3064 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_3063.x, x_3063.y, x_3064.z, x_3064.w);
            let x_3067 : vec4<f32> = u_xlat10;
            let x_3069 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3067.x, x_3067.x, x_3067.x, x_3067.x) * x_3069);
            let x_3072 : vec4<f32> = u_xlat10;
            let x_3074 : vec4<f32> = u_xlat13;
            u_xlat21 = (vec4<f32>(x_3072.y, x_3072.y, x_3072.y, x_3072.y) * x_3074);
            let x_3077 : vec4<f32> = u_xlat10;
            let x_3079 : vec4<f32> = u_xlat13;
            u_xlat22 = (vec4<f32>(x_3077.z, x_3077.z, x_3077.z, x_3077.z) * x_3079);
            let x_3081 : vec4<f32> = u_xlat10;
            let x_3083 : vec4<f32> = u_xlat13;
            u_xlat10 = (vec4<f32>(x_3081.w, x_3081.w, x_3081.w, x_3081.w) * x_3083);
            let x_3086 : vec4<f32> = u_xlat15;
            let x_3087 : vec2<f32> = vec2<f32>(x_3086.x, x_3086.y);
            let x_3089 : f32 = u_xlat8.z;
            txVec43 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
            let x_3096 : vec3<f32> = txVec43;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat76 = x_3098;
            let x_3100 : vec4<f32> = u_xlat15;
            let x_3101 : vec2<f32> = vec2<f32>(x_3100.z, x_3100.w);
            let x_3103 : f32 = u_xlat8.z;
            txVec44 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
            let x_3110 : vec3<f32> = txVec44;
            let x_3112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
            u_xlat77 = x_3112;
            let x_3113 : f32 = u_xlat77;
            let x_3115 : f32 = u_xlat20.y;
            u_xlat77 = (x_3113 * x_3115);
            let x_3118 : f32 = u_xlat20.x;
            let x_3119 : f32 = u_xlat76;
            let x_3121 : f32 = u_xlat77;
            u_xlat76 = ((x_3118 * x_3119) + x_3121);
            let x_3124 : vec2<f32> = u_xlat55;
            let x_3126 : f32 = u_xlat8.z;
            txVec45 = vec3<f32>(x_3124.x, x_3124.y, x_3126);
            let x_3133 : vec3<f32> = txVec45;
            let x_3135 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3133.xy, x_3133.z);
            u_xlat77 = x_3135;
            let x_3137 : f32 = u_xlat20.z;
            let x_3138 : f32 = u_xlat77;
            let x_3140 : f32 = u_xlat76;
            u_xlat76 = ((x_3137 * x_3138) + x_3140);
            let x_3143 : vec4<f32> = u_xlat18;
            let x_3144 : vec2<f32> = vec2<f32>(x_3143.x, x_3143.y);
            let x_3146 : f32 = u_xlat8.z;
            txVec46 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec46;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat77 = x_3155;
            let x_3157 : f32 = u_xlat20.w;
            let x_3158 : f32 = u_xlat77;
            let x_3160 : f32 = u_xlat76;
            u_xlat76 = ((x_3157 * x_3158) + x_3160);
            let x_3163 : vec4<f32> = u_xlat16;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.x, x_3163.y);
            let x_3166 : f32 = u_xlat8.z;
            txVec47 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec47;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat77 = x_3175;
            let x_3177 : f32 = u_xlat21.x;
            let x_3178 : f32 = u_xlat77;
            let x_3180 : f32 = u_xlat76;
            u_xlat76 = ((x_3177 * x_3178) + x_3180);
            let x_3183 : vec4<f32> = u_xlat16;
            let x_3184 : vec2<f32> = vec2<f32>(x_3183.z, x_3183.w);
            let x_3186 : f32 = u_xlat8.z;
            txVec48 = vec3<f32>(x_3184.x, x_3184.y, x_3186);
            let x_3193 : vec3<f32> = txVec48;
            let x_3195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3193.xy, x_3193.z);
            u_xlat77 = x_3195;
            let x_3197 : f32 = u_xlat21.y;
            let x_3198 : f32 = u_xlat77;
            let x_3200 : f32 = u_xlat76;
            u_xlat76 = ((x_3197 * x_3198) + x_3200);
            let x_3203 : vec4<f32> = u_xlat17;
            let x_3204 : vec2<f32> = vec2<f32>(x_3203.x, x_3203.y);
            let x_3206 : f32 = u_xlat8.z;
            txVec49 = vec3<f32>(x_3204.x, x_3204.y, x_3206);
            let x_3213 : vec3<f32> = txVec49;
            let x_3215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3213.xy, x_3213.z);
            u_xlat77 = x_3215;
            let x_3217 : f32 = u_xlat21.z;
            let x_3218 : f32 = u_xlat77;
            let x_3220 : f32 = u_xlat76;
            u_xlat76 = ((x_3217 * x_3218) + x_3220);
            let x_3223 : vec4<f32> = u_xlat18;
            let x_3224 : vec2<f32> = vec2<f32>(x_3223.z, x_3223.w);
            let x_3226 : f32 = u_xlat8.z;
            txVec50 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
            let x_3233 : vec3<f32> = txVec50;
            let x_3235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
            u_xlat77 = x_3235;
            let x_3237 : f32 = u_xlat21.w;
            let x_3238 : f32 = u_xlat77;
            let x_3240 : f32 = u_xlat76;
            u_xlat76 = ((x_3237 * x_3238) + x_3240);
            let x_3243 : vec4<f32> = u_xlat19;
            let x_3244 : vec2<f32> = vec2<f32>(x_3243.x, x_3243.y);
            let x_3246 : f32 = u_xlat8.z;
            txVec51 = vec3<f32>(x_3244.x, x_3244.y, x_3246);
            let x_3253 : vec3<f32> = txVec51;
            let x_3255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3253.xy, x_3253.z);
            u_xlat77 = x_3255;
            let x_3257 : f32 = u_xlat22.x;
            let x_3258 : f32 = u_xlat77;
            let x_3260 : f32 = u_xlat76;
            u_xlat76 = ((x_3257 * x_3258) + x_3260);
            let x_3263 : vec4<f32> = u_xlat19;
            let x_3264 : vec2<f32> = vec2<f32>(x_3263.z, x_3263.w);
            let x_3266 : f32 = u_xlat8.z;
            txVec52 = vec3<f32>(x_3264.x, x_3264.y, x_3266);
            let x_3273 : vec3<f32> = txVec52;
            let x_3275 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3273.xy, x_3273.z);
            u_xlat77 = x_3275;
            let x_3277 : f32 = u_xlat22.y;
            let x_3278 : f32 = u_xlat77;
            let x_3280 : f32 = u_xlat76;
            u_xlat76 = ((x_3277 * x_3278) + x_3280);
            let x_3283 : vec2<f32> = u_xlat34;
            let x_3285 : f32 = u_xlat8.z;
            txVec53 = vec3<f32>(x_3283.x, x_3283.y, x_3285);
            let x_3292 : vec3<f32> = txVec53;
            let x_3294 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3292.xy, x_3292.z);
            u_xlat77 = x_3294;
            let x_3296 : f32 = u_xlat22.z;
            let x_3297 : f32 = u_xlat77;
            let x_3299 : f32 = u_xlat76;
            u_xlat76 = ((x_3296 * x_3297) + x_3299);
            let x_3302 : vec2<f32> = u_xlat63;
            let x_3304 : f32 = u_xlat8.z;
            txVec54 = vec3<f32>(x_3302.x, x_3302.y, x_3304);
            let x_3311 : vec3<f32> = txVec54;
            let x_3313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3311.xy, x_3311.z);
            u_xlat77 = x_3313;
            let x_3315 : f32 = u_xlat22.w;
            let x_3316 : f32 = u_xlat77;
            let x_3318 : f32 = u_xlat76;
            u_xlat76 = ((x_3315 * x_3316) + x_3318);
            let x_3321 : vec4<f32> = u_xlat14;
            let x_3322 : vec2<f32> = vec2<f32>(x_3321.x, x_3321.y);
            let x_3324 : f32 = u_xlat8.z;
            txVec55 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec55;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat77 = x_3333;
            let x_3335 : f32 = u_xlat10.x;
            let x_3336 : f32 = u_xlat77;
            let x_3338 : f32 = u_xlat76;
            u_xlat76 = ((x_3335 * x_3336) + x_3338);
            let x_3341 : vec4<f32> = u_xlat14;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.z, x_3341.w);
            let x_3344 : f32 = u_xlat8.z;
            txVec56 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
            let x_3351 : vec3<f32> = txVec56;
            let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
            u_xlat77 = x_3353;
            let x_3355 : f32 = u_xlat10.y;
            let x_3356 : f32 = u_xlat77;
            let x_3358 : f32 = u_xlat76;
            u_xlat76 = ((x_3355 * x_3356) + x_3358);
            let x_3361 : vec2<f32> = u_xlat58;
            let x_3363 : f32 = u_xlat8.z;
            txVec57 = vec3<f32>(x_3361.x, x_3361.y, x_3363);
            let x_3370 : vec3<f32> = txVec57;
            let x_3372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3370.xy, x_3370.z);
            u_xlat77 = x_3372;
            let x_3374 : f32 = u_xlat10.z;
            let x_3375 : f32 = u_xlat77;
            let x_3377 : f32 = u_xlat76;
            u_xlat76 = ((x_3374 * x_3375) + x_3377);
            let x_3380 : vec4<f32> = u_xlat9;
            let x_3381 : vec2<f32> = vec2<f32>(x_3380.x, x_3380.y);
            let x_3383 : f32 = u_xlat8.z;
            txVec58 = vec3<f32>(x_3381.x, x_3381.y, x_3383);
            let x_3390 : vec3<f32> = txVec58;
            let x_3392 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3390.xy, x_3390.z);
            u_xlat77 = x_3392;
            let x_3394 : f32 = u_xlat10.w;
            let x_3395 : f32 = u_xlat77;
            let x_3397 : f32 = u_xlat76;
            u_xlat75 = ((x_3394 * x_3395) + x_3397);
          }
        }
      } else {
        let x_3401 : vec4<f32> = u_xlat8;
        let x_3402 : vec2<f32> = vec2<f32>(x_3401.x, x_3401.y);
        let x_3404 : f32 = u_xlat8.z;
        txVec59 = vec3<f32>(x_3402.x, x_3402.y, x_3404);
        let x_3411 : vec3<f32> = txVec59;
        let x_3413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3411.xy, x_3411.z);
        u_xlat75 = x_3413;
      }
      let x_3414 : i32 = u_xlati29;
      let x_3416 : f32 = x_210.x_AdditionalShadowParams[x_3414].x;
      u_xlat76 = (1.0f + -(x_3416));
      let x_3419 : f32 = u_xlat75;
      let x_3420 : i32 = u_xlati29;
      let x_3422 : f32 = x_210.x_AdditionalShadowParams[x_3420].x;
      let x_3424 : f32 = u_xlat76;
      u_xlat75 = ((x_3419 * x_3422) + x_3424);
      let x_3427 : f32 = u_xlat8.z;
      u_xlatb76 = (0.0f >= x_3427);
      let x_3430 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_3430 >= 1.0f);
      let x_3433 : bool = u_xlatb76;
      let x_3435 : bool = u_xlatb8.x;
      u_xlatb76 = (x_3433 | x_3435);
      let x_3437 : bool = u_xlatb76;
      let x_3438 : f32 = u_xlat75;
      u_xlat75 = select(x_3438, 1.0f, x_3437);
    } else {
      u_xlat75 = 1.0f;
    }
    let x_3441 : f32 = u_xlat75;
    u_xlat76 = (-(x_3441) + 1.0f);
    let x_3445 : f32 = u_xlat26.x;
    let x_3446 : f32 = u_xlat76;
    let x_3448 : f32 = u_xlat75;
    u_xlat75 = ((x_3445 * x_3446) + x_3448);
    let x_3450 : f32 = u_xlat75;
    let x_3451 : f32 = u_xlat52;
    u_xlat52 = (x_3450 * x_3451);
    let x_3453 : f32 = u_xlat52;
    let x_3455 : i32 = u_xlati29;
    let x_3457 : vec4<f32> = x_2009.x_AdditionalLightsColor[x_3455];
    u_xlat29 = (vec3<f32>(x_3453, x_3453, x_3453) * vec3<f32>(x_3457.x, x_3457.y, x_3457.z));
    let x_3460 : vec3<f32> = u_xlat2;
    let x_3461 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(x_3460, vec3<f32>(x_3461.x, x_3461.y, x_3461.z));
    let x_3464 : f32 = u_xlat76;
    u_xlat76 = clamp(x_3464, 0.0f, 1.0f);
    let x_3466 : vec3<f32> = u_xlat29;
    let x_3467 : f32 = u_xlat76;
    let x_3469 : vec3<f32> = (x_3466 * vec3<f32>(x_3467, x_3467, x_3467));
    let x_3470 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3469.x, x_3469.y, x_3469.z, x_3470.w);
    let x_3472 : vec3<f32> = u_xlat1;
    let x_3473 : f32 = u_xlat70;
    let x_3476 : vec4<f32> = u_xlat7;
    let x_3478 : vec3<f32> = ((x_3472 * vec3<f32>(x_3473, x_3473, x_3473)) + vec3<f32>(x_3476.x, x_3476.y, x_3476.z));
    let x_3479 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3478.x, x_3478.y, x_3478.z, x_3479.w);
    let x_3481 : vec4<f32> = u_xlat7;
    let x_3483 : vec4<f32> = u_xlat7;
    u_xlat76 = dot(vec3<f32>(x_3481.x, x_3481.y, x_3481.z), vec3<f32>(x_3483.x, x_3483.y, x_3483.z));
    let x_3486 : f32 = u_xlat76;
    u_xlat76 = max(x_3486, 1.17549435e-38f);
    let x_3488 : f32 = u_xlat76;
    u_xlat76 = inverseSqrt(x_3488);
    let x_3490 : f32 = u_xlat76;
    let x_3492 : vec4<f32> = u_xlat7;
    let x_3494 : vec3<f32> = (vec3<f32>(x_3490, x_3490, x_3490) * vec3<f32>(x_3492.x, x_3492.y, x_3492.z));
    let x_3495 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3494.x, x_3494.y, x_3494.z, x_3495.w);
    let x_3497 : vec3<f32> = u_xlat2;
    let x_3498 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_3497, vec3<f32>(x_3498.x, x_3498.y, x_3498.z));
    let x_3503 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_3503, 0.0f, 1.0f);
    let x_3507 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_3507);
    let x_3510 : f32 = u_xlat73;
    let x_3512 : f32 = u_xlat7.x;
    u_xlat7.x = (x_3510 * x_3512);
    let x_3516 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_3516);
    let x_3519 : vec4<f32> = u_xlat7;
    let x_3522 : vec4<f32> = x_57.x_SpecColor;
    let x_3524 : vec3<f32> = (vec3<f32>(x_3519.x, x_3519.x, x_3519.x) * vec3<f32>(x_3522.x, x_3522.y, x_3522.z));
    let x_3525 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3524.x, x_3524.y, x_3524.z, x_3525.w);
    let x_3527 : vec3<f32> = u_xlat29;
    let x_3528 : vec4<f32> = u_xlat7;
    u_xlat29 = (x_3527 * vec3<f32>(x_3528.x, x_3528.y, x_3528.z));
    let x_3531 : vec4<f32> = u_xlat8;
    let x_3533 : vec4<f32> = u_xlat0;
    let x_3536 : vec3<f32> = u_xlat29;
    u_xlat29 = ((vec3<f32>(x_3531.x, x_3531.y, x_3531.z) * vec3<f32>(x_3533.y, x_3533.z, x_3533.w)) + x_3536);
    let x_3538 : vec3<f32> = u_xlat28;
    let x_3539 : vec3<f32> = u_xlat29;
    u_xlat28 = (x_3538 + x_3539);

    continuing {
      let x_3541 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3541 + bitcast<u32>(1i));
    }
  }
  let x_3544 : vec4<f32> = u_xlat4;
  let x_3546 : vec4<f32> = u_xlat0;
  let x_3549 : vec4<f32> = u_xlat3;
  u_xlat23 = ((vec3<f32>(x_3544.x, x_3544.y, x_3544.z) * vec3<f32>(x_3546.y, x_3546.z, x_3546.w)) + vec3<f32>(x_3549.x, x_3549.z, x_3549.w));
  let x_3552 : vec3<f32> = u_xlat28;
  let x_3553 : vec3<f32> = u_xlat23;
  u_xlat23 = (x_3552 + x_3553);
  let x_3555 : f32 = u_xlat71;
  let x_3556 : f32 = u_xlat71;
  u_xlat1.x = (x_3555 * -(x_3556));
  let x_3561 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_3561);
  let x_3564 : vec3<f32> = u_xlat23;
  let x_3566 : vec4<f32> = x_45.unity_FogColor;
  u_xlat23 = (x_3564 + -(vec3<f32>(x_3566.x, x_3566.y, x_3566.z)));
  let x_3572 : vec3<f32> = u_xlat1;
  let x_3574 : vec3<f32> = u_xlat23;
  let x_3577 : vec4<f32> = x_45.unity_FogColor;
  let x_3579 : vec3<f32> = ((vec3<f32>(x_3572.x, x_3572.x, x_3572.x) * x_3574) + vec3<f32>(x_3577.x, x_3577.y, x_3577.z));
  let x_3580 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3579.x, x_3579.y, x_3579.z, x_3580.w);
  let x_3584 : f32 = x_57.x_Surface;
  u_xlatb23 = (x_3584 == 1.0f);
  let x_3586 : bool = u_xlatb23;
  if (x_3586) {
    let x_3591 : f32 = u_xlat0.x;
    x_3587 = x_3591;
  } else {
    x_3587 = 1.0f;
  }
  let x_3593 : f32 = x_3587;
  SV_Target0.w = x_3593;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


