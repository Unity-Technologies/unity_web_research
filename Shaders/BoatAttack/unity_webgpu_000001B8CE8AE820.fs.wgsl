var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SecondTex : sampler;

@group(0) @binding(2) var x_ThirdTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_ThirdTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat1 : f32;
  var u_xlat2 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_20 : vec2<f32> = ((x_13 * vec2<f32>(0.5f, 1.0f)) + vec2<f32>(0.5f, 0.0f));
  let x_21 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_20.x, x_20.y, x_21.z);
  let x_33 : vec3<f32> = u_xlat0;
  let x_36 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_33.x, x_33.y));
  u_xlat0.x = x_36.w;
  let x_46 : f32 = u_xlat0.x;
  SV_Target0.w = x_46;
  let x_49 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : vec2<f32> = (x_49 * vec2<f32>(0.5f, 1.0f));
  let x_51 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_50.x, x_50.y, x_51.z);
  let x_60 : vec3<f32> = u_xlat0;
  let x_62 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, vec2<f32>(x_60.x, x_60.y));
  u_xlat4.x = x_62.w;
  let x_65 : vec2<f32> = u_xlat4;
  u_xlat4 = (vec2<f32>(x_65.x, x_65.x) * vec2<f32>(0.390625f, 1.984375f));
  let x_75 : vec3<f32> = u_xlat0;
  let x_77 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_75.x, x_75.y));
  u_xlat1 = x_77.w;
  let x_84 : vec3<f32> = u_xlat0;
  let x_86 : vec4<f32> = textureSample(x_ThirdTex, sampler_ThirdTex, vec2<f32>(x_84.x, x_84.y));
  u_xlat0.x = x_86.w;
  let x_90 : f32 = u_xlat1;
  let x_94 : f32 = u_xlat4.x;
  u_xlat2 = ((x_90 * 1.15625f) + -(x_94));
  let x_97 : f32 = u_xlat1;
  let x_101 : f32 = u_xlat4.y;
  u_xlat0.z = ((x_97 * 1.15625f) + x_101);
  let x_106 : f32 = u_xlat0.x;
  let x_110 : f32 = u_xlat2;
  u_xlat0.y = ((-(x_106) * 0.8125f) + x_110);
  let x_114 : f32 = u_xlat0.x;
  u_xlat0.x = (x_114 * 1.59375f);
  let x_118 : f32 = u_xlat1;
  let x_121 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_118 * 1.15625f) + x_121);
  let x_124 : vec3<f32> = u_xlat0;
  let x_129 : vec3<f32> = (x_124 + vec3<f32>(-0.872539997f, 0.531369984f, -1.068619967f));
  let x_130 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
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

