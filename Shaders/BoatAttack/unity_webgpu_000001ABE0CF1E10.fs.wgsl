struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(1) @binding(1) var<uniform> x_41 : UnityPerMaterial;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
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
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_32 : f32 = x_25.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_22, x_32);
  u_xlat0 = x_34.w;
  let x_38 : f32 = u_xlat0;
  let x_44 : f32 = x_41.x_BaseColor.w;
  u_xlat1 = (x_38 * x_44);
  let x_46 : f32 = u_xlat0;
  let x_48 : f32 = x_41.x_BaseColor.w;
  let x_52 : f32 = x_41.x_Cutoff;
  u_xlat0 = ((x_46 * x_48) + -(x_52));
  let x_56 : f32 = u_xlat1;
  u_xlat2 = dpdxCoarse(x_56);
  let x_59 : f32 = u_xlat1;
  u_xlat3 = dpdyCoarse(x_59);
  let x_61 : f32 = u_xlat3;
  let x_63 : f32 = u_xlat2;
  u_xlat2 = (abs(x_61) + abs(x_63));
  let x_66 : f32 = u_xlat2;
  u_xlat2 = max(x_66, 0.0001f);
  let x_69 : f32 = u_xlat0;
  let x_70 : f32 = u_xlat2;
  u_xlat0 = (x_69 / x_70);
  let x_72 : f32 = u_xlat0;
  u_xlat0 = (x_72 + 0.5f);
  let x_75 : f32 = u_xlat0;
  u_xlat0 = clamp(x_75, 0.0f, 1.0f);
  let x_83 : f32 = x_25.x_AlphaToMaskAvailable;
  u_xlatb2 = !((x_83 == 0.0f));
  let x_86 : f32 = u_xlat1;
  let x_88 : f32 = x_41.x_Cutoff;
  u_xlatb3 = (x_86 >= x_88);
  let x_90 : bool = u_xlatb3;
  let x_91 : f32 = u_xlat1;
  u_xlat1 = select(0.0f, x_91, x_90);
  let x_93 : bool = u_xlatb2;
  let x_94 : f32 = u_xlat0;
  let x_95 : f32 = u_xlat1;
  u_xlat0 = select(x_95, x_94, x_93);
  let x_97 : f32 = u_xlat0;
  u_xlat0 = (x_97 + -0.0001f);
  let x_101 : f32 = u_xlat0;
  u_xlatb0 = (x_101 < 0.0f);
  let x_103 : bool = u_xlatb0;
  if (((select(0i, 1i, x_103) * -1i) != 0i)) {
    discard;
  }
  SV_TARGET0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

