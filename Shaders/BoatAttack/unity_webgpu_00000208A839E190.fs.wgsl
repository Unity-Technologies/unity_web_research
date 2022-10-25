struct PGlobals {
  x_MainTex_ST : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_SecondTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_SecondTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_64 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlat2 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec3<f32>(x_13.x, x_13.x, x_13.y) * vec3<f32>(0.5f, 0.5f, 1.0f));
  let x_32 : vec3<f32> = u_xlat0;
  let x_34 : vec4<f32> = textureSample(x_SecondTex, sampler_SecondTex, vec2<f32>(x_32.y, x_32.z));
  let x_35 : vec2<f32> = vec2<f32>(x_34.x, x_34.y);
  let x_36 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_35.x, x_35.y, x_36.z, x_36.w);
  let x_38 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_38.y, x_38.x, x_38.x) * vec3<f32>(1.59375f, 0.390625f, 1.984375f));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_45.y, x_44.y, x_44.z);
  let x_54 : vec3<f32> = u_xlat0;
  let x_56 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_54.y, x_54.z));
  u_xlat4 = x_56.w;
  let x_70 : f32 = x_64.x_MainTex_ST.x;
  let x_73 : f32 = u_xlat0.x;
  u_xlat2.x = ((x_70 * 0.5f) + x_73);
  let x_76 : f32 = u_xlat4;
  let x_81 : f32 = u_xlat1.z;
  u_xlat0.x = ((x_76 * 1.15625f) + -(x_81));
  let x_85 : f32 = u_xlat4;
  let x_89 : vec4<f32> = u_xlat1;
  let x_91 : vec2<f32> = ((vec2<f32>(x_85, x_85) * vec2<f32>(1.15625f, 1.15625f)) + vec2<f32>(x_89.x, x_89.w));
  let x_92 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_92.x, x_91.x, x_91.y);
  let x_96 : f32 = u_xlat1.y;
  let x_101 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_96) * 0.8125f) + x_101);
  let x_105 : vec3<f32> = u_xlat0;
  u_xlat3 = (vec3<f32>(x_105.y, x_105.x, x_105.z) + vec3<f32>(-0.872539997f, 0.531369984f, -1.068619967f));
  let x_112 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_112 * vec3<f32>(0.305306017f, 0.305306017f, 0.305306017f)) + vec3<f32>(0.682171106f, 0.682171106f, 0.682171106f));
  let x_119 : vec3<f32> = u_xlat3;
  let x_120 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_119 * x_120) + vec3<f32>(0.012522878f, 0.012522878f, 0.012522878f));
  let x_127 : vec3<f32> = u_xlat0;
  let x_128 : vec3<f32> = u_xlat3;
  let x_129 : vec3<f32> = (x_127 * x_128);
  let x_130 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_134 : f32 = vs_TEXCOORD0.y;
  u_xlat2.y = x_134;
  let x_139 : vec2<f32> = u_xlat2;
  let x_140 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_139);
  u_xlat0.x = x_140.w;
  let x_144 : f32 = u_xlat0.x;
  u_xlat0.x = (x_144 + -0.062744997f);
  let x_149 : f32 = u_xlat0.x;
  SV_Target0.w = (x_149 * 1.15625f);
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

