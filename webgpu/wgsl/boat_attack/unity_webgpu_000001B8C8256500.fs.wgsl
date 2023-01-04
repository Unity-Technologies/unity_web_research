struct PGlobals {
  x_MainTex_ST : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_31 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_SecondTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD0.y;
  u_xlat0.y = x_17;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec3<f32>(x_23.x, x_23.x, x_23.y) * vec3<f32>(0.5f, 0.5f, 1.0f));
  let x_37 : f32 = x_31.x_MainTex_ST.x;
  let x_40 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_37 * 0.5f) + x_40);
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_53.x, x_53.y));
  u_xlat0.x = x_55.w;
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = (x_60 + -0.062744997f);
  let x_67 : f32 = u_xlat0.x;
  SV_Target0.w = (x_67 * 1.15625f);
  let x_75 : vec3<f32> = u_xlat1;
  let x_77 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_75.y, x_75.z));
  u_xlat0.x = x_77.w;
  let x_87 : vec3<f32> = u_xlat1;
  let x_89 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, vec2<f32>(x_87.y, x_87.z));
  u_xlat2 = vec2<f32>(x_89.x, x_89.y);
  let x_91 : vec2<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_91.y, x_91.x, x_91.x) * vec3<f32>(1.59375f, 0.390625f, 1.984375f));
  let x_99 : f32 = u_xlat0.x;
  let x_102 : f32 = u_xlat1.y;
  u_xlat2.x = ((x_99 * 1.15625f) + -(x_102));
  let x_106 : vec4<f32> = u_xlat0;
  let x_110 : vec3<f32> = u_xlat1;
  let x_112 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.x) * vec2<f32>(1.15625f, 1.15625f)) + vec2<f32>(x_110.x, x_110.z));
  let x_113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_112.x, x_113.y, x_113.z, x_112.y);
  let x_115 : vec4<f32> = u_xlat0;
  let x_120 : vec2<f32> = (vec2<f32>(x_115.x, x_115.w) + vec2<f32>(-0.872539997f, -1.068619967f));
  let x_121 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_120.x, x_121.y, x_120.y, x_121.w);
  let x_124 : f32 = u_xlat2.y;
  let x_129 : f32 = u_xlat2.x;
  u_xlat0.x = ((-(x_124) * 0.8125f) + x_129);
  let x_133 : f32 = u_xlat0.x;
  SV_Target0.y = (x_133 + 0.531369984f);
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

