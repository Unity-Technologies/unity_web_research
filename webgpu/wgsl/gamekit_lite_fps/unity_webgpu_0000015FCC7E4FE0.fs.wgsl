struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_SampleScale : f32,
  @size(12)
  padding_1 : u32,
  x_ColorIntensity : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_12 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_27 : f32 = x_12.x_SampleScale;
  u_xlat1.x = (x_27 * 0.5f);
  let x_35 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = u_xlat1;
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_35.x, x_35.y, x_35.z, x_35.y) * vec4<f32>(x_37.x, x_37.x, x_37.x, x_37.x)) + vec4<f32>(x_43.x, x_43.y, x_43.x, x_43.y));
  let x_46 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_46, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_51 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = u_xlat1;
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_51.x, x_51.w, x_51.z, x_51.w) * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + vec4<f32>(x_56.x, x_56.y, x_56.x, x_56.y));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_59, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_63 * vec4<f32>(x_66, x_66, x_66, x_66));
  let x_69 : vec4<f32> = u_xlat2;
  let x_71 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_69 * vec4<f32>(x_71, x_71, x_71, x_71));
  let x_84 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_84.x, x_84.y));
  let x_88 : vec3<f32> = vec3<f32>(x_86.x, x_86.y, x_86.z);
  let x_89 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_94 : vec4<f32> = u_xlat1;
  let x_96 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_94.z, x_94.w));
  let x_97 : vec3<f32> = vec3<f32>(x_96.x, x_96.y, x_96.z);
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_100 : vec4<f32> = u_xlat1;
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.y, x_100.z) + vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_110.x, x_110.y));
  let x_113 : vec3<f32> = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_119.z, x_119.w));
  let x_122 : vec3<f32> = vec3<f32>(x_121.x, x_121.y, x_121.z);
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) + vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat0;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat0;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = x_12.x_ColorIntensity;
  let x_152 : vec3<f32> = (vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_150.w, x_150.w, x_150.w));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = x_12.x_ColorIntensity;
  let x_162 : vec3<f32> = (vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
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

