struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
}

struct UnityPerMaterial {
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_65 : UnityPerMaterial;

var<private> SV_TARGET0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : f32;
  var u_xlat1 : f32;
  var u_xlat2 : f32;
  var u_xlat3 : f32;
  var u_xlatb2 : bool;
  var u_xlatb3 : bool;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_41, x_50);
  u_xlat0 = x_51.w;
  let x_54 : f32 = u_xlat0;
  let x_57 : f32 = vs_TEXCOORD1.w;
  u_xlat1 = (x_54 * x_57);
  let x_59 : f32 = u_xlat0;
  let x_61 : f32 = vs_TEXCOORD1.w;
  let x_68 : f32 = x_65.x_Cutoff;
  u_xlat0 = ((x_59 * x_61) + -(x_68));
  let x_72 : f32 = u_xlat1;
  u_xlat2 = dpdxCoarse(x_72);
  let x_75 : f32 = u_xlat1;
  u_xlat3 = dpdyCoarse(x_75);
  let x_77 : f32 = u_xlat3;
  let x_79 : f32 = u_xlat2;
  u_xlat2 = (abs(x_77) + abs(x_79));
  let x_82 : f32 = u_xlat2;
  u_xlat2 = max(x_82, 0.0001f);
  let x_85 : f32 = u_xlat0;
  let x_86 : f32 = u_xlat2;
  u_xlat0 = (x_85 / x_86);
  let x_88 : f32 = u_xlat0;
  u_xlat0 = (x_88 + 0.5f);
  let x_91 : f32 = u_xlat0;
  u_xlat0 = clamp(x_91, 0.0f, 1.0f);
  let x_99 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_99 == 0.0f));
  let x_102 : f32 = u_xlat1;
  let x_104 : f32 = x_65.x_Cutoff;
  u_xlatb3 = (x_102 >= x_104);
  let x_106 : bool = u_xlatb3;
  let x_107 : f32 = u_xlat1;
  u_xlat1 = select(0.0f, x_107, x_106);
  let x_109 : bool = u_xlatb2;
  let x_110 : f32 = u_xlat0;
  let x_111 : f32 = u_xlat1;
  u_xlat0 = select(x_111, x_110, x_109);
  let x_113 : f32 = u_xlat0;
  u_xlat0 = (x_113 + -0.0001f);
  let x_117 : f32 = u_xlat0;
  u_xlatb0 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb0;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_129 : vec4<f32> = hlslcc_FragCoord;
  SV_TARGET0 = vec4<f32>(x_129.z, x_129.z, x_129.z, x_129.z);
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_TARGET0);
}

