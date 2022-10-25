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

@group(0) @binding(2) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(2) var<uniform> x_60 : UnityPerMaterial;

@group(0) @binding(1) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_DitheringTexture : sampler;

@group(1) @binding(1) var<uniform> x_170 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : f32;
  var u_xlat2 : f32;
  var u_xlat3 : f32;
  var u_xlatb2 : bool;
  var u_xlatb3 : bool;
  var x_120 : f32;
  var u_xlatb0 : bool;
  var u_xlatb1 : bool;
  var x_175 : f32;
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
  u_xlat1 = (x_57 * x_63);
  let x_66 : f32 = u_xlat0.x;
  let x_68 : f32 = x_60.x_BaseColor.w;
  let x_72 : f32 = x_60.x_Cutoff;
  u_xlat0.x = ((x_66 * x_68) + -(x_72));
  let x_77 : f32 = u_xlat1;
  u_xlat2 = dpdxCoarse(x_77);
  let x_80 : f32 = u_xlat1;
  u_xlat3 = dpdyCoarse(x_80);
  let x_82 : f32 = u_xlat3;
  let x_84 : f32 = u_xlat2;
  u_xlat2 = (abs(x_82) + abs(x_84));
  let x_87 : f32 = u_xlat2;
  u_xlat2 = max(x_87, 0.0001f);
  let x_91 : f32 = u_xlat0.x;
  let x_92 : f32 = u_xlat2;
  u_xlat0.x = (x_91 / x_92);
  let x_96 : f32 = u_xlat0.x;
  u_xlat0.x = (x_96 + 0.5f);
  let x_101 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_101, 0.0f, 1.0f);
  let x_109 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_109 == 0.0f));
  let x_112 : f32 = u_xlat1;
  let x_114 : f32 = x_60.x_Cutoff;
  u_xlatb3 = (x_112 >= x_114);
  let x_116 : bool = u_xlatb3;
  let x_117 : f32 = u_xlat1;
  u_xlat1 = select(0.0f, x_117, x_116);
  let x_119 : bool = u_xlatb2;
  if (x_119) {
    let x_124 : f32 = u_xlat0.x;
    x_120 = x_124;
  } else {
    let x_126 : f32 = u_xlat1;
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
  u_xlat0 = (vec2<f32>(x_146.x, x_146.y) * vec2<f32>(x_150, x_150));
  let x_158 : vec2<f32> = u_xlat0;
  let x_160 : f32 = x_44.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, x_158, x_160);
  u_xlat0.x = x_161.w;
  let x_172 : f32 = x_170.unity_LODFade.x;
  u_xlatb1 = (x_172 >= 0.0f);
  let x_174 : bool = u_xlatb1;
  if (x_174) {
    let x_179 : f32 = u_xlat0.x;
    x_175 = abs(x_179);
  } else {
    let x_183 : f32 = u_xlat0.x;
    x_175 = -(abs(x_183));
  }
  let x_186 : f32 = x_175;
  u_xlat0.x = x_186;
  let x_189 : f32 = u_xlat0.x;
  let x_192 : f32 = x_170.unity_LODFade.x;
  u_xlat0.x = (-(x_189) + x_192);
  let x_196 : f32 = u_xlat0.x;
  u_xlatb0 = (x_196 < 0.0f);
  let x_198 : bool = u_xlatb0;
  if (((select(0i, 1i, x_198) * -1i) != 0i)) {
    discard;
  }
  let x_207 : vec3<f32> = vs_TEXCOORD2;
  let x_208 : vec3<f32> = vs_TEXCOORD2;
  u_xlat0.x = dot(x_207, x_208);
  let x_212 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_212);
  let x_217 : vec2<f32> = u_xlat0;
  let x_219 : vec3<f32> = vs_TEXCOORD2;
  let x_220 : vec3<f32> = (vec3<f32>(x_217.x, x_217.x, x_217.x) * x_219);
  let x_221 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

