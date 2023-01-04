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
  let x_44 : f32 = u_xlat0.x;
  u_xlat0.x = (x_44 + -0.062744997f);
  let x_51 : f32 = u_xlat0.x;
  SV_Target0.w = (x_51 * 1.15625f);
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  let x_57 : vec2<f32> = (x_56 * vec2<f32>(0.5f, 1.0f));
  let x_58 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_57.x, x_57.y, x_58.z);
  let x_67 : vec3<f32> = u_xlat0;
  let x_69 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, vec2<f32>(x_67.x, x_67.y));
  u_xlat4.x = x_69.w;
  let x_72 : vec2<f32> = u_xlat4;
  u_xlat4 = (vec2<f32>(x_72.x, x_72.x) * vec2<f32>(0.390625f, 1.984375f));
  let x_82 : vec3<f32> = u_xlat0;
  let x_84 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_82.x, x_82.y));
  u_xlat1 = x_84.w;
  let x_91 : vec3<f32> = u_xlat0;
  let x_93 : vec4<f32> = textureSample(x_ThirdTex, sampler_ThirdTex, vec2<f32>(x_91.x, x_91.y));
  u_xlat0.x = x_93.w;
  let x_97 : f32 = u_xlat1;
  let x_100 : f32 = u_xlat4.x;
  u_xlat2 = ((x_97 * 1.15625f) + -(x_100));
  let x_103 : f32 = u_xlat1;
  let x_107 : f32 = u_xlat4.y;
  u_xlat0.z = ((x_103 * 1.15625f) + x_107);
  let x_112 : f32 = u_xlat0.x;
  let x_116 : f32 = u_xlat2;
  u_xlat0.y = ((-(x_112) * 0.8125f) + x_116);
  let x_120 : f32 = u_xlat0.x;
  u_xlat0.x = (x_120 * 1.59375f);
  let x_124 : f32 = u_xlat1;
  let x_127 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_124 * 1.15625f) + x_127);
  let x_130 : vec3<f32> = u_xlat0;
  let x_135 : vec3<f32> = (x_130 + vec3<f32>(-0.872539997f, 0.531369984f, -1.068619967f));
  let x_136 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
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

