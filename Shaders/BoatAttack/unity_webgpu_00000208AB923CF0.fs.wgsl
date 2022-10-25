var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SecondTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ThirdTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_ThirdTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : f32;
  var u_xlat3 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_17 : vec2<f32> = (x_13 * vec2<f32>(0.5f, 1.0f));
  let x_18 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_17.x, x_17.y, x_18.z);
  let x_32 : vec3<f32> = u_xlat0;
  let x_35 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, vec2<f32>(x_32.x, x_32.y));
  u_xlat6.x = x_35.w;
  let x_42 : vec2<f32> = u_xlat6;
  u_xlat6 = (vec2<f32>(x_42.x, x_42.x) * vec2<f32>(0.390625f, 1.984375f));
  let x_54 : vec3<f32> = u_xlat0;
  let x_56 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_54.x, x_54.y));
  u_xlat1 = x_56.w;
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec4<f32> = textureSample(x_ThirdTex, sampler_ThirdTex, vec2<f32>(x_63.x, x_63.y));
  u_xlat0.x = x_65.w;
  let x_69 : f32 = u_xlat1;
  let x_73 : f32 = u_xlat6.x;
  u_xlat3 = ((x_69 * 1.15625f) + -(x_73));
  let x_76 : f32 = u_xlat1;
  let x_80 : f32 = u_xlat6.y;
  u_xlat0.z = ((x_76 * 1.15625f) + x_80);
  let x_85 : f32 = u_xlat0.x;
  let x_89 : f32 = u_xlat3;
  u_xlat0.y = ((-(x_85) * 0.8125f) + x_89);
  let x_93 : f32 = u_xlat0.x;
  u_xlat0.x = (x_93 * 1.59375f);
  let x_97 : f32 = u_xlat1;
  let x_100 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_97 * 1.15625f) + x_100);
  let x_104 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_104 + vec3<f32>(-0.872539997f, 0.531369984f, -1.068619967f));
  let x_110 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_110 * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_117 : vec3<f32> = u_xlat2;
  let x_118 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_117 * x_118) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_125 : vec3<f32> = u_xlat0;
  let x_126 : vec3<f32> = u_xlat2;
  let x_127 : vec3<f32> = (x_125 * x_126);
  let x_128 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec2<f32> = vs_TEXCOORD0;
  let x_134 : vec2<f32> = ((x_130 * vec2<f32>(0.5f, 1.0f)) + vec2<f32>(0.5f, 0.0f));
  let x_135 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_134.x, x_134.y, x_135.z);
  let x_140 : vec3<f32> = u_xlat0;
  let x_142 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_140.x, x_140.y));
  u_xlat0.x = x_142.w;
  let x_146 : f32 = u_xlat0.x;
  SV_Target0.w = x_146;
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

