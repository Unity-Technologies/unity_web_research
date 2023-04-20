diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(12) */
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat2 : f32;

@group(1) @binding(2) var<uniform> x_60 : UnityPerMaterial;

var<private> u_xlat4 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(1) var<uniform> x_174 : UnityPerDraw;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BumpMap : sampler;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_121 : f32;
  var x_179 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD1;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0.x = x_51.w;
  let x_57 : f32 = u_xlat0.x;
  let x_63 : f32 = x_60.x_BaseColor.w;
  u_xlat2 = (x_57 * x_63);
  let x_66 : f32 = u_xlat0.x;
  let x_68 : f32 = x_60.x_BaseColor.w;
  let x_72 : f32 = x_60.x_Cutoff;
  u_xlat0.x = ((x_66 * x_68) + -(x_72));
  let x_77 : f32 = u_xlat2;
  u_xlat4 = dpdxCoarse(x_77);
  let x_80 : f32 = u_xlat2;
  u_xlat6 = dpdyCoarse(x_80);
  let x_82 : f32 = u_xlat6;
  let x_84 : f32 = u_xlat4;
  u_xlat4 = (abs(x_82) + abs(x_84));
  let x_87 : f32 = u_xlat4;
  u_xlat4 = max(x_87, 0.00009999999747378752f);
  let x_91 : f32 = u_xlat0.x;
  let x_92 : f32 = u_xlat4;
  u_xlat0.x = (x_91 / x_92);
  let x_96 : f32 = u_xlat0.x;
  u_xlat0.x = (x_96 + 0.5f);
  let x_101 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_101, 0.0f, 1.0f);
  let x_109 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb4 = !((x_109 == 0.0f));
  let x_112 : f32 = u_xlat2;
  let x_114 : f32 = x_60.x_Cutoff;
  u_xlatb6 = (x_112 >= x_114);
  let x_116 : bool = u_xlatb6;
  let x_117 : f32 = u_xlat2;
  u_xlat2 = select(0.0f, x_117, x_116);
  let x_119 : bool = u_xlatb4;
  if (x_119) {
    let x_125 : f32 = u_xlat0.x;
    x_121 = x_125;
  } else {
    let x_127 : f32 = u_xlat2;
    x_121 = x_127;
  }
  let x_128 : f32 = x_121;
  u_xlat0.x = x_128;
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = (x_131 + -0.00009999999747378752f);
  let x_137 : f32 = u_xlat0.x;
  u_xlatb0 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb0;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec4<f32> = hlslcc_FragCoord;
  let x_151 : f32 = x_44.x_DitheringTextureInvSize;
  let x_153 : vec2<f32> = (vec2<f32>(x_147.x, x_147.y) * vec2<f32>(x_151, x_151));
  let x_154 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_153.x, x_153.y, x_154.z);
  let x_161 : vec3<f32> = u_xlat0;
  let x_164 : f32 = x_44.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_161.x, x_161.y), x_164);
  u_xlat0.x = x_165.w;
  let x_176 : f32 = x_174.unity_LODFade.x;
  u_xlatb2 = (x_176 >= 0.0f);
  let x_178 : bool = u_xlatb2;
  if (x_178) {
    let x_183 : f32 = u_xlat0.x;
    x_179 = abs(x_183);
  } else {
    let x_187 : f32 = u_xlat0.x;
    x_179 = -(abs(x_187));
  }
  let x_190 : f32 = x_179;
  u_xlat0.x = x_190;
  let x_193 : f32 = u_xlat0.x;
  let x_196 : f32 = x_174.unity_LODFade.x;
  u_xlat0.x = (-(x_193) + x_196);
  let x_200 : f32 = u_xlat0.x;
  u_xlatb0 = (x_200 < 0.0f);
  let x_202 : bool = u_xlatb0;
  if (((select(0i, 1i, x_202) * -1i) != 0i)) {
    discard;
  }
  let x_214 : vec2<f32> = vs_TEXCOORD1;
  let x_216 : f32 = x_44.x_GlobalMipBias.x;
  let x_217 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_214, x_216);
  u_xlat0 = vec3<f32>(x_217.x, x_217.y, x_217.w);
  let x_220 : f32 = u_xlat0.x;
  let x_222 : f32 = u_xlat0.z;
  u_xlat0.x = (x_220 * x_222);
  let x_225 : vec3<f32> = u_xlat0;
  let x_232 : vec2<f32> = ((vec2<f32>(x_225.x, x_225.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_233 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_232.x, x_232.y, x_233.z);
  let x_236 : vec3<f32> = u_xlat0;
  let x_239 : vec4<f32> = vs_TEXCOORD4;
  u_xlat1 = (vec3<f32>(x_236.y, x_236.y, x_236.y) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec3<f32> = u_xlat0;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  let x_248 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_242.x, x_242.x, x_242.x) * vec3<f32>(x_245.x, x_245.y, x_245.z)) + x_248);
  let x_250 : vec3<f32> = u_xlat0;
  let x_252 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_250.x, x_250.y), vec2<f32>(x_252.x, x_252.y));
  let x_257 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_257, 1.0f);
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_261) + 1.0f);
  let x_266 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_266);
  let x_270 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_270, 0.0000000000000001f);
  let x_274 : vec3<f32> = u_xlat0;
  let x_277 : vec4<f32> = vs_TEXCOORD2;
  let x_280 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_274.x, x_274.x, x_274.x) * vec3<f32>(x_277.x, x_277.y, x_277.z)) + x_280);
  let x_282 : vec3<f32> = u_xlat0;
  let x_283 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_282, x_283);
  let x_285 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_285);
  let x_289 : f32 = u_xlat6;
  let x_291 : vec3<f32> = u_xlat0;
  let x_292 : vec3<f32> = (vec3<f32>(x_289, x_289, x_289) * x_291);
  let x_293 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}


