diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_SecondTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : f32;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> u_xlat2 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_ThirdTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_ThirdTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, x_23);
  u_xlat0.x = x_25.w;
  let x_32 : vec3<f32> = u_xlat0;
  let x_37 : vec2<f32> = (vec2<f32>(x_32.x, x_32.x) * vec2<f32>(0.390625f, 1.984375f));
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_46 : vec2<f32> = vs_TEXCOORD0;
  let x_47 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_46);
  u_xlat4 = x_47.w;
  let x_49 : f32 = u_xlat4;
  let x_53 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_49 * 1.15625f) + -(x_53));
  let x_58 : f32 = u_xlat4;
  let x_62 : f32 = u_xlat0.y;
  u_xlat2 = ((x_58 * 1.15625f) + x_62);
  let x_65 : f32 = u_xlat2;
  u_xlat1.z = (x_65 + -1.06861996650695800781f);
  let x_75 : vec2<f32> = vs_TEXCOORD0;
  let x_76 : vec4<f32> = textureSample(x_ThirdTex, sampler_ThirdTex, x_75);
  u_xlat2 = x_76.w;
  let x_78 : f32 = u_xlat2;
  let x_83 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_78) * 0.8125f) + x_83);
  let x_86 : f32 = u_xlat2;
  u_xlat2 = (x_86 * 1.59375f);
  let x_89 : f32 = u_xlat4;
  let x_91 : f32 = u_xlat2;
  u_xlat0.y = ((x_89 * 1.15625f) + x_91);
  let x_94 : vec3<f32> = u_xlat0;
  let x_99 : vec2<f32> = (vec2<f32>(x_94.y, x_94.x) + vec2<f32>(-0.87253999710083007812f, 0.53136998414993286133f));
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_99.x, x_99.y, x_100.z);
  let x_102 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_102 * vec3<f32>(0.30530601739883422852f, 0.30530601739883422852f, 0.30530601739883422852f)) + vec3<f32>(0.68217110633850097656f, 0.68217110633850097656f, 0.68217110633850097656f));
  let x_109 : vec3<f32> = u_xlat1;
  let x_110 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_109 * x_110) + vec3<f32>(0.01252287812530994415f, 0.01252287812530994415f, 0.01252287812530994415f));
  let x_117 : vec3<f32> = u_xlat0;
  let x_118 : vec3<f32> = u_xlat1;
  let x_119 : vec3<f32> = (x_117 * x_118);
  let x_120 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  SV_Target0.w = 1.0f;
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


