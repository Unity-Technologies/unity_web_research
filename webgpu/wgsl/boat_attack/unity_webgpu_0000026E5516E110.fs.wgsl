diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat3 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_56 : UnityPerMaterial;

var<private> u_xlat6 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlatb9 : bool;

var<private> u_xlatb0 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_110 : f32;
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
  u_xlat6 = max(x_74, 0.00009999999747378752f);
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
    let x_114 : f32 = u_xlat0.x;
    x_110 = x_114;
  } else {
    let x_116 : f32 = u_xlat3;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat0.x = (x_120 + -0.00009999999747378752f);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb0 = (x_126 < 0.0f);
  let x_128 : bool = u_xlatb0;
  if (((select(0i, 1i, x_128) * -1i) != 0i)) {
    discard;
  }
  let x_138 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0 = dpdyCoarse(vec3<f32>(x_138.z, x_138.x, x_138.y));
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1 = dpdxCoarse(vec3<f32>(x_142.y, x_142.z, x_142.x));
  let x_146 : vec3<f32> = u_xlat0;
  let x_147 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_146 * x_147);
  let x_149 : vec3<f32> = u_xlat0;
  let x_151 : vec3<f32> = u_xlat1;
  let x_154 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_149.z, x_149.x, x_149.y) * vec3<f32>(x_151.y, x_151.z, x_151.x)) + -(x_154));
  let x_157 : vec3<f32> = u_xlat0;
  let x_158 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(x_157, x_158);
  let x_160 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_160);
  let x_164 : f32 = u_xlat9;
  let x_166 : vec3<f32> = u_xlat0;
  let x_167 : vec3<f32> = (vec3<f32>(x_164, x_164, x_164) * x_166);
  let x_168 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
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


