struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(2) var<uniform> x_60 : UnityPerMaterial;

@group(0) @binding(2) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTexture : sampler;

@group(1) @binding(1) var<uniform> x_173 : UnityPerDraw;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat4 : f32;
  var u_xlat6 : f32;
  var u_xlatb4 : bool;
  var u_xlatb6 : bool;
  var x_120 : f32;
  var u_xlatb0 : bool;
  var u_xlatb2 : bool;
  var x_178 : f32;
  var u_xlat1 : vec3<f32>;
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
  u_xlat4 = max(x_87, 0.0001f);
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
    let x_124 : f32 = u_xlat0.x;
    x_120 = x_124;
  } else {
    let x_126 : f32 = u_xlat2;
    x_120 = x_126;
  }
  let x_127 : f32 = x_120;
  u_xlat0.x = x_127;
  let x_130 : f32 = u_xlat0.x;
  u_xlat0.x = (x_130 + -0.0001f);
  let x_136 : f32 = u_xlat0.x;
  u_xlatb0 = (x_136 < 0.0f);
  let x_138 : bool = u_xlatb0;
  if (((select(0i, 1i, x_138) * -1i) != 0i)) {
    discard;
  }
  let x_146 : vec4<f32> = hlslcc_FragCoord;
  let x_150 : f32 = x_44.x_DitheringTextureInvSize;
  let x_152 : vec2<f32> = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_150, x_150));
  let x_153 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_152.x, x_152.y, x_153.z);
  let x_160 : vec3<f32> = u_xlat0;
  let x_163 : f32 = x_44.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_160.x, x_160.y), x_163);
  u_xlat0.x = x_164.w;
  let x_175 : f32 = x_173.unity_LODFade.x;
  u_xlatb2 = (x_175 >= 0.0f);
  let x_177 : bool = u_xlatb2;
  if (x_177) {
    let x_182 : f32 = u_xlat0.x;
    x_178 = abs(x_182);
  } else {
    let x_186 : f32 = u_xlat0.x;
    x_178 = -(abs(x_186));
  }
  let x_189 : f32 = x_178;
  u_xlat0.x = x_189;
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_173.unity_LODFade.x;
  u_xlat0.x = (-(x_192) + x_195);
  let x_199 : f32 = u_xlat0.x;
  u_xlatb0 = (x_199 < 0.0f);
  let x_201 : bool = u_xlatb0;
  if (((select(0i, 1i, x_201) * -1i) != 0i)) {
    discard;
  }
  let x_213 : vec2<f32> = vs_TEXCOORD1;
  let x_215 : f32 = x_44.x_GlobalMipBias.x;
  let x_216 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_213, x_215);
  u_xlat0 = vec3<f32>(x_216.x, x_216.y, x_216.w);
  let x_219 : f32 = u_xlat0.x;
  let x_221 : f32 = u_xlat0.z;
  u_xlat0.x = (x_219 * x_221);
  let x_224 : vec3<f32> = u_xlat0;
  let x_231 : vec2<f32> = ((vec2<f32>(x_224.x, x_224.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_232 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_231.x, x_231.y, x_232.z);
  let x_235 : vec3<f32> = u_xlat0;
  let x_238 : vec4<f32> = vs_TEXCOORD4;
  u_xlat1 = (vec3<f32>(x_235.y, x_235.y, x_235.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec3<f32> = u_xlat0;
  let x_244 : vec4<f32> = vs_TEXCOORD3;
  let x_247 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_241.x, x_241.x, x_241.x) * vec3<f32>(x_244.x, x_244.y, x_244.z)) + x_247);
  let x_249 : vec3<f32> = u_xlat0;
  let x_251 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_249.x, x_249.y), vec2<f32>(x_251.x, x_251.y));
  let x_256 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_256, 1.0f);
  let x_260 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_260) + 1.0f);
  let x_265 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_265);
  let x_269 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_269, 1.00000002e-16f);
  let x_273 : vec3<f32> = u_xlat0;
  let x_276 : vec4<f32> = vs_TEXCOORD2;
  let x_279 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_273.x, x_273.x, x_273.x) * vec3<f32>(x_276.x, x_276.y, x_276.z)) + x_279);
  let x_281 : vec3<f32> = u_xlat0;
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_281, x_282);
  let x_284 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_284);
  let x_288 : f32 = u_xlat6;
  let x_290 : vec3<f32> = u_xlat0;
  let x_291 : vec3<f32> = (vec3<f32>(x_288, x_288, x_288) * x_290);
  let x_292 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
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

