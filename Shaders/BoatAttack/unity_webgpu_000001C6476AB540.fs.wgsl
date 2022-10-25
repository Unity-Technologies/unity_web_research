struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_DitheringTextureInvSize : f32,
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

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(0) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_DitheringTexture : sampler;

@group(1) @binding(1) var<uniform> x_68 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec2<f32>;
  var u_xlatb1 : bool;
  var x_75 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_29 : vec4<f32> = hlslcc_FragCoord;
  let x_38 : f32 = x_33.x_DitheringTextureInvSize;
  u_xlat0 = (vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_38, x_38));
  let x_51 : vec2<f32> = u_xlat0;
  let x_55 : f32 = x_33.x_GlobalMipBias.x;
  let x_56 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, x_51, x_55);
  u_xlat0.x = x_56.w;
  let x_71 : f32 = x_68.unity_LODFade.x;
  u_xlatb1 = (x_71 >= 0.0f);
  let x_74 : bool = u_xlatb1;
  if (x_74) {
    let x_79 : f32 = u_xlat0.x;
    x_75 = abs(x_79);
  } else {
    let x_83 : f32 = u_xlat0.x;
    x_75 = -(abs(x_83));
  }
  let x_86 : f32 = x_75;
  u_xlat0.x = x_86;
  let x_89 : f32 = u_xlat0.x;
  let x_92 : f32 = x_68.unity_LODFade.x;
  u_xlat0.x = (-(x_89) + x_92);
  let x_97 : f32 = u_xlat0.x;
  u_xlatb0 = (x_97 < 0.0f);
  let x_99 : bool = u_xlatb0;
  if (((select(0i, 1i, x_99) * -1i) != 0i)) {
    discard;
  }
  let x_109 : vec3<f32> = vs_TEXCOORD2;
  let x_110 : vec3<f32> = vs_TEXCOORD2;
  u_xlat0.x = dot(x_109, x_110);
  let x_114 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_114);
  let x_119 : vec2<f32> = u_xlat0;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = (vec3<f32>(x_119.x, x_119.x, x_119.x) * x_121);
  let x_123 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

