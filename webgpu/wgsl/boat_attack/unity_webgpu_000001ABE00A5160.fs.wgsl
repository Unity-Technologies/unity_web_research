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

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(1) @binding(1) var<uniform> x_42 : UnityPerMaterial;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat3 : f32;
  var u_xlat5 : f32;
  var u_xlatb3 : bool;
  var u_xlatb5 : bool;
  var x_96 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_33);
  u_xlat0 = x_34;
  let x_39 : f32 = u_xlat0.w;
  let x_45 : f32 = x_42.x_BaseColor.w;
  let x_49 : f32 = x_42.x_Cutoff;
  u_xlat1 = ((x_39 * x_45) + -(x_49));
  let x_52 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_42.x_BaseColor;
  u_xlat0 = (x_52 * x_55);
  let x_59 : f32 = u_xlat0.w;
  u_xlat3 = dpdxCoarse(x_59);
  let x_63 : f32 = u_xlat0.w;
  u_xlat5 = dpdyCoarse(x_63);
  let x_65 : f32 = u_xlat5;
  let x_67 : f32 = u_xlat3;
  u_xlat3 = (abs(x_65) + abs(x_67));
  let x_70 : f32 = u_xlat3;
  u_xlat3 = max(x_70, 0.0001f);
  let x_73 : f32 = u_xlat1;
  let x_74 : f32 = u_xlat3;
  u_xlat1 = (x_73 / x_74);
  let x_76 : f32 = u_xlat1;
  u_xlat1 = (x_76 + 0.5f);
  let x_79 : f32 = u_xlat1;
  u_xlat1 = clamp(x_79, 0.0f, 1.0f);
  let x_87 : f32 = x_26.x_AlphaToMaskAvailable;
  u_xlatb3 = !((x_87 == 0.0f));
  let x_91 : f32 = u_xlat0.w;
  let x_93 : f32 = x_42.x_Cutoff;
  u_xlatb5 = (x_91 >= x_93);
  let x_95 : bool = u_xlatb5;
  if (x_95) {
    let x_100 : f32 = u_xlat0.w;
    x_96 = x_100;
  } else {
    x_96 = 0.0f;
  }
  let x_102 : f32 = x_96;
  u_xlat5 = x_102;
  let x_103 : bool = u_xlatb3;
  let x_104 : f32 = u_xlat1;
  let x_105 : f32 = u_xlat5;
  u_xlat1 = select(x_105, x_104, x_103);
  let x_107 : f32 = u_xlat1;
  u_xlat1 = (x_107 + -0.0001f);
  let x_111 : f32 = u_xlat1;
  u_xlatb1 = (x_111 < 0.0f);
  let x_113 : bool = u_xlatb1;
  if (((select(0i, 1i, x_113) * -1i) != 0i)) {
    discard;
  }
  let x_124 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = (vec3<f32>(x_124.w, x_124.w, x_124.w) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_132 : f32 = u_xlat0.w;
  SV_Target0.w = x_132;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

