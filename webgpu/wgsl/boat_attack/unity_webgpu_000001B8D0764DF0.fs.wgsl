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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : f32;
  var u_xlat6 : f32;
  var u_xlat9 : f32;
  var u_xlatb6 : bool;
  var u_xlatb9 : bool;
  var x_109 : f32;
  var u_xlatb0 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_33);
  u_xlat0.x = x_35.w;
  let x_42 : f32 = u_xlat0.x;
  let x_47 : f32 = vs_TEXCOORD2.w;
  u_xlat3 = (x_42 * x_47);
  let x_50 : f32 = u_xlat0.x;
  let x_52 : f32 = vs_TEXCOORD2.w;
  let x_59 : f32 = x_56.x_Cutoff;
  u_xlat0.x = ((x_50 * x_52) + -(x_59));
  let x_64 : f32 = u_xlat3;
  u_xlat6 = dpdxCoarse(x_64);
  let x_67 : f32 = u_xlat3;
  u_xlat9 = dpdyCoarse(x_67);
  let x_69 : f32 = u_xlat9;
  let x_71 : f32 = u_xlat6;
  u_xlat6 = (abs(x_69) + abs(x_71));
  let x_74 : f32 = u_xlat6;
  u_xlat6 = max(x_74, 0.0001f);
  let x_78 : f32 = u_xlat0.x;
  let x_79 : f32 = u_xlat6;
  u_xlat0.x = (x_78 / x_79);
  let x_83 : f32 = u_xlat0.x;
  u_xlat0.x = (x_83 + 0.5f);
  let x_88 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_88, 0.0f, 1.0f);
  let x_98 : f32 = x_26.x_AlphaToMaskAvailable;
  u_xlatb6 = !((x_98 == 0.0f));
  let x_101 : f32 = u_xlat3;
  let x_103 : f32 = x_56.x_Cutoff;
  u_xlatb9 = (x_101 >= x_103);
  let x_105 : bool = u_xlatb9;
  let x_106 : f32 = u_xlat3;
  u_xlat3 = select(0.0f, x_106, x_105);
  let x_108 : bool = u_xlatb6;
  if (x_108) {
    let x_113 : f32 = u_xlat0.x;
    x_109 = x_113;
  } else {
    let x_115 : f32 = u_xlat3;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.0001f);
  let x_125 : f32 = u_xlat0.x;
  u_xlatb0 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb0;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0 = dpdyCoarse(vec3<f32>(x_137.z, x_137.x, x_137.y));
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1 = dpdxCoarse(vec3<f32>(x_141.y, x_141.z, x_141.x));
  let x_145 : vec3<f32> = u_xlat0;
  let x_146 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_145 * x_146);
  let x_148 : vec3<f32> = u_xlat0;
  let x_150 : vec3<f32> = u_xlat1;
  let x_153 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_148.z, x_148.x, x_148.y) * vec3<f32>(x_150.y, x_150.z, x_150.x)) + -(x_153));
  let x_156 : vec3<f32> = u_xlat0;
  let x_157 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_156, x_157);
  let x_159 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_159);
  let x_163 : f32 = u_xlat9;
  let x_165 : vec3<f32> = u_xlat0;
  let x_166 : vec3<f32> = (vec3<f32>(x_163, x_163, x_163) * x_165);
  let x_167 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  SV_TARGET0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}

