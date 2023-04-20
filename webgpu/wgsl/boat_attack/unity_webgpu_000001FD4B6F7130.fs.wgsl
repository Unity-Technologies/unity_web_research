diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MRLL_TexelSize : vec4<f32>,
  /* @offset(32) */
  x_BumpMap_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Color1 : vec4<f32>,
  /* @offset(64) */
  x_Color2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MRLL : texture_2d<f32>;

@group(0) @binding(2) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_45 : UnityPerMaterial;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_24.x, x_24.y), x_35);
  let x_37 : vec2<f32> = vec2<f32>(x_36.z, x_36.w);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_45.x_Color2;
  u_xlat1 = (vec3<f32>(x_41.y, x_41.y, x_41.y) * vec3<f32>(x_49.x, x_49.y, x_49.z));
  let x_54 : vec4<f32> = x_45.x_Color1;
  let x_56 : vec3<f32> = u_xlat0;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * vec3<f32>(x_56.x, x_56.x, x_56.x)) + x_59);
  let x_64 : f32 = u_xlat0.y;
  let x_66 : f32 = u_xlat0.x;
  u_xlat0.x = (x_64 + x_66);
  let x_70 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_70, 0.0f, 1.0f);
  let x_76 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(x_76) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_85 : vec4<f32> = vs_INTERP0;
  let x_88 : f32 = x_28.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_85.x, x_85.y), x_88);
  u_xlat2 = vec3<f32>(x_89.x, x_89.y, x_89.z);
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat3 = (-(x_92) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_95 : vec3<f32> = u_xlat3;
  let x_96 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_95 + x_96);
  let x_98 : vec3<f32> = u_xlat3;
  let x_100 : vec3<f32> = u_xlat5;
  u_xlat5 = ((-(x_98) * x_100) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_109 : vec3<f32> = u_xlat2;
  let x_112 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_109.x, x_109.y, x_109.z, x_109.x));
  u_xlatb3 = vec3<bool>(x_112.x, x_112.y, x_112.z);
  let x_117 : bool = u_xlatb3.x;
  u_xlat4.x = select(1.0f, 0.0f, x_117);
  let x_121 : bool = u_xlatb3.y;
  u_xlat4.y = select(1.0f, 0.0f, x_121);
  let x_126 : bool = u_xlatb3.z;
  u_xlat4.z = select(1.0f, 0.0f, x_126);
  let x_130 : bool = u_xlatb3.x;
  u_xlat3.x = select(0.0f, 1.0f, x_130);
  let x_134 : bool = u_xlatb3.y;
  u_xlat3.y = select(0.0f, 1.0f, x_134);
  let x_138 : bool = u_xlatb3.z;
  u_xlat3.z = select(0.0f, 1.0f, x_138);
  let x_141 : vec3<f32> = u_xlat5;
  let x_142 : vec3<f32> = u_xlat4;
  u_xlat5 = (x_141 * x_142);
  let x_144 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = u_xlat2;
  u_xlat1 = (x_144 * x_145);
  let x_147 : vec3<f32> = u_xlat1;
  let x_148 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_147 + x_148);
  let x_150 : vec3<f32> = u_xlat1;
  let x_151 : vec3<f32> = u_xlat3;
  let x_153 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_150 * x_151) + x_153);
  let x_155 : vec3<f32> = u_xlat2;
  let x_157 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(x_155) + x_157);
  let x_159 : vec3<f32> = u_xlat0;
  let x_161 : vec3<f32> = u_xlat5;
  let x_163 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_159.x, x_159.x, x_159.x) * x_161) + x_163);
  let x_167 : f32 = u_xlat2.x;
  u_xlat15 = (x_167 + -0.15000000596046447754f);
  let x_170 : f32 = u_xlat15;
  u_xlat15 = ceil(x_170);
  let x_172 : f32 = u_xlat15;
  u_xlat15 = (-(x_172) + 1.0f);
  let x_177 : f32 = u_xlat15;
  let x_182 : vec3<f32> = u_xlat0;
  let x_183 : vec3<f32> = ((vec3<f32>(x_177, x_177, x_177) * vec3<f32>(0.40000000596046447754f, 0.40000000596046447754f, 0.40000000596046447754f)) + x_182);
  let x_184 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  SV_TARGET0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}


